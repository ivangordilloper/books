package Plantilla

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured(['permitAll'])

class AutorController{

    def springSecurityService
    def AutorService
    def createAutor() {
        def usuarioU= springSecurityService.principal
        [idU: usuarioU]

    }
    def validar(){
        def autor = AutorService.autorToList()
        [autor: autor]
    }

    def verCatalogoAutor(){
        def usuarioU= springSecurityService.principal
        def listaAutor = Autor.list()
        [autorC: listaAutor, idU: usuarioU]

    }
    def read(long id) {
        def usuarioU= springSecurityService.principal
        def listaAutor = AutorService.autorToList()
        [preadA: listaAutor, idU: usuarioU]
    }

    def update(int id){
        def editarAutor = AutorService.buscarAutorId(id)
        def fecha = AutorService.formatoFecha(editarAutor.fechaNac.toString())
        [pupdateA:editarAutor, fecha:fecha]
    }

    def crear() {
        AutorService.createAutor(params)
        redirect(action: "read")
    }
    def verAutor(long id){
        def usuario = springSecurityService.principal
        Autor editarAutor = Autor.findById(id)
        def fecha = editarAutor.fechaNac.toString()
        def libE = AutorService.librosByAutor(editarAutor)
        [autor:editarAutor, fecha:fecha, lib: libE, idU:usuario]

    }

    def delete(int id){
        AutorService.deleteAutor(id)
        redirect (action: "read")

    }

    def actualizar(){
        AutorService.editarAutor(params)
        redirect (action: "read")
    }
}
