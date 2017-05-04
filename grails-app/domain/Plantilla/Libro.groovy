package Plantilla

class Libro {
    String titulo
    String isbn
    String editorial
    String pais
    String resumen
    byte[] portada
    Date fechaPub = new Date()
    String generoLiterario

    static constraints = {
        titulo size: 1..20, nullable: false
        editorial size: 1..20, nullable: false
        pais size: 1..20, blank: true, nullable: true
        resumen size: 1..100, nullable: true
        fechaPub nullable: true
        portada nullable: true, maxSize: 2 * 1024 * 1024
        generoLiterario inList: ["Épico", "Lírico", "Dramático"], nullable: false
        isbn nullable: true
    }

    static belongsTo = [Autor, ListaPreferenciaLibro]
    static hasMany = [autores: Autor, llista: ListaPreferenciaLibro, califL: CalificacionLibro, opinL: OpinionLibro]


}
