package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class PerfilUsuarioController {
    def FOAFService
    static defaultAction = "usuario"
    def springSecurityService
    def AutorService
    def LibroService

    def usuario(long id) {
        //FOAFService.obtenLibros()
        def librosListaFOAF = FOAFService.obtenLibrosByEmail("raid_ivan@hotmail.com")
        def autoresListaFOAF = FOAFService.obtenAutoresByEmail("raid_ivan@hotmail.com")
        def usuarioU= springSecurityService.principal
        def usuario = Usuario.findById(usuarioU.id)
        def lista = usuario.listaA
        def listaAmigos = usuario.amigos
        //def listaA = ListaPreferenciaAutor.list()
        //def li = listaA.id




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


        [listaA: lista, usuarioS: usuarioU, pal: pal, libros1:libros, autores1: autores, listaLibros:listaLibros, listaAmigos: listaAmigos]
    }

   /* def p(){
        def usuario = params.usuario
        def passwd = params.password
        def validar = Usuario.findByNombre("12345");
        def validarpasswd = validar.password.toString()
    }*/

    def librosCategoria(){
        def libroCi = LibroService.libroToList()
        def usuarioU = springSecurityService.principal
        def calificaciones = CalificacionLibro.list()
        [libroC: libroCi, usuarioS:usuarioU, calif : calificaciones]

    }

    def update(){
        def user = springSecurityService.principal
        [user:user, usuarioS: user]
    }

    def actualizar(){

        def user = springSecurityService.principal
        def editarUsuario = Usuario.findById(user.id)
        editarUsuario.nombre = params.nombre
        editarUsuario.apellidoP = params.apellidoP
        editarUsuario.apellidoM = params.apellidoM
        editarUsuario.fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        editarUsuario.telefono = Integer.parseInt(params.telefono)
        //Bloquear que no se pueda cambiar
        //editarUsuario.username = params.nombreUsuario
        editarUsuario.correo = params.correo
        editarUsuario.password = params.contrasenia
        editarUsuario.genero = params.genero
        editarUsuario.save()
        [usuarioS: user]
        render (view: "usuario")

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