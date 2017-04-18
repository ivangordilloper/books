package Plantilla

class AutorController {

    def createAutor() {

    }

    def read() {
        def listaAutor = Autor.list()
        [autors: listaAutor]
    }

    def update(long id){
        def editarAutor = Autor.findById(id)
        def fecha = editarAutor.fechaNac.toString()
        def fecha2 = fecha.substring(0,10)
        [autor:editarAutor, fecha:fecha2]
    }

    def crear(){
        def nombre = params.nombre
        def apellidoP = params.apellidoP
        def apellidoM = params.apellidoM
        def fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        def genero = params.genero
        def generoLiterario = params.generoLiterario
        def nacionalidad = params.nacionalidad
        [apellidoM: apellidoM, nacionalidad:nacionalidad, apellidoP: apellidoP, fechaNac: fechaNac, nombre: nombre, genero: genero, generoLiterario: generoLiterario]
        Autor p = new Autor(apellidoM: apellidoM, apellidoP: apellidoP, nacionalidad: nacionalidad,   fechaNac: fechaNac, nombre: nombre, genero: genero, generoLiterario: generoLiterario)
        p.save(flush:true)
        redirect(action: "read")
    }

    def verAutor(int id){
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
        def editarAutor = Autor.findById(id)
        editarAutor.delete()
        redirect(action: "read")

    }

    def actualizar(long id){

        def editarAutor = Autor.findById(id)
        editarAutor.nombre = params.nombre
        editarAutor.apellidoP = params.apellidoP
        editarAutor.apellidoM = params.apellidoM
        editarAutor.fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        editarAutor.genero = params.genero
        editarAutor.generoLiterario = params.generoLiterario
        editarAutor.nacionalidad = params.nacionalidad

        editarAutor.save()
        redirect (action: "verAutor")

    }
}
