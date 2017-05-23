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

    def update(){
        def user = springSecurityService.principal
        [user:user, usuarioS: user]
    }
}
