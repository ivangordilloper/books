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
        Usuario p = new Usuario(apellidoM: apellidoM, apellidoP: apellidoP, password: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, username: nombreUsuario, telefono: telefono, genero: genero)
        if(!p.save()){
            p.errors.allErrors.each {
                print it
            }

            redirect(controller: "usuario", action: "createUsuario", "?error=1")

        }else {
            //Rol r = Rol.findByRolU('USUARIO')
            //r.addToUsuarioU(new Usuario(apellidoM: apellidoM, apellidoP: apellidoP, password: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, username: nombreUsuario, telefono: telefono, genero: genero))
            //def lista = Usuario.findByUsername(nombreUsuario).id

            mailService.sendMail {
                from "bookscomtt@gmail.com"
                to correo
                subject "New user"
                text "A new user has been created"
            }
            redirect(controller: "inicio", action: "iniciarSesion")
            //redirect (controller: "perfilUsuario", action: "usuario", params: [us:lista])
        }
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
