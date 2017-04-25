package Plantilla

class ListaPreferenciaLibroController {

    def createlistaPreferenciaLibro() {

    }

    def read() {
        def listaLibro = ListaPreferenciaLibro.list()
        [lLibro: listaLibro]

    }

    def opinar(long id) {

    }

    def eliminarElemento(long id) {

    }

    def agregarElemento(long id) {

    }

    def update(long id) {
        def lis = ListaPreferenciaLibro.findById(id)
        [lis: lis]
    }

    def delete(long id) {
        def lista = ListaPreferenciaLibro.findById(id)
        lista.delete()
    }

    def verListaPreferenciaLibro(long id) {
        def editarLista = ListaPreferenciaLibro.findById(id)
        def listaAutor = Autor.list()
        [llista: editarLista, lautor: listaAutor]

    }

    def crear() {
        def nombre = params.nombre
        [nombre: nombre]
        ListaPreferenciaLibro nuevalista = new ListaPreferenciaLibro(nombre: nombre).save()
        // def usu = Usuario.findById()
        //usu.addToListasL(new ListaPreferenciaLibro(nombre: nombre))
         nuevalista.addToLibros(Libro.findById(1))
        redirect(action: "read")

    }

    def actualizar() {
        def idLista = params.idLista
        def listaA = ListaPreferenciaLibro.findById(idLista)
        listaA.nombre = params.nombre
        listaA.save()
        redirect(action: "read")
    }
}