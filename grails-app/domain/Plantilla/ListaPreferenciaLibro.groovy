package Plantilla

class ListaPreferenciaLibro {

    String nombre
    Date fechaCreacion = new Date()
    Usuario Usuario

    static constraints = {
        nombre nullable: false, unique: true
    }

    static hasMany = [libros: Libro]

}
