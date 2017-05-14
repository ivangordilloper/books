package Plantilla

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import groovy.json.*
import net.minidev.json.JSONObject
import org.grails.web.json.JSONException

import static grails.converters.JSON.*

@Secured(['permitAll'])

class FacebookController {
    def springSecurityService
    def FOAFService
    def index() { }

    def login(){

    }
    def redirect(){

    }
    def connect(){

        def usuarioU= springSecurityService.principal.id
        def userP = Usuario.findById(usuarioU)

        def idUser=  params.idUsuarioFB
        def amigos = params.idAmigos
        try {
            JSONObject amigosJ = JSON.parse(amigos)

            //print amigosJ

            def keys = amigosJ.keySet()
            //print keys
            def emails = []
            for (def i = 0; i < keys.size(); i++) {
                String key = (String) keys[i]
                def user = Usuario.findByIdf((String) amigosJ.get(key))
                emails.push(user.correo)
                FOAFService.setAmigo(userP.correo,user.nombre, user.apellidoP, user.apellidoM, user.correo )
            }
            print emails

        }catch (Exception ignored){
            return "No tienes amigos"
        }




    }
}
