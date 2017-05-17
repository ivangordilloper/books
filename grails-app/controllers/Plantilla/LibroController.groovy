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
        def usuarioU = springSecurityService.principal
        def idU = usuarioU
        def editarLibro = LibroService.libroById(id)
        def fecha = LibroService.formatoFecha(editarLibro.fechaPub.toString())
        def autorL = LibroService.getAutoresByLibro(editarLibro)
        def au = AutorService.buscarAutorId(editarLibro.autores.id)
        //def au = Autor.findById(editarLibro.autores.id)
        def lautor = AutorService.autorToList()
        [libro:editarLibro, fecha:fecha, autor: au, autorl: lautor, idU1: idU]
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
        def lista = LibroService.libroToList()
        def editarLibro = LibroService.libroById(idLibro)
        def fecha = LibroService.formatoFecha(editarLibro.fechaPub.toString())
        def buscarLibro =  LibroService.libroById(idLibro)
        def opiniones = LibroService.opinionesByLibro(buscarLibro)
        def usuarioL = springSecurityService.principal

        //mandarServicio
        def genero = editarLibro.generoLiterario
        def listaLibr = Libro.findAllByGeneroLiterario(genero)
        def autorL = editarLibro.autores
        def editarAutor = Autor.findById(editarLibro.id)
        def libE = AutorService.librosByAutor(editarAutor)
        def listas = Usuario.findById(usuarioL.id).listasL

        [ libro:editarLibro, listas:listas, fecha:fecha, idU1: usuarioL, opiniones:opiniones, lista:lista, listaG: listaLibr, listaAI: libE]

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
        LibroService.opinarLibro(params)
        redirect (action: "verLibro", params: [id: params.idLibro])
    }
    def actualizar(){
        def usuarioU = springSecurityService.principal
        def idU = usuarioU
        redirect(action: "read")
    }
    def calificar(){
        LibroService.calificarLibro(params)
        def usuarioL = springSecurityService.principal
        [idU1: usuarioL]
    }
}
