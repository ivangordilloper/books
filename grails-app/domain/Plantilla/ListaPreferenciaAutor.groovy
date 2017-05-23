package Plantilla

class ListaPreferenciaAutor {

    String nombre
    Date fechaCreacion = new Date()
    Usuario Usuario

    static constraints = {
        nombre size: 255, nullable: false
    }

    static hasMany = [autores: Autor]
//    static belongsTo = Usuario

}
