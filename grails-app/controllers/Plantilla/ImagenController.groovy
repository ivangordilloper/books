package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class PhotoUploadCommand{
    byte[] photo
    String loginId
}

@Secured(['permitAll'])

class ImagenController {

  /*  def upload(PhotoUploadCommand puc){
        def autor = Autor.findById(puc.loginId)
        autor.foto = puc.photo
        redirect controller: "autor", action:"createAutor", id: puc.loginId
    }
*/
    def upload(){
        def ife= params.loginId
        def ide =  Autor.findById(ife)
        def shi = params.photo
        ide.foto = shi.getBytes()
        redirect controller: "autor", action:"read"
    }
    def form(){
        //pasar a traves de un un upload form
        [autorLista: Autor.list()]
    }


    def renderImageA(long  id) {
        def user = Autor.findById(id)
        if (user?.foto) {
            response.setContentLength(user.foto.size())
            response.outputStream.write(user.foto)
        } else {
            response.sendError(404)
        }
    }

    def renderImageU(long  id) {
        def user = Usuario.findById(id)
        if (user?.perfil) {
            response.setContentLength(user.perfil.size())
            response.outputStream.write(user.perfil)
        } else {
            response.sendError(404)
        }
    }

    def renderImageL(long  id) {
        def user = Libro.findById(id)
        if (user?.portada) {
            response.setContentLength(user.portada.size())
            response.outputStream.write(user.portada)
        } else {
            response.sendError(404)
        }
    }

}
