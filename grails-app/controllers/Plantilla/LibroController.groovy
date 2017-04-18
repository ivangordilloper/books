package Plantilla

class LibroController {

    def createLibro() {
        def autorL = Autor.list()
        [autors: autorL]

    }

    def read(){
        def listaLibro = Libro.list()
        def listaAutores = Libro.list().autor
        def la = Autor.list()

//{a.find(a.libros.find(Plantilla.Libro.find(libro.id).id)).nombre
                //autores.find(autores.libros.find{it.find(libro.id)})
        [libros: listaLibro,  aut: listaAutores]
    }

    def verLibro(long id){
        def editarLibro = Libro.findById(id)
        def fecha = editarLibro.fechaPub.toString()
        def fecha2 = fecha.substring(0,10)
        [libro:editarLibro, fecha:fecha2]

    }

    def crear(){
        //respond autores
        def autorL = Autor.list()
        def titulo = params.titulo
        def editorial = params.editorial
        def autor = params.autores
        def a = Autor.findById(autor)
        def pais = params.pais
        def fechaPub = Date.parse('yyyy-MM-dd', params.fechaPub)
        def portada = params.portada
        def resumen = params.resumen
        def generoLiterario = params.generoLiterario
        //def autor = params.autor

        [titulo: titulo, editorial:editorial, generoLiterario:generoLiterario, pais:pais, fechaPub:fechaPub, portada:portada, resumen:resumen ]
        Libro p = new Libro(editorial:editorial,generoLiterario:generoLiterario, fechaPub:fechaPub, pais:pais, portada:portada, resumen:resumen,titulo: titulo)
        a.addToLibros(p)
        p.save(failOnError: true)

        redirect(action: "read")
    }

    def delete(long id){
        def editarLibro = Libro.findById(id)
        editarLibro.delete()
        redirect (action: "read")

    }
    def actualizar(){

    }
}
