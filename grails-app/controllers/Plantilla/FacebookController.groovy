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
        def books = params.books
        //print books
        try {
            JSONObject amigosJ = JSON.parse(amigos)
            JSONObject booksJ = JSON.parse(books)
            //print booksJ
            def keys = amigosJ.keySet()
            def keysB = booksJ.keySet()
            //print keys
            def emails = []
            for (def i = 0; i < keys.size(); i++) {
                String key = (String) keys[i]
                def user = Usuario.findByIdf((String) amigosJ.get(key))
                emails.push(user.correo)
                FOAFService.setAmigo(userP.correo,user.nombre, user.apellidoP, user.apellidoM, user.correo )
            }

            def booksList = []
            for (def i = 0; i < keysB.size(); i++) {
                String key = (String) keysB[i]
                print booksJ.get(key)
                def libroF = Libro.findByTitulo((String)booksJ.get(key))
                if(libroF){
                    FOAFService.setLibro((Integer)libroF.id, userP.correo )
                }

            }

            //print emails

        }catch (Exception ignored){
            return "No tienes amigos"
        }




    }
}
