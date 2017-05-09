package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class ListaPreferenciaLibroController {

    def createlistaPreferenciaLibro(long id) {
        [idU: id]
    }

    def read(long id) {
        def listaLibro = Usuario.findById(id).listasL
        [lLibro: listaLibro, idU:id]

    }

    def opinar(long id) {

    }

    def eliminarElemento(long id) {

    }

    def agregarElemento(long id) {

    }

    def update(long id) {
        def us = ListaPreferenciaLibro.findById(id)
        def us2 = us.Usuario.getId()
        def lis = ListaPreferenciaLibro.findById(id)
        [lis: lis]
    }

    def delete(long id) {
        def us = ListaPreferenciaLibro.findById(id)
        def us2 = us.Usuario.getId()
        def l = ListaPreferenciaLibro.findById(id).delete()
        redirect(action: "read", id: us2)

    }

    def verListaPreferenciaLibro(long id) {
        def editarLista = ListaPreferenciaLibro.findById(id)
        def listaAutor = Autor.list()
        [llista: editarLista, lautor: listaAutor]

    }

    def crear(long id) {
        def idU = params.idUsuario
        def u = Usuario.get(idU)
        def nombre = params.nombre
        [nombre: nombre, u:u]
        u.addToListasL(new ListaPreferenciaLibro(nombre: nombre))
        redirect(action: "read", params: [id:idU])

    }

    def actualizar() {
        def idLista = params.idLista
        def listaA = ListaPreferenciaLibro.findById(idLista)
        listaA.nombre = params.nombre
        listaA.save()
        def us = ListaPreferenciaLibro.findById(idLista)
        def us2 = us.Usuario.getId()
        redirect(action: "read", id: us2)

    }
}