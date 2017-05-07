package Plantilla

class PerfilUsuarioController {
    def FOAFService
    static defaultAction = "usuario"

    def usuario(long id) {

        FOAFService.obtenDocumentos()
        def usuariosL = Usuario.findById(id)

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
        FOAFService.obtenDocumentos()
        print FOAFService.getRetorno()
//
       //FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
       // FOAFService.setEmailAmigo("ivan@hotmail.com")
       // FOAFService.agregarAmigo("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
       // FOAFService.setNombreCompletoAmigo("Ivan Gordillo Perez")
        //FOAFService.setEmailAmigo("ivan2@hotmail.com")
        //FOAFService.agregarAmigo("raid_ivan@hotmail.com","Ivan","Gordillo","Perez")
    }

}
