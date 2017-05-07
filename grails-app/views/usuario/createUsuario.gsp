<html>
<head>
    <title> REGÍSTRATE </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>

    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>

    <g:external dir="js" file="jquery.validate.js"/>
    <g:external dir="js" file="jquery.validate.min.js"/>

</head>
<body>

    <body>
        <div id="inicio">
            <!-- Main -->
            <article id="main">
                <header>
                    <g:createLink controller='book' absolute='true'/>
                    <h2>Regístrate</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">
                        <section>
                            <div class="box">
                                    <h4>Regístrate</h4>

                                    <g:uploadForm action="crear" method="post" name="form" id="formRegister">
                                        <div class="control-group" ng-class="{true: 'error'}[submitted && form.email.$invalid]">
                                            <div class="row uniform">
                                                <div class="12u 12u$(xsmall) controls" id="divNombre">
                                                    <input  type="text" name="nombre" id="nombre" value="" placeholder="Nombres(s)" required="true"/>
                                                    </div>
                                                <div class="6u 6u$(xsmall)" id="divApellidoP">
                                                    <input type="text" name="apellidoP" id="apellidoP" value=""  placeholder="Apellido Paterno" required="true"/>

                                                </div>
                                                <div class="6u 6u$(xsmall)" id="divApellidoM">
                                                    <input type="text" name="apellidoM" id="apellidoM" value="" placeholder="Apellido Materno"  maxlength="10" required="true"/>

                                                </div>
                                                <div class="12u 12u$(xsmall)" id="divUsuario">
                                                    <input type="text" name="nombreUsuario" id="nombreUsuario" value="" placeholder="Nombre de usuario" required="true"/>

                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="number" name="telefono" id="telefono" value=""  placeholder="Teléfono" maxlength="20" required="true"/>

                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type='date' name= "fechaNac" id="fechaNac"  placeholder="Fecha de Nacimiento" required="true"/>

                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:select name="genero" id="genero"  from="${['M', 'F']}">
                                                    </g:select>
                                                </div>
                                                <div class="12u 12u$(xsmall)" id="divCorreo">
                                                    <input type="email" name="correo" id="email"  placeholder="Correo Electrónico" maxlength="50" required="true"/>

                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="email" name="correo2" id="email2" placeholder="Confirma Correo Electrónico"  maxlength="50" required="true"/>

                                                </div>
                                                <div class="6u 6u$(xsmall)" div="divContrasena">
                                                    <input type="text" name="contrasenia" id="passwd"  placeholder="Contraseña" maxlength="10" required="true"/>


                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="password" name="contrasenia2" id="passwd2" placeholder="Confirma Contraseña" maxlength="10" required="true"/>

                                                </div>

                                                <div class="6u 1u$(xsmall) g-recaptcha" data-sitekey="6Ld4sQoUAAAAAPZzWmOrDXOoHKsY64Hdf7a8rsHS"></div>
                                                <div class="12u$">
                                                    <ul class="actions">
                                                        <li >
                                                            <g:submitButton name="submit" value="Regístrate" class="special"/>

                                                        <button type="button" id="cancelar" class="special">Cancelar</button></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>

                                    </g:uploadForm>


                            </div>
                        </section>
                    </div>
                </section>
            </article>
        </div>

        <!-- Scripts -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <g:external dir="js" file="bootstrap.js"/>
    <!-- Latest compiled and minified JavaScript -->
        <g:external dir="js" file="angular/angular.min.js"/>
        <g:external dir="js" file="angular/angular-messages.min.js"/>
        <g:external dir="js" file="angular/angular.js"/>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-has-warning">
                    <h4 class="modal-title">Mensaje de confirmación</h4>
                </div>
                <div class="modal-body">
                    <p>¿Está seguro de que desea cancelar el registro?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                    <button type="button" class="btn btn-warning" onclick="window.location = '../';" data-dismiss="modal">Sí</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" data-keyboard="false" id="MSGE_02" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-has-error">
                    <h4 class="modal-title">Mensaje de error</h4>
                </div>
                <div class="modal-body">
                    <p>Falta al menos un dato obligatorio para realizar la operación.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" data-keyboard="false" id="MSGE_03" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-has-error">
                    <h4 class="modal-title">Mensaje de error</h4>
                </div>
                <div class="modal-body">
                    <p>Nombre de usuario en uso, por favor escribe otro.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" data-keyboard="false" id="MSGE_07" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-has-error">
                    <h4 class="modal-title">Mensaje de error</h4>
                </div>
                <div class="modal-body">
                    <p>Las contraseñas no coinciden, por favor vuelva a escribir las contraseñas.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" data-keyboard="false" id="MSGE_071" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-has-error">
                    <h4 class="modal-title">Mensaje de error</h4>
                </div>
                <div class="modal-body">
                    <p>Los correos electrónicos no coinciden, por favor vuelva a escribirlos.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" data-keyboard="false" id="MSGE_10" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-has-error">
                    <h4 class="modal-title">Mensaje de error</h4>
                </div>
                <div class="modal-body">
                    <p>El correo electrónico ya está asociado a otra cuenta. Por favor introduzca otra direcci´on de correo electrónico.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            /*jQuery(document).ready(function($) {
                $('#cancelar').click(function () {

                });
            });*/
            jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
                $('#cancelar').click(function () {
                    $('#MSGC_01').modal('show');
                });
                $("form").submit(function() {
                    regNombres= /^([A-Z]{1}[a-zñáéíóú]+[\s]*)+$/;
                    function isNombre(str) {
                        return regNombres.test( str );
                    }
                    var nombre = $('#nombre').val();
                    var apellidoP = $('#apellidoP').val();
                    var apellidoM = $('#apellidoM').val();
                    var nombreUsuario = $('#nombreUsuario').val();
                    var telefono = $('#telefono').val();
                    var genero = $('#genero').val();
                    var fechaNac = $('#fechaNac').val();
                    var email = $('#email').val();
                    var email2 = $('#email2').val();
                    var passwd = $('#passwd').val();
                    var passwd2 = $('#passwd2').val();
                    if(!nombre.length || !apellidoP.length || !apellidoM.length || !nombreUsuario.length || !telefono.length || !fechaNac.length || !email.length || !email2.length || !passwd.length || !passwd2.length){
                        $('#MSGE_02').modal('show');
                    }
                    else{
                        if(!isNombre(nombre)) {
                            var errname = $("#divNombre");
                            errname.addClass('alert alert-danger');
                        }
                        else{
                            var errname = $("#divNombre");
                            errname.removeClass('alert alert-danger');
                            if(!isNombre(apellidoP)) {
                                var errname = $("#divApellidoP");
                                errname.addClass('alert alert-danger');
                            }
                            else{
                                var errname = $("#divApellidoP");
                                errname.removeClass('alert alert-danger');
                                if(!isNombre(apellidoP)) {
                                    var errname = $("#divApellidoM");
                                    errname.addClass('alert alert-danger');
                                }
                                else{
                                    //----Nombre de usuario validado en el sistema.
                                    if(email != email2){
                                        $('#MSGE_071').modal('show');
                                    }
                                    else{
                                        //Validar correo electornico en el sistema.
                                            if(passwd != passwd2){
                                                $('#MSGE_07').modal('show');
                                            }
                                            else{
                                                return true;
                                            }
                                    }
                                }
                            }
                        }
                    }



                    console.log(isNombre(nombre));


                    console.log(nombre);
                    console.log(apellidoP);
                    console.log(apellidoM);
                    console.log(nombreUsuario);
                    console.log(telefono);
                    console.log(genero);
                    console.log(fechaNac);
                    console.log(email);
                    console.log(email2);
                    console.log(passwd);
                    console.log(passwd2);

                    $(window).scrollTop(0);
                    return false;
                });
            });
            /*function validarPasswd() {

                alert("Error");
                return false;

                var p1 = document.getElementById("passwd").value;
                var p2 = document.getElementById("passwd2").value;
                var p3 = document.getElementById("email").value;
                var p4 = document.getElementById("email2").value;
                var espacios = false;
                var cont = 0;

                while (!espacios && (cont < p1.length)) {
                    if (p1.charAt(cont) == " ")
                        espacios = true;
                    cont++;
                }

                if (espacios) {
                    alert ("La contraseña no puede contener espacios en blanco");

                    return false;
                }
                if (p1 != p2) {
                    alert("Las contraseñas deben de coincidir");
                    return false;
                }

                if (p3 != p4) {
                    alert("Los correos electrónicos deben de coincidir");
                    return false;

                } else {

                    alert("Todo esta correcto");
                    return true;
                }}*/



        </script>
    </body>
</body>
</html>
