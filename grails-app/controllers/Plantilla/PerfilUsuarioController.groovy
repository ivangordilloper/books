package Plantilla

class PerfilUsuarioController {
    def FOAFService
    static defaultAction = "usuario"

    def usuario(long id) {
        //FOAFService.obtenLibros()
        //def libros = FOAFService.obtenAutoresByEmail("raid_ivan@hotmail.com")
        //print libros
        def usuariosL = Usuario.findById(id)
        //FOAFService.libros.clear()
        //FOAFService.setLibro(2, "raid_ivan@hotmail.com");
        //FOAFService.setLibro(2, "raid_ivan@hotmail.com");
        //FOAFService.setAutor(3, "raid_ivan@hotmail.com");

        //FOAFService.setAmigo("raid_ivan@hotmail.com", "Ivan Gordillo", "Gordillo", "Perez", "raid_ivan@hotmail.com")
        //ArrayList<String> uri =  FOAFService.getAmigosFOAF("raid_ivan@hotmail.com")
        //print uri
        def pal
        if(usuariosL.genero == 'F'){
            pal = "Bienvenida"
        }
        else {
            pal= "Bienvenido"
        }
        [usuarioS: usuariosL, pal: pal]
    }

    def FOAF(){
        //FOAFService.generaRdfUsuarioActual("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
        //FOAFService.generaRdfUsuarioActual("ivan@hotmail.com","Ivan","Gordillo","Perez")
        //FOAFService.generaRdfUsuarioActual("ivan2@hotmail.com","Ivan","Gordillo","Perez")

//
       //FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
       // FOAFService.setEmailAmigo("raid_ivan@hotmail.com")
       // FOAFService.agregarAmigo("ivan@hotmail.com","Ivan","Gordillo","Perez")
       // FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
        //FOAFService.setEmailAmigo("ivan2@hotmail.com")
        //FOAFService.agregarAmigo("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
    }

}
