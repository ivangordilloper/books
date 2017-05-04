package Plantilla

class OpinionLibro {
    String opinionL
    Libro Libro
    Usuario Usuario

    static constraints = {
        opinionL nullable: true
    }

    static belongsTo = [Libro, Usuario]
}
