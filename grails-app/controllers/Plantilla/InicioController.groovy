package Plantilla

class InicioController {
    def mailService
    static defaultAction = "home"

    def home() {

    }
    def iniciarSesion() {

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
