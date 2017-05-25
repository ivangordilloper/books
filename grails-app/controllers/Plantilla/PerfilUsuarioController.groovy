package Plantilla

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])

class PerfilUsuarioController {
    def FOAFService
    static defaultAction = "usuario"
    def springSecurityService
    def AutorService
    def LibroService

    def usuario(long id) {
        //FOAFService.obtenLibros()
        def usuarioU= springSecurityService.principal
        def usuario = Usuario.findById(usuarioU.id)
        def lista = usuario.listaA
        def listaAmigos = usuario.amigos
        //def listaA = ListaPreferenciaAutor.list()
        //def li = listaA.id
         FOAFService.obtenLibrosByEmail(usuario.correo)



        //FOAFService.libros.clear()
        //FOAFService.setLibro(2, "ivan@hotmail.com");
        //FOAFService.setAmigo("ivan@hotmail.com", "Ivan Gordillo", "Gordillo", "Perez", "raid_ivan@hotmail.com")
        //ArrayList<String> uri =  FOAFService.getAmigosFOAF("ivan@hotmail.com")
        //FOAFService.setAutor(3, "raid_ivan@hotmail.com");

        //FOAFService.setAmigo("raid_ivan@hotmail.com", "Ivan Gordillo", "Gordillo", "Perez", "raid_ivan@hotmail.com")
        //ArrayList<String> uri =  FOAFService.getAmigosFOAF("raid_ivan@hotmail.com")

        def pal
        /*def libros = Libro.findAllByIdInList(librosListaFOAF)
        def autores = Autor.findAllByIdInList(autoresListaFOAF)
        */
        def libros = Libro.findAllByIdInList([1])
        def autores = Autor.findAllByIdInList([1])


        def listaLibros = usuario.listasL.collect()


        if(usuario.genero == 'F'){
            pal = "Bienvenida"
        }
        else {
            pal= "Bienvenido"
        }


        [listaA: lista, usuarioS: usuarioU, pal: pal, libros1:libros, autores1: autores, listaLibros:listaLibros, listaAmigos: listaAmigos]
    }

   /* def p(){
        def usuario = params.usuario
        def passwd = params.password
        def validar = Usuario.findByNombre("12345");
        def validarpasswd = validar.password.toString()
    }*/

    def librosCategoria(){
        def usuarioU = springSecurityService.principal
        def usuario = Usuario.findById(usuarioU.id)
        def listaLibrosFOAF =FOAFService.obtenLibrosByEmail(usuario.correo)
        def librosUsuarioFOAF
        if(listaLibrosFOAF) {
            librosUsuarioFOAF = Libro.findAllByIdInList(listaLibrosFOAF)
        }else{
            librosUsuarioFOAF = []
        }
        def libroCi = LibroService.libroToList()
        def calificaciones = CalificacionLibro.list()
        //FOAFService.setAmigo(usuario.correo,"Ivan", "Gordillo","Perez", "ivan@hotmail.com" )

        def uri= FOAFService.getAmigosFOAF(usuario.correo)
        def autores= FOAFService.obtenAutoresByEmail(usuario.correo)
        def listaAutores=[]
        autores.each {
            def subList=[]
            if(it) {
                def autor = Autor.findById(it)
                subList.push(autor)
                subList.push(autor.libros);
                listaAutores.push(subList)
            }else{

            }
        }
        def listFOAF=[]

        uri.each {
            def user=[]
            user.push(Usuario.findByCorreo(FOAFService.getEmailFromURI(it as String) as String))
            def listB = FOAFService.obtenLibrosByURI(it as String)
            if(listB) {
                user.push(Libro.findAllByIdInList(listB))
            }else{
                user.push([])
            }
            listFOAF.push(user)
        }
        [libroC: libroCi, usuarioS:usuarioU, calif : calificaciones, libroFOAF:librosUsuarioFOAF, uri:listFOAF, listaAutores:listaAutores]

    }
    def verUsuario(int id){
        def usuarioBusqueda = Usuario.findById(id)
        def usuario = springSecurityService.principal
        [usuarioBusqueda:usuarioBusqueda, usuarioS: usuario]
    }

    def update(){
        def user = springSecurityService.principal
        [user:user, usuarioS: user]
    }

