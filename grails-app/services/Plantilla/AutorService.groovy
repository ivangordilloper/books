package Plantilla

import grails.transaction.Transactional

@Transactional
class AutorService {

    def buscarAutorId(id) {
        return  Autor.findById(id)

    }

    def autorToList(){
        return  Autor.list()
    }
    def formatoFecha(fecha){
        return fecha.substring(0,10)
    }
    def createAutor(params){
        def nombre = params.nombre
        def apellidoP = params.apellidoP
        def apellidoM = params.apellidoM
        def nombreC = nombre + " " + apellidoP + " " + apellidoM
        def fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        def genero = params.genero
        def generoLiterario = params.generoLiterario
        def nacionalidad = params.nacionalidad
        def foto1 = params.photo
        byte[] foto = foto1.getBytes()
        [foto:foto, nacionalidad: nacionalidad, fechaNac: fechaNac, nombreC: nombreC, genero: genero, generoLiterario: generoLiterario]
        Autor p = new Autor(foto:foto, fechaNac: fechaNac, genero: genero, generoLiterario: generoLiterario, nacionalidad: nacionalidad, nombreCompleto: nombreC)
        p.save(flush: true)
    }
    def librosByAutor(editarAutor){
        return editarAutor.libros.asList()
    }
    def deleteAutor(id){
        def editarAutor = Autor.get(id)
        def a = editarAutor.getLlista().id
        if (a.size() == 0)
            editarAutor.delete()
        else {
            def b = ListaPreferenciaAutor.findAllByIdInList(a)

            b.each{
                it.autores.remove(editarAutor)
            }

            editarAutor.delete(flush: true)
        }
    }
    def editarAutor(params){
        def id = params.idAutor
        def editarAutor = Autor.findById(id)
        editarAutor.nombreCompleto = params.nombre
        editarAutor.fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        editarAutor.genero = params.genero
        editarAutor.generoLiterario = params.generoLiterario
        editarAutor.nacionalidad = params.nacionalidad

        editarAutor.save()
    }
}
