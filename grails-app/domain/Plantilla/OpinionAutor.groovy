package Plantilla

class OpinionAutor {
    String opinionA
    Autor Autor
    Usuario Usuario

    static constraints = {
        opinionA nullable: true
    }

    static belongsTo = [Autor, Usuario]
}
