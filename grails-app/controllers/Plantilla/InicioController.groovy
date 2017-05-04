package Plantilla

class InicioController {

    static defaultAction = "home"
    def home() {

    }
    def iniciarSesion() {
    }

    def contacto(){

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
