package Plantilla

class ListaPreferenciaAutorController {

    def createlistaPreferenciaAutor() {

    }

    def read(){
        def listaAutor = ListaPreferenciaAutor.list()
        [lAutor: listaAutor]

    }

    def update(){

    }

    def delete(){

    }

    def verListaPreferenciaAutor(int id){
        def editarLista = ListaPreferenciaAutor.findById(id)
        [llista:editarLista]

    }

    def crear(){
        def nombre = params.nombre
        def usu = Usuario.findById(11)
        usu.addToListasA(new ListaPreferenciaAutor(nombre: nombre))
        //ListaPreferenciaAutor ll = new ListaPreferenciaAutor(nombre: nombre).save()
        redirect(action: "read")


    }

    def actualizar(){

    }
}
