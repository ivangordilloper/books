package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class PerfilUsuarioController {
    def FOAFService
    static defaultAction = "usuario"
    def springSecurityService

    def usuario(long id) {
        //FOAFService.obtenLibros()
        def librosListaFOAF = FOAFService.obtenLibrosByEmail("raid_ivan@hotmail.com")
        def autoresListaFOAF = FOAFService.obtenAutoresByEmail("raid_ivan@hotmail.com")
        def usuarioU= springSecurityService.principal
        def usuario = Usuario.findById(usuarioU.id)

        //FOAFService.libros.clear()
        //FOAFService.setLibro(2, "ivan@hotmail.com");
        //FOAFService.setAmigo("ivan@hotmail.com", "Ivan Gordillo", "Gordillo", "Perez", "raid_ivan@hotmail.com")
        //ArrayList<String> uri =  FOAFService.getAmigosFOAF("ivan@hotmail.com")
        //FOAFService.setLibro(2, "raid_ivan@hotmail.com");
        //FOAFService.setLibro(2, "raid_ivan@hotmail.com");
        //FOAFService.setAutor(3, "raid_ivan@hotmail.com");

        //FOAFService.setAmigo("raid_ivan@hotmail.com", "Ivan Gordillo", "Gordillo", "Perez", "raid_ivan@hotmail.com")
        //ArrayList<String> uri =  FOAFService.getAmigosFOAF("raid_ivan@hotmail.com")

        def pal
        /*def libros = Libro.findAllByIdInList(librosListaFOAF)
        def autores = Autor.findAllByIdInList(autoresListaFOAF)
        */
        def libros = Libro.findAllByIdInList([1])
        def autores = Autor.findAllByIdInList([1])


        def listaLibros = usuario.listasL.collect()

        if(usuario.genero == 'F'){
            pal = "Bienvenida"
        }
        else {
            pal= "Bienvenido"
        }


        [usuarioS: usuario, pal: pal, libros1:libros, autores1: autores, listaLibros:listaLibros]
    }

    def p(){
        def usuario = params.usuario
        def passwd = params.password
        def validar = Usuario.findByNombre("12345");
        def validarpasswd = validar.password.toString()
    }
    def FOAF(){
        //FOAFService.generaRdfUsuarioActual("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
        //FOAFService.generaRdfUsuarioActual("ivan@hotmail.com","Ivan","Gordillo","Perez")
        //FOAFService.generaRdfUsuarioActual("ivan2@hotmail.com","Ivan","Gordillo","Perez")

//
        //FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
        // FOAFService.setEmailAmigo("raid_ivan@hotmail.com")
        // FOAFService.agregarAmigo("ivan@hotmail.com","Ivan","Gordillo","Perez")
        // FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
        //FOAFService.setEmailAmigo("ivan2@hotmail.com")
        //FOAFService.agregarAmigo("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
    }

}