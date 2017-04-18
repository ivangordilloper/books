package Plantilla

class Rol {
    String rolU

   // static hasMany = [usuarioU: Usuario]

    static constraints = {
        rolU inList: ["ADMINISTRADOR", "USUARIO"], nullable: false
    }
}
