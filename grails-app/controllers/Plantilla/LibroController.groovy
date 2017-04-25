package Plantilla
class LibroController {

    def createLibro() {
         def autor = Autor.list()

         [autor: autor]

    }

    def update(long id){
        def editarLibro = Libro.findById(id)
        def fecha = editarLibro.fechaPub.toString()
        def fecha2 = fecha.substring(0,10)
        def autorL = editarLibro.getAutores()
        def au = Autor.findById(editarLibro.autores.id)
        def lautor = Autor.list()

        [libro:editarLibro, fecha:fecha2, autor: au, autorl: lautor]
    }

    def read(){
        def listaLibro = Libro.list()
        def listaAutores = Libro.list().autores

        [libros: listaLibro,  aut: listaAutores]
    }

    def verLibro(long id){
        def editarLibro = Libro.findById(id)
        def fecha = editarLibro.fechaPub.toString()
        def fecha2 = fecha.substring(0,10)

        [libro:editarLibro, fecha:fecha2]

    }

    def crear(){

        def autorL = Autor.list()
        def titulo = params.titulo
        def editorial = params.editorial
        def autor = params.autores
        def a = Autor.findByNombreCompleto(autor)
        def pais = params.pais
        def portada1 = params.portada
        byte[] portada = portada1.getBytes()
        def fechaPub = Date.parse('yyyy-MM-dd', params.fechaPub)
        def resumen = params.resumen
        def generoLiterario = params.generoLiterario

        [portada: portada, autor: autor, titulo: titulo, editorial:editorial, generoLiterario:generoLiterario, pais:pais, fechaPub:fechaPub, resumen:resumen ]

        Libro p = new Libro(portada: portada, editorial:editorial,generoLiterario:generoLiterario, fechaPub:fechaPub, pais:pais, resumen:resumen,titulo: titulo)
        p.save()
        //failOnError: true
        a.addToLibros(p)
        redirect(action: "read")
    }

    def delete(long id){
        def libroE = Libro.get(id)
        def autorL = libroE.getAutores()
        if (autorL.size() == 0)
            libroE.delete()
            else {
            def au = Autor.findById(libroE.autores.id)
            au.libros.remove(libroE)
            def a = libroE.getLlista().id
                    if(a.size() ==0){
                        libroE.delete()
                    }
                        else{
                            def b = ListaPreferenciaLibro.findAllByIdInList(a)
                            b.each{
                                it.libros.remove(libroE)
                            }
                        libroE.delete()
                    }
        }

         redirect (action: "read")
    }
    def actualizar(){
        def id = params.idLibro
        def editarLibro = Libro.findById(id)
        def autorL = Autor.list()
        editarLibro.titulo = params.titulo
        editarLibro.editorial = params.editorial
        def autor = params.autores
        def a = Autor.findByNombreCompleto(autor)
        editarLibro.pais = params.pais
        def portada1 = params.portada
        byte[] portada = portada1.getBytes()

        if (portada1 != null) {
            editarLibro.portada = portada1.getBytes()

        }
        editarLibro.fechaPub = Date.parse('yyyy-MM-dd', params.fechaPub)
        editarLibro.resumen = params.resumen
        editarLibro.generoLiterario = params.generoLiterario
        editarLibro.save()
        a.addToLibros(editarLibro)

        redirect(action: "read")

    }
}
