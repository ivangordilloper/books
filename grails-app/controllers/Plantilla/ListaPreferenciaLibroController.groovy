package Plantilla

class ListaPreferenciaLibroController {

    def createlistaPreferenciaLibro() {

    }

    def read(){
        def listaLibro = ListaPreferenciaLibro.list()
        [lLibro: listaLibro]

    }

    def update(){

    }

    def delete(){

    }

    def verListaPreferenciaLibro(int id){
        def editarLista = ListaPreferenciaLibro.findById(id)
        def listaAutor = Autor.list()
        [llista:editarLista, lautor: listaAutor]

        }

    def crear(){
        def nombre = params.nombre
       // def usu = Usuario.findById()
        //usu.addToListasL(new ListaPreferenciaLibro(nombre: nombre))
        redirect(action: "read")

    }

    def actualizar(){

    }
}
