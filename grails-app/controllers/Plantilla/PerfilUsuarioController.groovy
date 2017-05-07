package Plantilla

class PerfilUsuarioController {
    def FOAFService
    static defaultAction = "usuario"

    def usuario(long id) {

        FOAFService.obtenLibros()
        def libros = FOAFService.getLibros()
        print libros
        def usuariosL = Usuario.findById(id)
        FOAFService.libros.clear()

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
       // FOAFService.setEmailAmigo("ivan@hotmail.com")
       // FOAFService.agregarAmigo("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
       // FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
        //FOAFService.setEmailAmigo("ivan2@hotmail.com")
        //FOAFService.agregarAmigo("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
    }

}
