package Plantilla

class UsuarioController {
    def mailService
    def createUsuario() {

    }

    def read(){
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



        def rol = "USUARIO"
        def generof = params.generof
        def libro1 = params.libro1
        def libro2 = params.libro2
        def libro3 = params.libro3
        def autor1 = params.autor1
        def autor2 = params.autor2
        def autor3 = params.autor3

        [generoFav:generof, libroFav1: libro1, libroFav2:libro2, libroFav3: libro3, autorFav1:autor1, autorFav2:autor2, autorFav3:autor3, rol:rol, apellidoM: apellidoM, apellidoP: apellidoP, contrasenia: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, nombreUsuario: nombreUsuario, telefono: telefono, genero: genero]

        Usuario p = new Usuario( rol:rol, apellidoM: apellidoM, apellidoP: apellidoP, password: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, username: nombreUsuario, telefono: telefono, genero: genero).save()
        Formulario pf = new Formulario(generoFav:generof, libroFav1: libro1, libroFav2:libro2, libroFav3: libro3, autorFav1:autor1, autorFav2:autor2, autorFav3:autor3, Usuario: p.id).save()
        mailService.sendMail {
            from "bookscomtt@gmail.com"
            to correo
            subject "New user"
            text "A new user has been created"
        }
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
