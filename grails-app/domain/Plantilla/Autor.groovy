package Plantilla

class Autor {

    String nombreCompleto
    Date fechaNac = new Date();
    String genero
    String generoLiterario
    String nacionalidad
    String bio
    byte[] foto



    static constraints = {
        nombreCompleto maxSize: 40, nullable: false
        fechaNac nullable: false
        genero inList: ["M", "F"], nullable: true
        generoLiterario inList: ["Épico", "Lírico", "Dramático", "Historia", "Didáctica"], nullable: false
        nacionalidad maxSize: 40, nullable: true
        foto nullable: true, maxSize: 2 * 2048 * 2048
        bio nullable: true, maxSize: 2000
    }

    static belongsTo = ListaPreferenciaAutor
    static hasMany = [libros: Libro, llista: ListaPreferenciaAutor, califA: CalificacionAutor, opinA: OpinionAutor]

}
