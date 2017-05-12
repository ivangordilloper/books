package Plantilla

import grails.plugin.springsecurity.annotation.Secured

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

        if(validar){
            validar.setPassword(contra);
            mailService.sendMail {
                multipart true
                from "bookscomtt@gmail.com"
                to correo
                subject "Reestablecimiento de contraseña."
                html  view: "/email/recuperar", model: [pContra:contra]
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
