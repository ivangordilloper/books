package Plantilla

class CalificacionAutor {

    int calif
    Autor Autor
    Usuario Usuario

    static constraints = {
        calif nullable: true
    }

    static belongsTo = Autor

}
