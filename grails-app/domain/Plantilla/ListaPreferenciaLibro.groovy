package Plantilla

class ListaPreferenciaLibro {

    String nombre
    Date fechaCreacion = new Date()
    static belongsTo = Usuario

    static constraints = {
        nombre size: 1..20, nullable: false
    }

    static hasMany = [libros: Libro]
}
