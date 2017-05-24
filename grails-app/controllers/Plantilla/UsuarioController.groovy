package Plantilla

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured


@Secured(['permitAll'])
class UsuarioController {
    def mailService
    def springSecurityService
    def AutorService
    def LibroService
    def FOAFService
    def passwordEncoder

    def createUsuario() {
        print FOAFService.realPath()
    }
    def validarCorreoBD(){
        def email = params.correo
        def validar = Usuario.findByCorreo(email);
        if(validar){
            render true;
        }
        else{
            render false;
        }
    }
    def validarUsuarioBD(){
        def usuario = params.usuario
        def validar = Usuario.findByUsername(usuario);
        if(validar){
            render true;
        }
        else{
            render false;
        }
    }
    def validarPasswordBD(){
        def validate
        def usuario = params.usuario
        def passwd = params.password
        def validar = Usuario.findByUsername(usuario);
        def obtenerPassword = validar.password

        validate = passwordEncoder.isPasswordValid(obtenerPassword, passwd, null)
        if(validate){
            render true;
        }
        else{
            render false;
        }
    }
    def validar(){
        def token = params.token
        def validar = Usuario.findByToken(token);
        if(validar) {
            validar.setToken("Valido")
            validar.enabled = true;
            def autors = Autor.list()
            def libros = Libro.list()
            [autors:autors, email:validar.correo, libros: libros, token:"valido"]
        }else {
            [utoken:"invalido"]
            def autors = Autor.list()
            def libros = Libro.list()
            [autors:autors, libros: libros, token:"error"]
        }
    }
    def setFOAF(){

        def genero = params.generof
        def autores = [params.autor1, params.autor2, params.autor3]
        def libros = [params.libro1, params.libro2,params.libro3]
        def email = params.email
        libros.each {
            FOAFService.setLibro(it.toString().toInteger(), email)
        }
        autores.each {
            FOAFService.setAutor(it.toString().toInteger(), email)
        }
        redirect(controller: "inicio", action: "iniciarSesion")



    }
    def read(){
        def usuarioL = springSecurityService.principal
        def listaUsuario = Usuario.list()

        // def listadoPersonas = Persona.list()
        [usuarios: listaUsuario]
    }

    def verUsuario(int id){
        def usuarioBusqueda = Usuario.findById(id)
        def usuario = springSecurityService.principal
        [usuarioBusqueda:usuarioBusqueda, idU: usuario]
    }
    def update(long id){
        def editarUsuario
        if(id){
            editarUsuario = Usuario.findById(id)
        }else{
            def usuario = springSecurityService.principal
            editarUsuario = Usuario.findById(usuario.id)
        }

        def fecha = editarUsuario.fechaNac.toString()
        def fecha2 = fecha.substring(0,10)
        [user:editarUsuario, fecha:fecha2]
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
        def listaLibr = Libro.findAllByGeneroLiterario(genero)
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
        def promedio = cal3 / numeroCal
        def cuentaE

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

        [ editarAutor: editarAutor, cuentaE:cuentaE, libro:editarLibro, promedio: promedio, listas:listas,numeroCal: numeroCal, fecha:fecha, idU1: usuarioL, opiniones:opiniones, lista:lista, listaG: listaLibr, listaAI: libE]

    }

    def crear(){
        def nombre = params.nombre
        def apellidoP = params.apellidoP
        def apellidoM = params.apellidoM
        def fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        def telefono = params.telefono
        def nombreUsuario = params.nombreUsuario
        def correo = params.correo
        def contrasenia = params.contrasenia
        def genero = params.genero
        def perfil2 = params.perfil
        byte[] perfil = perfil2.getBytes()
        [perfil:perfil, apellidoM: apellidoM, apellidoP: apellidoP, contrasenia: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, nombreUsuario: nombreUsuario, telefono: telefono, genero: genero]


        def generator = {
            String alphabet, int n ->
            new Random().with {
                (1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
            }
        }
        def token = generator( (('A'..'Z')+('0'..'9')).join(), 15 )
        def username = "JayKay"
        def uTok = "${username}${token}"
       // ListaPreferenciaAutor pre= new ListaPreferenciaAutor(nombre: "Mis autores favoritos").save()

        Usuario p = new Usuario( idf: "no", perfil:perfil, apellidoM: apellidoM, apellidoP: apellidoP, password: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, username: nombreUsuario, telefono: telefono, genero: genero, token: uTok).save()
        UsuarioRole.create(p, Role.findById(2))
        ListaPreferenciaAutor la = new ListaPreferenciaAutor(nombre: "Mis autores favoritos", Usuario: p.id).save()




        mailService.sendMail {
            multipart true
            from "bookscomtt@gmail.com"
            to correo
            subject "Validación de nuevo usuario en Bookscom."
            html  view: "/email/registro", model: [pusuario: nombreUsuario, pnombre: nombre, papellidop: apellidoP, papellidoM: apellidoM, token:uTok]
            //inline 'logo', 'image/jpeg', new File('grails-app\\assets\\images\\captura2.png')
        }
        FOAFService.generaRdfUsuarioActual((String)correo, (String)nombre, (String)apellidoP, (String)apellidoM)

        //redirect (controller: "perfilUsuario", action: "usuario", params: [us:lista])

        redirect(controller: "inicio", action: "iniciarSesion")

   }

    def delete(int id){

        def editarUsuario = Usuario.findById(id)
        editarUsuario.delete()
        render (view: "read")

    }

    def actualizar(){

        def un = params.nombreUsuario
        def editarUsuario = Usuario.findByUsername(un)
        editarUsuario.nombre = params.nombre
        editarUsuario.apellidoP = params.apellidoP
        editarUsuario.apellidoM = params.apellidoM
        editarUsuario.fechaNac = Date.parse('yyyy-MM-dd', params.fechaNac)
        editarUsuario.telefono = Integer.parseInt(params.telefono)
        //Bloquear que no se pueda cambiar
        //editarUsuario.username = params.nombreUsuario
        editarUsuario.correo = params.correo
        editarUsuario.password = params.contrasenia
        editarUsuario.genero = params.genero
        editarUsuario.save()
        render (view: "verUsuario")

    }

    def agregarAmigo(long id){
        def usuarioL = springSecurityService.principal
        def idAmigo = params.idAmigo
        def usuario = Usuario.findById(usuarioL.id)
        def amigo = Usuario.findById(idAmigo)
        usuario.amigos.add(amigo)
        FOAFService.setAmigo(usuario.correo,amigo.nombre, amigo.apellidoP, amigo.apellidoM, amigo.correo )
        render("Amigo agregado")
    }
    def eliminarAmigo(long id){
        def usuarioL = springSecurityService.principal
        def idAmigo = params.idAmigo
        def usuario = Usuario.findById(usuarioL.id)
        usuario.amigos.remove(Usuario.findById(idAmigo))
        render("Amigo Eliminado")
    }



}
