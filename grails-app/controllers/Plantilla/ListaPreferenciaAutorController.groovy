package Plantilla

class ListaPreferenciaAutorController {

    def createlistaPreferenciaAutor() {

    }

    def read(){
        def listaAutor = ListaPreferenciaAutor.list()
        [lAutor: listaAutor]

    }

    def update(long id) {
  /*      def lis = ListaPreferenciaAutor.findById(id)
        [lis: lis]
    */}

    def delete(long id) {
  /*      def lista = ListaPreferenciaAutor.findById(id)
        lista.delete()
*/
    }

    def verListaPreferenciaAutor(long id) {
        def editarLista = ListaPreferenciaAutor.findById(id)
        def listaAutor = Libro.list()
        [llista: editarLista, llibro: listaAutor]

    }

    def crear(){
        def nombre = params.nombre
        [nombre: nombre]
        ListaPreferenciaAutor nuevalista = new ListaPreferenciaAutor(nombre: nombre).save()
        // def usu = Usuario.findById()
        //usu.addToListasL(new ListaPreferenciaLibro(nombre: nombre))
        nuevalista.addToAutores(Autor.findById(1))
        redirect(action: "read")

    }

    def actualizar(){
        /*
        def idLista = params.idLista
        def listaA = ListaPreferenciaAutor.findById(idLista)
        listaA.nombre = params.nombre
        listaA.save()
        redirect(action: "read")
        */
    }
}
