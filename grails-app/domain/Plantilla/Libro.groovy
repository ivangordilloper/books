package Plantilla

class Libro {
    String titulo
    String editorial
    String pais
    String resumen
    String portada
    Date fechaPub = new Date()
    String generoLiterario
    //Autor autor

    static constraints = {
        titulo size: 1..20, nullable: false
        editorial size: 1..20, nullable: false
        pais size: 1..20, blank: true, nullable: true
        resumen size: 1..100, nullable: true
        portada size: 1..100, nullable: true
        fechaPub nullable: true
        generoLiterario inList: ["Épico", "Lírico", "Dramático"], nullable: false
    }

    static belongsTo = [ListaPreferenciaLibro, Autor]
    static hasMany = [lautor: ListaPreferenciaLibro, autor: Autor]

    //static hasMany = [llibros: ListaPreferenciaLibro]
/*
    static mapping = {
        authors joinTable: [name: "mm_author_books", key: 'mm_book_id' ]
    }
    */
   // String toString() { return titulo }
}
