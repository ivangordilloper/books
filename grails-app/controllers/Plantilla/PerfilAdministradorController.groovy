package Plantilla

import grails.plugin.springsecurity.annotation.Secured


@Secured(['permitAll'])

class PerfilAdministradorController {

    def administrador() { }
}
