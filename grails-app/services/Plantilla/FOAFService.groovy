package Plantilla
import com.hp.hpl.jena.db.DBConnection;
import com.hp.hpl.jena.db.IDBConnection;
import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecution;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.ModelFactory;
import com.hp.hpl.jena.rdf.model.ModelMaker;
import com.hp.hpl.jena.rdf.model.Property;
import com.hp.hpl.jena.rdf.model.Resource
import com.hp.hpl.jena.rdf.model.Statement;
import com.hp.hpl.jena.sparql.vocabulary.FOAF;
import com.hp.hpl.jena.util.FileManager;
import com.hp.hpl.jena.vocabulary.RDF;
import com.hp.hpl.jena.vocabulary.RDFS;
import com.hp.hpl.jena.vocabulary.VCARD;
import grails.transaction.Transactional

@Transactional
class FOAFService {

    private static String nombreCompletoAmigo;
    private static String emailAmigo;
    private static Stack<String> URIs  = null;
    private static Stack<String> Emails  = null;
    private static String listaAmigos;
    private final static String nombreArchivo = "ivan"
    def static libros =[]


    static getAutores() {
        return autores
    }

    static void setAutores(autores) {
        FOAFService.autores = autores
    }
    def static autores = []

    static getLibros() {
        return libros
    }

    static void setLibros(libros) {
        FOAFService.libros = libros
    }



    public static String getListaAmigos() {
        return listaAmigos;
    }

    public static void setListaAmigos(String listaAmigos) {
        this.listaAmigos = listaAmigos;
    }

    public static String getNombreCompletoAmigo() {
        return nombreCompletoAmigo;
    }

    public static void setNombreCompletoAmigo(String nombreCompleto) {
        this.nombreCompletoAmigo = nombreCompleto;
    }

    public static getEmailAmigo() {
        return emailAmigo;
    }

    public static void setEmailAmigo(String email) {
        this.emailAmigo = email;
    }

    public static String execute() throws Exception {
        generaRdfUsuarioActual();
        return "SUCCESS";
    }
    public static String realPath(){
        return System.properties['user.dir']
    }


    public static void generaRdfUsuarioActual(String email, String nombres, String apP, String apM) throws Exception{

        String rutaProcesarRDF = realPath()+"/grails-app/assets/"
        Model modelo = ModelFactory.createDefaultModel();
        modelo.setNsPrefix("rdfs",RDFS.getURI());
        modelo.setNsPrefix("foaf",FOAF.getURI());
        modelo.setNsPrefix("vcard",VCARD.getURI());

//		String sujetoStr = "modeloFOAFusuarioActual@dominio.com.rdf";

        String rutaSerializar = rutaProcesarRDF.concat("documentosRDF/").concat("modeloFOAF").concat(email).concat(".rdf") ;

        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;

        System.out.println("En el modelo, el sujeto principal <subject> es: " + sujetoStr2);

        Resource sujeto = modelo.createResource(sujetoStr2);

        sujeto.addProperty(FOAF.name as Property, nombres.concat(" ")
                .concat(apP).concat(" ")
                .concat(apM));

        sujeto.addProperty(FOAF.givenname,nombres);

        sujeto.addProperty(FOAF.family_name,apP.concat(" ")
                .concat(apM));

        sujeto.addProperty(FOAF.mbox,modelo.createResource("mailto:".concat(email)));

        sujeto.addProperty(RDF.type,FOAF.Person);

        modelo.write(new PrintWriter(System.out), "RDF/XML-ABBREV");

        serializaModelo(modelo,  rutaSerializar);

    }

    public static void serializaModelo(Model modeloSerializar,  String rutaEscribir) throws Exception{

//		rutaEscribir = rutaEscribir.concat("/documentosRDF/").concat(nombreModelo) ;
        System.out.println("Ruta para almacenar el documento RDF: " + rutaEscribir);

        try {
            File file = new File(rutaEscribir);

            if (!file.exists()) {
                System.out.println("El archivo no existe!, se procede a crearlo. ");
                file.createNewFile();
            }else if(file.delete()){
                System.out.println("El archivo existia pero se pudo eliminar. Se procede a crearlo. ");
                file.createNewFile();
            }

            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);

            modeloSerializar.write(bw, "RDF/XML-ABBREV");

            bw.close();

        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Excepcion en ModeladorRDF.serializaModelo():  ");
            System.out.println(e.toString());
            throw new Exception(e)/*Comercioc2cException(e.toString())*/;
        }
    }

