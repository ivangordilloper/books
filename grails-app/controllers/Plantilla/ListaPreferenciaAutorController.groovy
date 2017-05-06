package Plantilla

class ListaPreferenciaAutorController {

    def createlistaPreferenciaAutor(long id) {
        [idU: id]

    }

    def read(long id) {
        def listaAutor = Usuario.findById(id).listasA
        [lAutor: listaAutor, idU:id]

    }

    def update(long id) {
        def us = ListaPreferenciaAutor.findById(id)
        def us2 = us.Usuario.getId()
        def lis = ListaPreferenciaAutor.findById(id)
        [lis: lis]

    }

    def delete(long id) {
        def us = ListaPreferenciaAutor.findById(id)
        def us2 = us.Usuario.getId()
        def l = ListaPreferenciaAutor.findById(id).delete()
        redirect(action: "read", id: us2)

    }

    def verListaPreferenciaAutor(long id) {
        def editarLista = ListaPreferenciaAutor.findById(id)
        def listaAutor = Libro.list()
        [llista: editarLista, llibro: listaAutor]

    }

    def crear(long id) {
        def idU = params.idUsuario
        def u = Usuario.get(idU)
        def nombre = params.nombre
        [nombre: nombre, u:u]
        u.addToListasA(new ListaPreferenciaAutor(nombre: nombre))
        redirect(action: "read", params: [id:idU])

    }

    def actualizar(){
        def idLista = params.idLista
        def listaA = ListaPreferenciaAutor.findById(idLista)
        listaA.nombre = params.nombre
        listaA.save()
        def us = ListaPreferenciaAutor.findById(idLista)
        def us2 = us.Usuario.getId()
        redirect(action: "read", id: us2)

    }
}
