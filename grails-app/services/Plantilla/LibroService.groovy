package Plantilla

import grails.transaction.Transactional

import static Plantilla.AutorService.*

@Transactional
class LibroService {

    def AutorService
    def libroToList() {
        return Libro.list()
    }
    def libroById(id){
        return Libro.findById(id)
    }
    def formatoFecha(fecha){
        return fecha.substring(0,10)
    }
    def getAutoresByLibro(libro){
        return libro.getAutores()

    }
    def getListAutores(){
        return Libro.list().autores
    }
    def opinionesByLibro(buscarLibro){
        return buscarLibro.opinL.asList()
    }

    def crearLibro(params){
        def autorL = AutorService.autorToList()
        def titulo = params.titulo
        def editorial = params.editorial
        def autor = params.autores
        def a = Autor.findByNombreCompleto(autor)
        def pais = params.pais
        def portada1 = params.portada
        def isbn = params.isbn
        byte[] portada = portada1.getBytes()
        def fechaPub = Date.parse('yyyy-MM-dd', params.fechaPub)
        def resumen = params.resumen
        def generoLiterario = params.generoLiterario
        def subGenero =  params.subGenero

        [portada: portada, isbn:isbn, autor: autor, titulo: titulo, editorial:editorial, subGenero: subGenero, generoLiterario:generoLiterario, pais:pais, fechaPub:fechaPub, resumen:resumen ]
        Libro p = new Libro(subGenero: subGenero, portada: portada, isbn:isbn, editorial:editorial,generoLiterario:generoLiterario, fechaPub:fechaPub, pais:pais, resumen:resumen,titulo: titulo)
        p.save(flush:true)
        p.errors.allErrors.each {
            print it
        }
        a.addToLibros(p)
    }

    def deleteLibro(id){
        def libroE = Libro.get(id)
        def autorL = libroE.getAutores()
        if (autorL.size() == 0)
            libroE.delete()
        else {
            def au = Autor.findById(libroE.autores.id)
            au.libros.remove(libroE)
            def a = libroE.getLlista().id
            if(a.size() ==0){
                libroE.delete()
            }
            else{
                def b = ListaPreferenciaLibro.findAllByIdInList(a)
                b.each{
                    it.libros.remove(libroE)
                }
                libroE.delete()
            }
        }

    }
    def opinarLibro(params){
        def idL = params.idLibro
        def op = params.mandarO
        def idU = params.idUsuario
        def opLibro = new OpinionLibro(opinionL: op, libro: idL, usuario:idU)
        if(opLibro.validate()){
            opLibro.save()
        }

    }

    def updateLibro(params){
        def id = params.idLibro
        def editarLibro = Libro.findById(id)
        def autorL = Autor.list()
        editarLibro.titulo = params.titulo
        editarLibro.editorial = params.editorial
        def autor = params.autores
        def a = Autor.findByNombreCompleto(autor)
        editarLibro.pais = params.pais
        editarLibro.fechaPub = Date.parse('yyyy-MM-dd', params.fechaPub)
        editarLibro.resumen = params.resumen
        editarLibro.generoLiterario = params.generoLiterario
        editarLibro.subGenero = params.subGenero
        editarLibro.save()
        a.addToLibros(editarLibro)

    }
    def calificarLibro(params, idUser){
        def cal = params.stars
        def idU = idUser
        def libro1 = params.id
        def lc = new CalificacionLibro(calif:cal, libro: libro1, usuario: idU)
        if(lc.validate()){
            lc.save()
        }
    }
}
