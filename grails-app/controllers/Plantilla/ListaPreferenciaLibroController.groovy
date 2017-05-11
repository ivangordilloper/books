package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class ListaPreferenciaLibroController {

    def springSecurityService


    def createlistaPreferenciaLibro(long id) {
        def usuarioU = springSecurityService.principal
        [idU: usuarioU]
    }

    def read(long id) {
        def usuarioU = springSecurityService.principal
        def listaLibro = Usuario.findById(usuarioU.id).listasL
        [lLibro: listaLibro, idU:id]

    }

    def opinar(long id) {
        def usuarioU = springSecurityService.principal
        [idU: usuarioU]

    }

    def eliminarElemento(long id) {
        def usuarioU = springSecurityService.principal
        [idU: usuarioU]

    }

    def agregarElemento(long id) {
        def usuarioU = springSecurityService.principal
        [idU: usuarioU]

    }

    def verListaLibro(){

    }

    def update(long id) {
        def usuarioU = springSecurityService.principal
        def us = ListaPreferenciaLibro.findById(id)
        def us2 = us.Usuario.getId()
        def lis = ListaPreferenciaLibro.findById(id)
        [lis: lis, idU: usuarioU]
    }

    def delete(long id) {
        def usuarioU = springSecurityService.principal
        def us = ListaPreferenciaLibro.findById(usuarioU.id)
        def us2 = us.Usuario.getId()
        def l = ListaPreferenciaLibro.findById(id).delete()
        [idU: usuarioU]
        redirect(action: "read")

    }

    def verListaPreferenciaLibro(long id) {
        def usuarioU = springSecurityService.principal
        def editarLista = ListaPreferenciaLibro.findById(usuario.id)
        def listaAutor = Autor.list()

        [llista: editarLista, lautor: listaAutor, idU:usuarioU]

    }

    def crear(long id) {
        def idU = params.idUsuario
        def u = Usuario.get(idU)
        def nombre = params.nombre
        [nombre: nombre, u:u]
       // u.addToListasL(new ListaPreferenciaLibro(nombre: nombre))
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