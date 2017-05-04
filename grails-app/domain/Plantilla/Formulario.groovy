package Plantilla

class Formulario {

    String generoFav
    String autorFav1
    String autorFav2
    String autorFav3
    String libroFav1
    String libroFav2
    String libroFav3
    Usuario Usuario

    static constraints = {
        generoFav nullable: true
        autorFav1 nullable: true
        autorFav2 nullable: true
        autorFav3 nullable: true
        libroFav1 nullable: true
        libroFav2 nullable: true
        libroFav3 nullable: true

    }


}
