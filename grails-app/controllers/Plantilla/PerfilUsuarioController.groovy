package Plantilla

class PerfilUsuarioController {

    static defaultAction = "usuario"

    def usuario(long id) {
        def usuariosL = Usuario.findById(id)
        def pal
        if(usuariosL.genero == 'F'){
            pal = "Bienvenida"
        }
        else {
            pal= "Bienvenido"
        }
        [usuarioS: usuariosL, pal: pal]
    }

}
