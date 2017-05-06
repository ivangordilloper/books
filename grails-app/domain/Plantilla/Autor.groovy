package Plantilla

class Autor {

    String nombreCompleto
    Date fechaNac = new Date();
    String genero
    String generoLiterario
    String nacionalidad
    byte[] foto

    static constraints = {
        nombreCompleto size: 1..60, nullable: false
        fechaNac nullable: false
        genero inList: ["M", "F"], nullable: true
        generoLiterario inList: ["Épico", "Lírico", "Dramático"], nullable: false
        nacionalidad size: 1..20, nullable: true
        foto nullable: true, maxSize: 2 * 1024 * 1024

    }

    static belongsTo = ListaPreferenciaAutor
    static hasMany = [libros: Libro, llista: ListaPreferenciaAutor, califA: CalificacionAutor, opinA: OpinionAutor]

}