/*
 * Get amigos by email from RDF
 *
 */

    public static ArrayList<String> getAmigosFOAF(String email){
        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;
        ArrayList<String> uri = new ArrayList<>()

        Model m = ModelFactory.createDefaultModel();
        m.read(sujetoStr2);

        String queryString =  " SELECT ?yo ?amigo ?email ?seeAlso " +
                " WHERE {" +
                "  ?yo <" + FOAF.knows + "> ?amigo. " +
                "  optional { ?amigo <" + FOAF.mbox + "> ?email. }" +
                "  optional { ?amigo <" + RDFS.seeAlso + "> ?seeAlso. }" +
                "   }";

        Query query = QueryFactory.create(queryString);
        QueryExecution qe = QueryExecutionFactory.create(query, m);
        ResultSet resultado = qe.execSelect();

        while ( resultado.hasNext() ) {
            QuerySolution soln = resultado.nextSolution();

            Resource emailF = (Resource) soln.get("email");

            Resource seeAlso = (Resource) soln.get("seeAlso");
            uri.push(seeAlso.getURI())

        }
        return uri;
    }

    public static ArrayList<Integer>  obtenLibrosByEmail(String email){
        ArrayList<Integer> libros = new ArrayList<>()
        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;
        Model m = ModelFactory.createDefaultModel();
        m.read(sujetoStr2);
        String queryString =  " SELECT ?yo ?document ?topic ?prymary " +
                " WHERE {" +
                "  ?yo <" + FOAF.Document + "> ?document. " +
                "  optional { ?document <" + FOAF.topic + "> ?topic. }" +
                "  optional { ?document <" + FOAF.primaryTopic + "> ?prymary. }" +
                "   }";

        Query query = QueryFactory.create(queryString);
        QueryExecution qe = QueryExecutionFactory.create(query, m);
        ResultSet resultado = qe.execSelect();
        while ( resultado.hasNext() ) {
            QuerySolution soln = resultado.nextSolution();
            def ptopic = soln.get("prymary")
            def topic = soln.get("topic");

            if(topic.toString().equals("book")) {

                libros.push(ptopic.toString().toInteger())

            }
        }
        return libros
    }


    public static ArrayList<Integer>  obtenAutoresByEmail(String email){
        ArrayList<Integer> autores = new ArrayList<>()
        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;
        Model m = ModelFactory.createDefaultModel();
        m.read(sujetoStr2);
        String queryString =  " SELECT ?yo ?document ?topic ?prymary " +
                " WHERE {" +
                "  ?yo <" + FOAF.Document + "> ?document. " +
                "  optional { ?document <" + FOAF.topic + "> ?topic. }" +
                "  optional { ?document <" + FOAF.primaryTopic + "> ?prymary. }" +
                "   }";

        Query query = QueryFactory.create(queryString);
        QueryExecution qe = QueryExecutionFactory.create(query, m);
        ResultSet resultado = qe.execSelect();
        while ( resultado.hasNext() ) {
            QuerySolution soln = resultado.nextSolution();
            def ptopic = soln.get("prymary")
            def topic = soln.get("topic");

            if(topic.toString().equals("autor")) {

                autores.push(ptopic.toString().toInteger())

            }
        }

        return autores
    }
    public static ArrayList<Integer>  obtenLibrosByURI(String URI){
        ArrayList<Integer> libros = new ArrayList<>()
        Model m = ModelFactory.createDefaultModel();
        m.read(URI);
        String queryString =  " SELECT ?yo ?document ?topic ?prymary " +
                " WHERE {" +
                "  ?yo <" + FOAF.Document + "> ?document. " +
                "  optional { ?document <" + FOAF.topic + "> ?topic. }" +
                "  optional { ?document <" + FOAF.primaryTopic + "> ?prymary. }" +
                "   }";

        Query query = QueryFactory.create(queryString);
        QueryExecution qe = QueryExecutionFactory.create(query, m);
        ResultSet resultado = qe.execSelect();
        while ( resultado.hasNext() ) {
            QuerySolution soln = resultado.nextSolution();
            def ptopic = soln.get("prymary")
            def topic = soln.get("topic");

            if(topic.toString().equals("book")) {

                libros.push(ptopic.toString().toInteger())

            }
        }
        return libros
    }


    public static ArrayList<Integer>  obtenAutoresByURI(String URI){
        ArrayList<Integer> autores = new ArrayList<>()
        Model m = ModelFactory.createDefaultModel();
        m.read(URI);
        String queryString =  " SELECT ?yo ?document ?topic ?prymary " +
                " WHERE {" +
                "  ?yo <" + FOAF.Document + "> ?document. " +
                "  optional { ?document <" + FOAF.topic + "> ?topic. }" +
                "  optional { ?document <" + FOAF.primaryTopic + "> ?prymary. }" +
                "   }";

        Query query = QueryFactory.create(queryString);
        QueryExecution qe = QueryExecutionFactory.create(query, m);
        ResultSet resultado = qe.execSelect();
        while ( resultado.hasNext() ) {
            QuerySolution soln = resultado.nextSolution();
            def ptopic = soln.get("prymary")
            def topic = soln.get("topic");

            if(topic.toString().equals("autor")) {

                autores.push(ptopic.toString().toInteger())

            }
        }

        return autores
    }


    public static void  setLibro(int id, String email){

        String rutaProcesarRDF = realPath()+"grails-app/assets/"

        String rutaSerializar = rutaProcesarRDF.concat("documentosRDF/").concat("modeloFOAF").concat(email).concat(".rdf") ;
        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;

        def autores = []
        Model m = ModelFactory.createDefaultModel();
        m.read(sujetoStr2);


        System.out.println("En el modelo, el sujeto principal <subject> es: " + sujetoStr2);

        Resource sujeto = m.getResource(sujetoStr2);
        Resource book = m.createResource()
        book.addProperty(FOAF.topic,"book")
        book.addProperty(FOAF.primaryTopic,id+"")
        sujeto.addProperty(FOAF.Document as Property,book)


        //m.write(System.out, "RDF/XML-ABBREV");
        serializaModelo(m,rutaSerializar)


    }

    public static void  setAutor(int id, String email){

        String rutaProcesarRDF = realPath()+"grails-app/assets/"

        String rutaSerializar = rutaProcesarRDF.concat("documentosRDF/").concat("modeloFOAF").concat(email).concat(".rdf") ;
        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;

        def autores = []
        Model m = ModelFactory.createDefaultModel();
        m.read(sujetoStr2);

        System.out.println("En el modelo, el sujeto principal <subject> es: " + sujetoStr2);
        Resource sujeto = m.getResource(sujetoStr2);

        Resource book = m.createResource()
        book.addProperty(FOAF.topic,"autor")
        book.addProperty(FOAF.primaryTopic,id+"")
        sujeto.addProperty(FOAF.Document as Property,book)


        //m.write(System.out, "RDF/XML-ABBREV");
        serializaModelo(m,rutaSerializar)


    }

    public static void  setAmigo(String email, String nombreC, String apP, String apM, String emailAmigo){

        String rutaProcesarRDF = realPath()+"grails-app/assets/"

        String rutaSerializar = rutaProcesarRDF.concat("documentosRDF/").concat("modeloFOAF").concat(email).concat(".rdf") ;
        String sujetoStr2 = "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(email).concat(".rdf") ;

        def autores = []
        Model m = ModelFactory.createDefaultModel();
        m.read(sujetoStr2);


        System.out.println("En el modelo, el sujeto principal <subject> es: " + sujetoStr2);

        Resource sujeto = m.getResource(sujetoStr2);
        Resource person = m.createResource()
        String tmpSeeAlso= "http://www.bookscomtt.com/assets/".concat("modeloFOAF").concat(emailAmigo).concat(".rdf");



        person.addProperty(RDF.type,FOAF.Person)
        person.addProperty(FOAF.name as Property, nombreC);
        person.addProperty(FOAF.family_name as Property, apP+" "+apM);

        person.addProperty(FOAF.mbox, m.createResource("mailto:".concat(emailAmigo)));
        person.addProperty(RDFS.seeAlso, m.createResource(tmpSeeAlso));

        sujeto.addProperty(FOAF.knows, person)
        m.write(System.out, "RDF/XML-ABBREV");
        serializaModelo(m,rutaSerializar)


    }

}
