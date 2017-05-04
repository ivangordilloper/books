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
    String rol
    //byte[] perfil

    static hasOne = [uform: Formulario]
    static hasMany = [listasL: ListaPreferenciaLibro, listasA: ListaPreferenciaAutor, amigos: Usuario]


    static constraints = {
        nombre size: 1..10, nullable: false
        apellidoP size: 1..10, nullable: false
        apellidoM size: 1..10, nullable: false
        fechaNac nullable: false
        telefono nullable:true
        correo size: 10..50, nullable: false, unique: true
        genero inList: ["M", "F"], nullable: true
        username size:1..10, nullable: false, unique: true
        password size:1..10, nullable: false
        rol inList: ["ADMINISTRADOR", "USUARIO"], nullable: false
        uform blank: true, nullable: true
        //perfil nullable: true, maxSize: 2 * 1024 * 1024

    }


}
