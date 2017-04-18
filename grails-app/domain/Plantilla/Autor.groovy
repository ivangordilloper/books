package Plantilla

class Autor {

    String nombre
    String apellidoP
    String apellidoM
    Date fechaNac = new Date();
    String genero
    String generoLiterario
    String nacionalidad
     // boolean publicable

    static constraints = {
        nombre size: 1..10, nullable: false
        apellidoP size: 1..10, nullable: false
        apellidoM size: 1..10, nullable: true
        fechaNac nullable: false
        genero inList: ["M", "F"], nullable: true
        generoLiterario inList: ["Épico", "Lírico", "Dramático"], nullable: false
        nacionalidad size: 1..20, nullable: true

    }
    Set libros = []
    static belongsTo = ListaPreferenciaAutor
    static hasMany = [libros: Libro, lautor: ListaPreferenciaAutor]

    static mapping = {
        libros cascade: 'all-delete-orphan'
    }


    /*static mapping = {
        libros joinTable: [name: "mm_author_books", key: 'mm_author_id']
    }*/
}
