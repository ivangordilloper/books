package Plantilla

import grails.plugin.springsecurity.annotation.Secured


@Secured(['permitAll'])

class ListaPreferenciaAutorController {

    def springSecurityService

    def createlistaPreferenciaAutor(long id) {
        [idU: id]

    }

    def eliminarElemento(long id) {
        def usuarioU = springSecurityService.principal
        def listaU = params.idLista
        def elemento = params.id


        def elemento2 = ListaPreferenciaAutor.findById(listaU).autores.remove(Autor.findById(elemento))

        [usuarioS: usuarioU]
        redirect(controller:"perfilUsuario", action: "usuario")

    }

    def agregarElemento(){
        def usuarioL = springSecurityService.principal
        def user = Usuario.findById(usuarioL.id)
        def ele = params.autorI
        def li = Usuario.findById(usuarioL.id).listaA
        def lii = li.autores.add(Autor.findById(ele))
        FOAFService.setAutor(ele as int,user.correo)
        redirect(controller:"perfilUsuario", action: "usuario")
        [idU1: usuarioL]

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
        def idU = springSecurityService.principal
        def editarLista = ListaPreferenciaAutor.findById(id)
        def listaAutor = Libro.list()

        [llista: editarLista, llibro: listaAutor, usuarioS: idU]

    }

    def verListaAutor(){

    }

    def crear(long id) {
        def idU = springSecurityService.principal.id
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
