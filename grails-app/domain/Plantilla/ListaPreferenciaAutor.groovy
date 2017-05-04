package Plantilla

class ListaPreferenciaAutor {

    String nombre
    Date fechaCreacion = new Date()
    Usuario Usuario

    static constraints = {
        nombre size: 1..20, nullable: false, unique: true
    }

    static hasMany = [autores: Autor]
    static belongsTo = Usuario

}
