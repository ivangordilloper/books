package Plantilla

import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON
import net.minidev.json.JSONObject

@Secured(['permitAll'])

class InicioController {
    def mailService
    static defaultAction = "home"

    def home() {

    }
    def iniciarSesion() {

    }
    def recuperarContra() {

    }

    def contacto(){

    }
    def enviar(){
        def nombre = params.nombreC
        def correo = params.mail
        def mensaje = params.mensaje
        mailService.sendMail {
            multipart true
            from correo
            to "bookscomtt@gmail.com"
            subject "Se realizó una sugerencia y/o comentario."
            html  view: "/email/sugerencia", model: [pNombre: nombre, pCorreo: correo, pMensaje: mensaje]
            inline 'logo', 'image/jpeg', new File('C:\\captura2.png')
        }
        redirect(controller: "inicio")
    }
    def nosotros(){

    }
    def tienda(){

    }
    def prueba(){

    }
    def obtenerJson(){
        HashMap jsonMap = new HashMap()
        //List libros = Libro.list()
        def libros = Libro.list()

        def autores = Autor.list();
        //List autores = Libro.list().autores
        jsonMap.libros = libros.collect{libro -> return [name:libro.titulo, id: libro.id]}
        jsonMap.autores = autores.collect{autor -> return [name:autor.nombreCompleto, id: autor.id]}
        render jsonMap as JSON
        //println jsonMap
        //return jsonMap
        [jsonMap: jsonMap]
    }
    def recuperarContrasena(){
        def generator = {
            String alphabet, int n ->
                new Random().with {
                    (1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
                }
        }
        def contra = generator( (('A'..'Z')+('0'..'9')).join(), 15 )

        def correo = params.correo

        def validar = Usuario.findByCorreo(correo)

        def usuario = validar.getUsername()


        if(validar){
            validar.setPassword(contra);
            mailService.sendMail {
                multipart true
                from "bookscomtt@gmail.com"
                to correo
                subject "Reestablecimiento de contraseña."
                html  view: "/email/recuperar", model: [pContra:contra, pUsuario:usuario]
                inline 'logo', 'image/jpeg', new File('C:\\captura2.png')
            }
            redirect(controller: "inicio")
        }
        else{
            redirect(controller: "inicio")
        }
    }

    def mandarCorreo(){

    }

    def iniciar(){
            def user = Usuario.findByUsername(params.username)
            def userC = user.getPassword()
            def userC2 = params.password

            if(userC == userC2){
                redirect (controller:"perfilUsuario", action:"usuario", id:user.id)
            }
            else{
                redirect (action:"iniciarSesion")
            }
            /*      if (user.validate()) {
                      user.save()
                      redirect action: "show", id: user.id
                  } else {
          // go and give them another crack at it in the original page
                      render view: "edit", model: [user:user]
                  }
              */
            //    [sesionUsuario: user]

    }

}
