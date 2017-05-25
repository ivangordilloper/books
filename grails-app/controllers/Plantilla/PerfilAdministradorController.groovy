package Plantilla

import grails.plugin.springsecurity.annotation.Secured


@Secured(['permitAll'])

class PerfilAdministradorController {
    def springSecurityService
    def administrador() {
        def usuarios = springSecurityService.principal
        def libros = Libro.findAll()
        def autores = Autor.findAll()
        def usuario = Usuario.findById(usuarios.id)
        def lista = usuario.listaA
        def listaAmigos = usuario.amigos
        def listaU = UsuarioRole.findAllByRole(Role.findById(2))
        print listaU.usuario.id
        def listaUsuarios
        if(listaU) {
            listaUsuarios = Usuario.findAllByIdInList(listaU.usuario.id)
        }else{
            listaUsuarios = Usuario.findAllByCorreo("")
        }
        def pal

        def listaLibros = usuario.listasL.collect()


        [listaA: lista, usuarioS: usuarios, listaUsuario: listaUsuarios, libros1:libros, autores1: autores, listaLibros:listaLibros, listaAmigos: listaAmigos]

    }

    def verListaAutor(long id) {
        def idU = springSecurityService.principal
        def editarLista = ListaPreferenciaAutor.findById(id)
        def listaAutor = Libro.list()

        [llista: editarLista, llibro: listaAutor, usuarioS: idU]

    }
    def verUsuario(int id){
        def usuarioBusqueda = Usuario.findById(id)
        def usuario = springSecurityService.principal
        [usuarioBusqueda:usuarioBusqueda, usuarioS: usuario]
    }

    def verListaLibro(long id) {
        def usuarioU = springSecurityService.principal
        def editarLista = ListaPreferenciaLibro.findById(id)


        // def editarLista = Usuario.findById(usuarioU.id).listasL
        def listaAutor = Autor.list()

        [llista: editarLista, lautor: listaAutor, usuarioS: usuarioU]

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
        editarUsuario.telefono = params.telefono as int
        //Bloquear que no se pueda cambiar
        //editarUsuario.username = params.nombreUsuario
        //editarUsuario.correo = params.correo
        editarUsuario.password = params.contrasenia
        //editarUsuario.genero = params.genero
        editarUsuario.save(flush:true)
        [usuarioS: user]
        redirect (controller:"perfilUsuario",view: "usuario")

    }
}
