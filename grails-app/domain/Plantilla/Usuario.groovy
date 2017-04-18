package Plantilla

class Usuario {

    String nombre
    String apellidoP
    String apellidoM
    Date fechaNac = new Date()
    int telefono
    String correo
    String genero
    String username
    String password

    static hasMany = [listasL: ListaPreferenciaLibro, listasA : ListaPreferenciaAutor, following: Usuario]
   // static belongsTo = [rolU : Rol]
    //boolean enabled = true
    //boolean accountExpired
    //boolean accountLocked
    //boolean passwordExpired

    static constraints = {
        nombre size: 1..10, nullable: false
        apellidoP size: 1..10, nullable: false
        apellidoM size: 1..10, nullable: false
        fechaNac nullable: false
        telefono size:10..20
        correo size: 10..50, nullable: false, unique: true
        genero inList: ["M", "F"], nullable: true
        username size:1..10, nullable: false, unique: true
        password size:1..10, nullable: false
    }


}
