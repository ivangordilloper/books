package Plantilla

class ListaPreferenciaAutor {

    String nombre
    Date fechaCreacion = new Date()

    static hasMany = [autores: Autor]
    static belongsTo = Usuario
    static constraints = {
        nombre size: 1..20, nullable: false
    }

}