    def actualizar(){

        def user = springSecurityService.principal
        def editarUsuario = Usuario.findById(user.id)
        editarUsuario.nombre = params.nombre
        editarUsuario.apellidoP = params.apellidoP
        editarUsuario.apellidoM = params.apellidoM
        editarUsuario.fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        editarUsuario.telefono = params.telefono as int
        //Bloquear que no se pueda cambiar
        //editarUsuario.username = params.nombreUsuario
        //editarUsuario.correo = params.correo
        editarUsuario.password = params.contrasenia
        //editarUsuario.genero = params.genero
        editarUsuario.save(flush:true)
        [usuarioS: user]
        redirect (controller:"perfilUsuario",view: "usuario")


    }

    def verAutor(long id){
        def usuario = springSecurityService.principal
        def editarAutor = Autor.findById(id)
        def libE = editarAutor.libros
        //def lista = ListaPreferenciaAutor.findByUsuario(usuario)
        def listas = Usuario.findById(usuario.id).listaA

        [autor:editarAutor, lista:listas, lib: libE, usuarioS: usuario]
        //[autor:editarAutor, idU:usuario]


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

    def verLibro(long id){
        def idL= id
        //def idLibro = idL.id
        def lista = LibroService.libroToList()
        def editarLibro = LibroService.libroById(idL)
        def fecha = LibroService.formatoFecha(editarLibro.fechaPub.toString())

        def opiniones = LibroService.opinionesByLibro(editarLibro)
        def usuarioL = springSecurityService.principal

        //mandarServicio
        def genero = editarLibro.generoLiterario
        def listaLibr = Libro.findAllByGeneroLiterario(genero).asList().subList(0,1)
        def autorL = editarLibro.autores
        def editarAutor = Autor.findById(autorL.id)
        def libE = AutorService.librosByAutor(editarAutor)
        def listas = Usuario.findById(usuarioL.id).listasL
        def calificaciones = CalificacionLibro.list()
        def numeroCal = calificaciones.collect().count{
            it.Libro.equals(editarLibro)
        }

        def cal2 = editarLibro.califL.calif
        def cal3 = cal2.sum()
        def promedio

        if(numeroCal>0) {
            promedio = cal3 / numeroCal
        }else{
            promedio = 0
        }
        def cuentaE

        if (promedio==0){
            cuentaE = "0"
        }
        if (promedio>= 5){
            cuentaE ="5"
        }else if(promedio>=4 && promedio<5) {
            cuentaE= "4"
        }else if(promedio>=3 && promedio<4){
            cuentaE= "3"
        }else if (promedio>= 2 && promedio <3){
            cuentaE= "2"
        }else if (promedio>=1 && promedio<2){
            cuentaE="1"
        }

        // render "${cuentaE}"

        [ editarAutor: editarAutor, cuentaE:cuentaE, libro:editarLibro, promedio: promedio, listas:listas,numeroCal: numeroCal, fecha:fecha, usuarioS: usuarioL, opiniones:opiniones, lista:lista, listaG: listaLibr, listaAI: libE]

    }
    def opinar(){
        def usuarioL = springSecurityService.principal
        def idU = usuarioL.id
        LibroService.opinarLibro(params)
        redirect (action: "verLibro", params: [id: params.idLibro])
    }

    def verListaPreferenciaLibro(long id) {
        def usuarioU = springSecurityService.principal
        def editarLista = ListaPreferenciaLibro.findById(id)
        // def editarLista = Usuario.findById(usuarioU.id).listasL
        def listaAutor = Autor.list()

        [llista: editarLista, lautor: listaAutor, usuarioS: usuarioU]

    }

    def verListaLibro(long id) {
        def usuarioU = springSecurityService.principal
        def editarLista = ListaPreferenciaLibro.findById(id)


        // def editarLista = Usuario.findById(usuarioU.id).listasL
        def listaAutor = Autor.list()

        [llista: editarLista, lautor: listaAutor, usuarioS: usuarioU]

    }

    def verListaAutor(long id) {
        def idU = springSecurityService.principal
        def editarLista = ListaPreferenciaAutor.findById(id)
        def listaAutor = Libro.list()

        [llista: editarLista, llibro: listaAutor, usuarioS: idU]

    }
}