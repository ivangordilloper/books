package Plantilla

import grails.plugin.springsecurity.annotation.Secured


@Secured(['permitAll'])
class UsuarioController {
    def mailService
    def springSecurityService

    def createUsuario() {
    }

    def validar(){
        def token = params.token
        def validar = Usuario.findByToken(token);
        if(validar) {
            validar.setToken("Valido")

            def autors = Autor.list()
            def libros = Libro.list()
            [autors:autors, libros: libros, token:"valido"]
        }else {
            [utoken:"invalido"]
            def autors = Autor.list()
            def libros = Libro.list()
            [autors:autors, libros: libros, token:"error"]
        }
    }

    def read(){
        def usuarioL = springSecurityService.principal
        def listaUsuario = Usuario.list()

        // def listadoPersonas = Persona.list()
        [usuarios: listaUsuario]
    }

    def verUsuario(int id){
        def editarUsuario = Usuario.findById(id)
        def fecha = editarUsuario.fechaNac.toString()
        def fecha2 = fecha.substring(0,10)
        [user:editarUsuario, fecha:fecha2]
    }
    def update(long id){
        def editarUsuario = Usuario.findById(id)
        def fecha = editarUsuario.fechaNac.toString()
        def fecha2 = fecha.substring(0,10)
        [user:editarUsuario, fecha:fecha2]
    }

    def crear(){
        def nombre = params.nombre
        def apellidoP = params.apellidoP
        def apellidoM = params.apellidoM
        def fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        def telefono = params.telefono
        def nombreUsuario = params.nombreUsuario
        def correo = params.correo
        def contrasenia = params.contrasenia
        def genero = params.genero
        [apellidoM: apellidoM, apellidoP: apellidoP, contrasenia: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, nombreUsuario: nombreUsuario, telefono: telefono, genero: genero]


        def generator = {
            String alphabet, int n ->
            new Random().with {
                (1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
            }
        }
        def token = generator( (('A'..'Z')+('0'..'9')).join(), 15 )
        def username = "JayKay"
        def uTok = "${username}${token}"
        Usuario p = new Usuario(  apellidoM: apellidoM, apellidoP: apellidoP, password: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, username: nombreUsuario, telefono: telefono, genero: genero, token: uTok).save()
        UsuarioRole.create(p, Role.findById(2))
        mailService.sendMail {
            multipart true
            from "bookscomtt@gmail.com"
            to correo
            subject "Validación de nuevo usuario en Bookscom."
            html  view: "/email/registro", model: [pusuario: nombreUsuario, pnombre: nombre, papellidop: apellidoP, papellidoM: apellidoM, token:uTok]
            inline 'logo', 'image/jpeg', new File('C:\\captura2.png')
        }
        FOAFService.generaRdfUsuarioActual((String)correo, (String)nombre, (String)apellidoP, (String)apellidoM)

        //redirect (controller: "perfilUsuario", action: "usuario", params: [us:lista])

        redirect(controller: "inicio", action: "iniciarSesion")

   }

    def delete(int id){

        def editarUsuario = Usuario.findById(id)
        editarUsuario.delete()
        render (view: "read")

    }

    def actualizar(){

        def un = params.nombreUsuario
        def editarUsuario = Usuario.findByUsername(un)
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
        render (view: "verUsuario")

    }

}
