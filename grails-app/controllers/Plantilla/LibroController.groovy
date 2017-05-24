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
        def idL= id
        //def idLibro = idL.id
        def lista = LibroService.libroToList()
        def editarLibro = LibroService.libroById(idL)
        def fecha = LibroService.formatoFecha(editarLibro.fechaPub.toString())

        def opiniones = LibroService.opinionesByLibro(editarLibro)
        def usuarioL = springSecurityService.principal

        //mandarServicio
        def genero = editarLibro.generoLiterario
        def listaLibr = Libro.findAllByGeneroLiterario(genero)
        def autorL = editarLibro.autores
        def editarAutor = Autor.findById(autorL.id)
        def libE = AutorService.librosByAutor(editarAutor)
        def listas = Usuario.findById(usuarioL.id).listasL
        def calificaciones = CalificacionLibro.list()
        def numeroCal = calificaciones.collect().count{
            it.Libro.equals(editarLibro)
        }
        def promedio
        def cal2 = editarLibro.califL.calif
        def cal3 = cal2.sum()

        if(numeroCal >0) {
            promedio = cal3 / numeroCal
        }else{
            promedio = 0
        }

        def cuentaE

        if (promedio==0){
            cuentaE = "0"
        }else if (promedio>= 5){
            cuentaE ="5"
        }else if(promedio>=4 && promedio<5) {
            cuentaE= "4"
        }else if(promedio>=3 && promedio<4){
            cuentaE= "3"
        }else if (promedio>= 2 && promedio <3){
            cuentaE= "2"
        }else if (promedio>=1 && promedio<2){
            cuentaE="1"
        }

      // render "${cuentaE}"

        [ editarAutor: editarAutor, cuentaE:cuentaE, libro:editarLibro, promedio: promedio, listas:listas,numeroCal: numeroCal, fecha:fecha, idU1: usuarioL, opiniones:opiniones, lista:lista, listaG: listaLibr, listaAI: libE]

    }

    def crear(){
        LibroService.crearLibro(params)
        redirect(controller: "perfilAdministrador", action: "administrador")
    }

    def delete(long id){
        LibroService.deleteLibro(id)
        redirect (controller: "perfilAdministrador", action: "administrador")
    }


    def opinar(){
        def usuarioL = springSecurityService.principal
        def idU = usuarioL.id
        LibroService.opinarLibro(params)
        redirect (action: "verLibro", params: [id: params.idLibro])
    }
    def actualizar(){
        LibroService.updateLibro(params)
        redirect(controller: "perfilAdministrador", action: "administrador")
    }
    def calificar(){
        def usuarioL = springSecurityService.principal
        LibroService.calificarLibro(params,usuarioL.id)
        [idU1: usuarioL]
    }
}
