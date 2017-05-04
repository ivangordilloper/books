package Plantilla

import org.springframework.dao.DataIntegrityViolationException

class AutorController{

    def createAutor() {

    }

    def read(long id) {
        def listaAutor = Autor.list()
        [preadA: listaAutor]
    }

    def update(int id){
        def editarAutor = Autor.findById(id)
        def fecha = editarAutor.fechaNac.toString()
        def fecha2 = fecha.substring(0,10)

        [pupdateA:editarAutor, fecha:fecha2]
    }

    def crear() {

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
/*
        if (p?.foto) {
            response.setContentLength(p.foto.size())
            response.outputStream.write(p.foto)
        } else {
             response.sendError(404)
        }
        redirect(action: "read")
    }
*/
        redirect(action: "read")
    }
    def verAutor(long id){
            def editarAutor = Autor.findById(id)
            //def libros = Libro.list(Libro.getBelongsTo() == id)
            def fecha = editarAutor.fechaNac.toString()
            def fecha2 = fecha.substring(0,10)
            def libE = editarAutor.libros.asList()

           // def lib = Autor.listOrderByLautorb().lautorb
           // def libros = Libro.findAllByAutor(editarAutor).titulo
            [autor:editarAutor, fecha:fecha2, lib: libE]

    }

    def delete(int id){
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
        redirect (action: "read")

    }

    def actualizar(){
        def id = params.idAutor
        def editarAutor = Autor.findById(id)
        editarAutor.nombreCompleto = params.nombre
        editarAutor.fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        editarAutor.genero = params.genero
        editarAutor.generoLiterario = params.generoLiterario
        editarAutor.nacionalidad = params.nacionalidad

        editarAutor.save()
        redirect (action: "read")

    }
}
