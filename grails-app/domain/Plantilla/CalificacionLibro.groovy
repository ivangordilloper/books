package Plantilla

class CalificacionLibro {

        int calif
        Libro Libro

        static constraints = {
            calif nullable: true
        }

        static belongsTo = Libro

}
