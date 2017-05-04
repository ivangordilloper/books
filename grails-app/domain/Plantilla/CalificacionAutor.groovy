package Plantilla

class CalificacionAutor {

    int calif
    Autor Autor

    static constraints = {
        calif nullable: true
    }

    static belongsTo = Autor

}
