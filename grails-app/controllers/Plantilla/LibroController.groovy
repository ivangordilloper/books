package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class LibroController {
    def springSecurityService
    def AutorService
    def LibroService

    def createLibro() {
        def autorL = AutorService.autorToList()
        def usuarioU = springSecurityService.principal
        [autor: autorL, idU1:usuarioU]

    }



    def librosCategoria(){
        def libroCi = LibroService.libroToList()
        def usuarioU = springSecurityService.principal
        def idU = usuarioU
        [libroC: libroCi, idU1:idU]

    }
    def update(long id){
        def editarLibro = LibroService.libroById(id)
        def fecha = LibroService.formatoFecha(editarLibro.fechaPub.toString())
        def autorL = LibroService.getAutoresByLibro(editarLibro)
        def au = Autor.findById(editarLibro.autores.id)
        def lautor = AutorService.autorToList()
        [libro:editarLibro, fecha:fecha, autor: au, autorl: lautor]
    }

    def read(long id) {
        def usuarioU = springSecurityService.principal
        def listaLibro = LibroService.libroToList()
        def listaAutores = LibroService.getListAutores()
        [libros: listaLibro, aut: listaAutores, idU1: usuarioU]
    }


    def verLibro(long id){
        def idL= this.getParams()
        def idUsuario = idL.idU
        def idLibro = idL.id
        def editarLibro = LibroService.libroById(idLibro)
        def fecha = LibroService.formatoFecha(editarLibro.fechaPub.toString())
        def buscarLibro =  LibroService.libroById(idLibro)
        def opiniones = LibroService.opinionesByLibro(buscarLibro)
        def usuarioL = springSecurityService.principal
        [libro:editarLibro, fecha:fecha, idU1: usuarioL, opiniones:opiniones]

    }

    def crear(){
        LibroService.crearLibro(params)
        redirect(action: "read")
    }

    def delete(long id){
        LibroService.deleteLibro(id)
        redirect (action: "read")
    }


    def opinar(){
        def usuarioL = springSecurityService.principal
        def idU = usuarioL.id
        redirect (action: "verLibro", params: [id: params.idLibro])
    }
    def actualizar(){
        LibroService.updateLibro(params)
        redirect(action: "read")
    }
    def calificar(){
        LibroService.calificarLibro(params)
        def usuarioL = springSecurityService.principal
        [idU1: usuarioL]
    }
}
