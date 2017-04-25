package Plantilla

class Libro {
    String titulo
    String editorial
    String pais
    String resumen
    byte[] portada
    Date fechaPub = new Date()
    String generoLiterario
    //Autor autor

    static constraints = {
        titulo size: 1..20, nullable: false
        editorial size: 1..20, nullable: false
        pais size: 1..20, blank: true, nullable: true
        resumen size: 1..100, nullable: true
        fechaPub nullable: true
        portada nullable: true, maxSize: 2 * 1024 * 1024
        generoLiterario inList: ["Épico", "Lírico", "Dramático"], nullable: false
    }


    // static belongsTo = [ListaPreferenciaLibro, Autor]
    static belongsTo = [Autor, ListaPreferenciaLibro]
    static hasMany = [autores: Autor, llista: ListaPreferenciaLibro]


/*
    static mapping = {
        authors joinTable: [name: "mm_author_books", key: 'mm_book_id' ]
    }*/
   /* static mapping = {
        autor cascade: 'all-delete-orphan'
    }
    */
}
