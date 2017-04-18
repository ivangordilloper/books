package Plantilla

class InicioController {

    static defaultAction = "home"
    def home() {

    }
    def iniciarSesion(){
        def user = Usuario.findByUsername(params.username)
       [sesionUsuario: user]

    }
    def contacto(){

    }
    def nosotros(){

    }
    def tienda(){

    }
    def iniciar(){
        redirect (controller:"perfilUsuario", action:"usuario", id:1)
    }

}
