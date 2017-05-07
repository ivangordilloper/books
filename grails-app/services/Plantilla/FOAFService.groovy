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


    public static void generaRdfUsuarioActual(String email, String nombres, String apP, String apM) throws Exception{

        String rutaProcesarRDF = "C:\\Users\\raid_\\Documents\\TT\\books\\grails-app\\assets\\"
        Model modelo = ModelFactory.createDefaultModel();
        modelo.setNsPrefix("rdfs",RDFS.getURI());
        modelo.setNsPrefix("foaf",FOAF.getURI());
        modelo.setNsPrefix("vcard",VCARD.getURI());

//		String sujetoStr = "modeloFOAFusuarioActual@dominio.com.rdf";

        String rutaSerializar = rutaProcesarRDF.concat("documentosRDF\\").concat("modeloFOAF").concat(email).concat(".rdf") ;

        String sujetoStr2 = "http://localhost:8086/assets/".concat("documentosRDF/modeloFOAF").concat(email).concat(".rdf") ;

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

//		rutaEscribir = rutaEscribir.concat("\\documentosRDF\\").concat(nombreModelo) ;
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

    public static String agregarAmigo(String email,String nombres, String apP, String apM) throws Exception {
        String rutaProcesarRDF = "C:\\Users\\raid_\\Documents\\TT\\books\\grails-app\\assets"
        Model modelo = ModelFactory.createDefaultModel();
        modelo.setNsPrefix("rdfs",RDFS.getURI());
        modelo.setNsPrefix("foaf",FOAF.getURI());
        modelo.setNsPrefix("vcard",VCARD.getURI());

        String sujetoStr = rutaProcesarRDF.concat("\\modeloFOAF").concat(email).concat(".rdf") ;

        System.out.println("En el modelo, el sujeto principal <subject> es: " + sujetoStr);

        Resource sujeto = modelo.getResource(sujetoStr);

        sujeto.addProperty(FOAF.name as Property, nombres.concat(" ")
                .concat(apP).concat(" ")
                .concat(apM));

        sujeto.addProperty(FOAF.givenname,nombres);

        sujeto.addProperty(FOAF.family_name,apP.concat(" ")
                .concat(apP));

        sujeto.addProperty(FOAF.mbox,modelo.createResource("mailto:".concat(email)));

        sujeto.addProperty(RDF.type,FOAF.Person);
        Resource book = modelo.createResource()
        book.addProperty(FOAF.topic,"book")
        book.addProperty(FOAF.primaryTopic,"1")
        sujeto.addProperty(FOAF.Document as Property,book)
        Resource book1 = modelo.createResource()
        book1.addProperty(FOAF.topic,"book")
        book1.addProperty(FOAF.primaryTopic,"1")
        sujeto.addProperty(FOAF.Document as Property,book1)

        Resource blankSubject = modelo.createResource();
        blankSubject.addProperty(RDF.type,FOAF.Person);



        String tmpNombreComp = getNombreCompletoAmigo();
        String tmpEmailAmigo =  getEmailAmigo();
//		String tmpSeeAlso = ConstantesComercioC2C.PREFIJO_SOURCE_FOAF.concat(amigoUsuario.getEmailAmigo()).concat(ConstantesComercioC2C.EXTENSION_NOMMODELO);


        String tmpSeeAlso= "http://localhost:8080/assets/".concat("modeloFOAF").concat(tmpEmailAmigo).concat(".rdf");
        String rutaEscribir = rutaProcesarRDF.concat("\\documentosRDF\\modeloFOAF").concat(email).concat(".rdf") ;

        blankSubject.addProperty(FOAF.name, tmpNombreComp);
        blankSubject.addProperty(FOAF.mbox, modelo.createResource("mailto:".concat(tmpEmailAmigo)));
        blankSubject.addProperty(RDFS.seeAlso, modelo.createResource(tmpSeeAlso));



        sujeto.addProperty(FOAF.knows, blankSubject);
        System.out.println("Un amigo agregado...");

        modelo.write(new PrintWriter(System.out), "RDF/XML-ABBREV");

        serializaModelo(modelo, rutaEscribir);

        listaAmigos = buscarAmigosFoaf(email);
        print("hola")
        listaAmigos = listaAmigos.replace("mailto:", "");
        return "SUCCESS";
    }

    public static String buscarAmigosFoaf(String email){
        String uriActual = null;
        String emailActual = null;

        URIs  = new Stack<String>();
        Emails = new Stack<String>();

        String rutaProcesarRDF = "http://localhost:8080/assets/";

        String uriInicial= rutaProcesarRDF.concat("".concat("modeloFOAF").concat(email).concat(".rdf"));

        URIs.push(uriInicial);
        System.out.println("Se agrega dentro de la pila de uris uno nuevo: [" + uriInicial + "]");

//		Emails.push("usuarioActual@dominio.com");
//		System.out.println("Se agrega dentro de la pila de emails uno nuevo: [usuarioActual@dominio.com]");

        while(!URIs.empty()){
            uriActual = (String)(URIs.pop());
            System.out.println("Se obtuvo dentro de la pila de uris uno nuevo: [" + uriActual + "]");

//			if(!Emails.empty()){
//				emailActual = (String)(Emails.pop());
//				System.out.println("Se obtuvo dentro de la pila de emails uno nuevo: [" + emailActual + "]");
//			}

            if(uriActual !=null){
                System.out.println("Procesando la URI: " + uriActual);

                Model currentRDFDocument = ModelFactory.createDefaultModel();
                try{
                    currentRDFDocument.read(uriActual);
                    obtenURIsAmigosBC(currentRDFDocument);

                }catch(com.hp.hpl.jena.shared.DoesNotExistException e){
                    System.out.println("No se pudo leer la URI: " + uriActual );
                }
            }
        }


        String totalAmigos = "";

        while(!Emails.empty()){
            totalAmigos = totalAmigos + " " + (String)(Emails.pop());
        }

        return totalAmigos;
    }
    public static void  obtenLibros(){
        def libros = []
        Model m = ModelFactory.createDefaultModel();
        m.read("http://localhost:8080/assets/modeloFOAFraid_ivan@hotmail.com.rdf");
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
            this.libros= libros


        }



    }
    public static void obtenURIsAmigosBC(Model m){

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
            QuerySolution soln = resultado.nextSolution() ;
            System.out.println("Procesando triple [" + soln.toString() + "]");

            Resource email = (Resource)soln.get("email");
            if ( email != null ) {
                if ( email.isLiteral() ) {
                    System.out.println("Email es una literal");
                } else if ( email.isResource() ) {
                    System.out.println("Email es un recurso");


                }
            } else {
                System.out.println("Para el triple actual no existe el valor del email!.");
            }

            Resource seeAlso = (Resource)soln.get("seeAlso");

            if ( seeAlso != null ) {
                if ( seeAlso.isLiteral() ) {
                    System.out.println("seeAlso es una literal");
                    URIs.push(seeAlso.getURI());
                    System.out.println("Se agrego dentro de la pila de uris uno nuevo: [" + (String)seeAlso.getURI() + "]");
                    Emails.push( email.toString());
                    System.out.println("Se agrego dentro de la pila de emails uno nuevo: [" + email.toString() + "]");
                } else if ( seeAlso.isResource() ) {
                    System.out.println("seeAlso es un recurso");
                    URIs.push(seeAlso.getURI());
                    System.out.println("Se agrego dentro de la pila de uris uno nuevo: [" + (String)seeAlso.getURI() + "]");
                    Emails.push( email.toString());
                    System.out.println("Se agrego dentro de la pila de emails uno nuevo: [" + email.toString() + "]");
                }
            } else {
                System.out.println("Para el triple actual no existe el valor de 'seeAlso'!.");
            }
        }


    }
}
