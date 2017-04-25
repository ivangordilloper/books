package Plantilla

class ListaPreferenciaLibro {

    String nombre
    Date fechaCreacion = new Date()


    static constraints = {
        nombre nullable: false
    }

    static hasMany = [libros: Libro]
    //static belongsTo = Usuario
}
