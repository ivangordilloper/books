package Plantilla

class CalificacionLibro {

        int calif
        Libro Libro
        Usuario Usuario

        static constraints = {
            calif nullable: true
        }

        static belongsTo = Libro

}
