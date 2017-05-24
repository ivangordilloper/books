import Plantilla.Role
import Plantilla.Usuario
import Plantilla.UsuarioRole

class BootStrap {

    def init = { servletContext ->

      //  Usuario ivan = new Usuario(apellidoM: "Perez", apellidoP: "Gordillo", correo: "ivan1@ivan.com", fechaNac: new Date(), nombre: "Ivan", telefono: 555555555, genero: "M", username: "ivan1",password:"56ivgope",).save()
        Role admin = new Role(authority: "ROLE_ADMIN").save()
       // Usuario ivan2 = new Usuario(apellidoM: "Perez", apellidoP: "Gordillo", correo: "ivan2@ivan.com", fechaNac: new Date(), nombre: "Ivan", telefono: 555555555, genero: "M", username: "ivan2",password:"56ivgope",).save()
        Role user = new Role(authority: "ROLE_USER").save()
        //UsuarioRole.create(ivan2,user);
        //UsuarioRole.create(ivan,admin);

        servletContext["IPSOURCE"] = "http://localhost:8081/"

    }
    def destroy = {
    }
}
