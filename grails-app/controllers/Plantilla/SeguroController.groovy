package Plantilla

import grails.plugin.springsecurity.annotation.Secured


class SeguroController {

    def springSecurityService

    @Secured(['permitAll'])
    def index() {
        def auth = springSecurityService.authentication
        def authorities = auth.authorities.toString()
        println(authorities)
        if (authorities == "[ROLE_ADMIN]")
            redirect(controller: 'perfilAdministrador', action: "administrador")
        else if (authorities == "[ROLE_USER]")
            redirect(controller: 'perfilUsuario', action: "usuario")
        else
            redirect(controller: 'login', action: "auth")
    }

    @Secured('ROLE_ADMIN')
    def acceso_admin() {

    }

    @Secured('ROLE_USER')
    def acceso_user() {

    }
}

