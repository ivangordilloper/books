package Plantilla

class Libro {
    String titulo
    String isbn
    String editorial
    String pais
    String resumen
    byte[] portada
    String subGenero
    Date fechaPub = new Date()
    String generoLiterario

    static constraints = {
        titulo maxSize: 100, nullable: false
        editorial maxSize: 100, nullable: false
        pais blank: true, nullable: true
        resumen maxSize: 2000, nullable: true
        fechaPub nullable: true
        portada nullable: true, maxSize: 2 * 1024 * 1024
        generoLiterario inList: ["Épico", "Lírico", "Dramático", "Historia", "Didáctica"], nullable: false
        isbn maxSize: 40, nullable: true
        subGenero nullable: true
    }

    static belongsTo = [Autor, ListaPreferenciaLibro]
    static hasMany = [autores: Autor, llista: ListaPreferenciaLibro, califL: CalificacionLibro, opinL: OpinionLibro]


}
