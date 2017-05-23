<html>
<head>
    <title> REGÍSTRATE </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <g:external dir="css" file="bootstrap-datetimepicker.css"/>    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<body>
<div id="inicio">
    <!-- Main -->
    <article id="main">
        <header>
            <h2>Regístrate</h2>
        </header>
        <section class="wrapper style5" style="padding-top: 0px; margin-top: 0px;">
            <div class="inner">
                <section>
                    <div class="box">
                        <h4>Regístrate</h4>

                        <g:uploadForm action="crear" method="post" name="form" id="formRegister">
                            <div class="control-group" ng-class="{true: 'error'}[submitted && form.email.$invalid]">
                                <div class="row uniform">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input class="inputNombre" type="text"  name="nombre" id="nombre" value="" placeholder="Nombres(s)" required="true" minlength="2" maxlength="20"/>
                                        <div id="errorNombre" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <input class="inputApellidoP" type="text" name="apellidoP" id="apellidoP" value=""  placeholder="Apellido Paterno" maxlength="20" required="true"/>
                                        <div id="errorApellidoP" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6" >
                                        <input class="inputApellidoM" type="text" name="apellidoM" id="apellidoM" value="" placeholder="Apellido Materno"  maxlength="20" required="true"/>
                                        <div id="errorApellidoM" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <input class="inputUsuario" type="text" name="nombreUsuario" id="nombreUsuario" value="" placeholder="Nombre de usuario" required="true" maxlength="10"/>
                                        <div id="errorUsuario" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <input type="number" name="telefono" id="telefono" value=""  placeholder="Teléfono" maxlength="20" required="true"/>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        Fecha de nacimiento:<g:field  type="date" name="fechaNac" id="fechaNac" required="true"/>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        Género: <g:select name="genero" id="genero"  from="${['M', 'F']}">
                                        </g:select>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <input class="inputEmail" type="email" name="correo" id="email"  placeholder="Correo Electrónico" maxlength="50" required="true"/>
                                        <div id="errorEmail1" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <input class="inputEmail2" type="email" name="correo2" id="email2" placeholder="Confirma Correo Electrónico"  maxlength="50" required="true"/>
                                        <div id="errorEmail2" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <input class="inputContrasena1" type="password" name="contrasenia" id="passwd"  placeholder="Contraseña" maxlength="10" required="true"/>
                                        <div id="errorContrasena1" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <g:field class="inputContrasena2" type="password" name="contrasenia2" id="passwd2" placeholder="Confirma Contraseña" maxlength="10" required="true"/>
                                        <div id="errorContrasena2" style="display:none; color:#FF0000;"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        Foto de perfil:<input name="perfil" required ="true" type="file" style="color: #0A122A;" width="300" height="300"/>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="6u 1u$(xsmall) g-recaptcha" data-sitekey="6Ld4sQoUAAAAAPZzWmOrDXOoHKsY64Hdf7a8rsHS"></div>
                                   </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3">
                                        <ul class="actions">
                                            <li>
                                                <g:submitButton name="submit" value="Regístrate" class="special"/>
                                          </li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3">
                                        <ul class="actions">
                                            <li>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Confirmación.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">¿Está seguro de que desea cancelar el registro?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" data-keyboard="false" id="MSGE_02" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Error.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Falta al menos un dato obligatorio para realizar la operación.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" data-keyboard="false" id="MSGE_03" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Error.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Nombre de usuario en uso, por favor escribe otro.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_10" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Error.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">El correo electrónico ya está asociado a otra cuenta. Por favor introduzca otra dirección de correo electrónico.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_05" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Alerta.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Se te enviará un enlace de validación al correo electrónico proporcionado.  </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js" async defer></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <script type="text/javascript" async defer>
        function validarCorreoBD(email){
            var retVal;
            $.ajax({
                type: "POST",
                async: false,
                url: "<g:createLink controller="usuario" action="validarCorreoBD" />",
                data: { correo: email }, // parameters
                success: function (data) {
                    retVal = data;
                },
                error: function () {  }
            });
            return retVal;
        }
        function validarUsuarioBD(usuarioP){
            var retVal;
            $.ajax({
                type: "POST",
                async: false,
                url: "<g:createLink controller="usuario" action="validarUsuarioBD" />",
                data: { usuario:usuarioP}, // parameters
                success: function (data) {
                    retVal = data;
                },
                error: function () {  }
            });
            return retVal;
        }
        jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
            $(function () {
                $('#datetimepicker9').datetimepicker({
                    viewMode: 'years',
                    format: 'YYYY-MM-DD'
                });
            });
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
                var indicador = 0;
                if(!isNombre(nombre)) {
                    $('#errorNombre').show();
                    $('#errorNombre').html("El formato del campo nombre es incorrecto.");
                    $('.inputNombre').attr('style','border:1px solid #ff0000');
                }
                else {
                    indicador++;
                    $('.inputNombre').removeAttr('style');
                    $('#errorNombre').hide();
                }
                if(!isNombre(apellidoP)) {
                    $('#errorApellidoP').show();
                    $('#errorApellidoP').html("El formato del campo apellido paterno es incorrecto.");
                    $('.inputApellidoP').attr('style','border:1px solid #ff0000');
                }
                else {
                    indicador++;
                    $('.inputApellidoP').removeAttr('style');
                    $('#errorApellidoP').hide();
                }
                if(!isNombre(apellidoM)) {
                    $('#errorApellidoM').show();
                    $('#errorApellidoM').html("El formato del campo apellido materno es incorrecto.");
                    $('.inputApellidoM').attr('style','border:1px solid #ff0000');
                }
                else {
                    indicador++;
                    $('.inputApellidoM').removeAttr('style');
                    $('#errorApellidoM').hide();
                }
                //----Nombre de usuario validado en el sistema.
                if(email != email2){
                    $('#errorEmail1').show();
                    $('#errorEmail2').show();
                    $('#errorEmail1').html("Correos proporcionados no coinciden");
                    $('#errorEmail2').html("Correos proporcionados no coinciden");
                    $('.inputEmail').attr('style','border:1px solid #ff0000');
                    $('.inputEmail2').attr('style','border:1px solid #ff0000');
                }
                else {
                    indicador++;
                    $('.inputEmail').removeAttr('style');
                    $('.inputEmail2').removeAttr('style');
                    $('#errorEmail1').hide();
                    $('#errorEmail2').hide();
                }
                //Validar correo electornico en el sistema.
                if(passwd != passwd2){
                    $('.inputContrasena1').attr('style','border:1px solid #ff0000');
                    $('.inputContrasena2').attr('style','border:1px solid #ff0000');
                    $('#errorContrasena1').show();
                    $('#errorContrasena2').show();
                    $('#errorContrasena1').html("Contraseñas proporcionadas no coinciden");
                    $('#errorContrasena2').html("Contraseñas proporcionadas no coinciden");
                }
                else{
                    indicador++;
                    $('.inputContrasena1').removeAttr('style');
                    $('.inputContrasena2').removeAttr('style');
                    $('#errorContrasena1').hide();
                    $('#errorContrasena2').hide();
                    //return true;
                }
                if(indicador == '5'){
                    var validar = validarUsuarioBD(nombreUsuario);
                    var validar2 = validarCorreoBD(email);
                    if(validar == 'false'){
                        if(validar2 == 'false'){
                            $('#MSGA_05').modal('show');
                            return true;
                        }
                        else{
                            $('#MSGE_10').modal('show');
                            return false;
                        }
                    }
                    else{
                        $('#MSGE_03').modal('show');
                        return false;
                    }
                }
                else{
                    $(window).scrollTop(3);
                    return false;
                }
            });
        });
    </script>
</div>
</body>
</html>