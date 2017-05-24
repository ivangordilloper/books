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
        [lLibro: listaLibro, idU: usuarioU]

    }

    def opinar(long id) {
        def usuarioU = springSecurityService.principal
        [idU: usuarioU]

    }

    def eliminarElemento(long id) {
        def usuarioU = springSecurityService.principal
        def listaU = params.idLista
        def elemento = params.id

        def elemento2 = ListaPreferenciaLibro.findById(listaU).libros
        elemento2.remove(Libro.findById(elemento))
        [usuarioS: usuarioU]
         redirect(controller:"perfilUsuario", action: "usuario")

    }

    def agregarElemento() {
        def usuarioU = springSecurityService.principal
        def user = Usuario.findById(usuarioU.id)
        def  id= params.lista
        def idLibro = params.libro

        //render "${id} ${idLibro}"
        ListaPreferenciaLibro.findById(id).addToLibros(Libro.findById(idLibro))
        FOAFService.setLibro(idLibro as int,user.correo)
      //  Usuario.findById(usuarioU.id).listasL.add(lib)
       // [idU: usuarioU]
       // redirect (controller: "perfilUsuario", action:"verLibro", params: [id: idLibro])

    }

    def verListaLibro(){
        def usuarioU = springSecurityService.principal

        [idU: usuarioU]
    }

    def update(long id) {
        def usuarioU = springSecurityService.principal
        def us = ListaPreferenciaLibro.findById(id)
        def us2 = us.Usuario.getId()
        def lis = ListaPreferenciaLibro.findById(id)
        [lis: lis, usuarioS: usuarioU]
    }

    def delete(long id) {
        def usuarioU = springSecurityService.principal
        def us = ListaPreferenciaLibro.findById(usuarioU.id)
        def l = ListaPreferenciaLibro.findById(id).delete()
        [idU: usuarioU]
        redirect(controller:"perfilUsuario", action: "usuario")

    }

    def verListaPreferenciaLibro(long id) {
        def usuarioU = springSecurityService.principal
        def editarLista = ListaPreferenciaLibro.findById(id)
       // def editarLista = Usuario.findById(usuarioU.id).listasL
        def listaAutor = Autor.list()

        [llista: editarLista, lautor: listaAutor, usuarioS: usuarioU]

    }

    def crear(long id) {
        def usuarioU = springSecurityService.principal
        def u = Usuario.findById(usuarioU.id)
        def nombre = params.nombre

        [nombre: nombre,idU: usuarioU]
         u.addToListasL(new ListaPreferenciaLibro(nombre: nombre))
        redirect(controller:"perfilUsuario", action: "usuario")

    }

    def actualizar() {
        def idLista = params.idLista
        def listaA = ListaPreferenciaLibro.findById(idLista)
        listaA.nombre = params.nombre
        listaA.save()
        def us = ListaPreferenciaLibro.findById(idLista)
        def us2 = us.Usuario.getId()
        redirect(controller:"perfilUsuario", action: "usuario")

    }
}