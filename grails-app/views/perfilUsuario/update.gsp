<html>
<head>
    <title> EDITAR PERFIL </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <link rel="stylesheet" href="${resource(dir:'css', file:'slides.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'swiper.min.css')}" type="text/css" media="all"/>

    <link rel="stylesheet" href="${resource(dir:'css', file:'main.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'style-user.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'letra.css')}" type="text/css" media="all"/>
</head>

<body>
    <!-- Main -->
    <article id="main">
        <header style="padding-top: 70px!important; padding-bottom: 50px!important;">
            <h2>${user.username} edita tu perfil</h2>
        </header>
        <section class="wrapper style5" style="margin: 0px; padding: 20px;">
            <div class="inner">
                <section>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                        <g:form action="actualizar" method="post">
                            <div class="row uniform">
                                <div class="6u 6u$(xsmall)">
                                    <p style="padding: 0px; margin: 0px;">Nombre</p>
                                    <g:field type="text" name="nombre" id="nombre" value="${Plantilla.Usuario.findById(user.id).nombre}"  placeholder="Nombre(s)" required="true" maxlength="10"/>
                                    <div id="errorNombre" style="display:none; color:#FF0000;"></div>
                                </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Apellido paterno</p>
                                <g:field type="text" name="apellidoP" id="apellidoP" value="${Plantilla.Usuario.findById(user.id).apellidoP}"  placeholder="Apellido Paterno" required="true" maxlength="10"/>
                                <div id="errorApellidoP" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Apellido materno</p>
                                <g:field type="text" name="apellidoM" id="apellidoM" value="${Plantilla.Usuario.findById(user.id).apellidoM}"  placeholder="Apellido Materno" required="true" maxlength="10"/>
                                <div id="errorApellidoM" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Teléfono</p>
                                <g:field type="number" name="telefono" id="number" value="${Plantilla.Usuario.findById(user.id).telefono}"  placeholder="Teléfono" maxlength="20"/>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Fecha de nacimiento</p>
                                <g:field  type="date" name="fechaNac" id="fechaNac" required="true"/>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Apellido género</p>
                                <g:select name="genero" value="${Plantilla.Usuario.findById(user.id).genero}" from="${['M', 'F']}">
                                </g:select>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Cambiar contraseña</p>
                                <g:field type="password" name="contrasenia" id="passwd" placeholder="Contraseña" required="true" maxlength="10" />
                                <div id="errorContrasena1" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <p style="padding: 0px; margin: 0px;">Confirmar</p>
                                <g:field type="password" name="contrasenia2" id="passwd2" placeholder="Confirma Contraseña" required="true" maxlength="10" />
                                <div id="errorContrasena2" style="display:none; color:#FF0000;"></div>
                            </div>

                            <div class="12u$">
                                <ul class="actions">
                                    <li ><g:submitButton name="submit" value="Editar" class="special"/></li>
                                </ul>

                            </div>
                        </g:form>
                    </div>
                        </div>
                </section>
            </div>
        </section>
    </article>
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
<div class="modal fade" id="MSGA_03" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Alerta</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Los datos han sido actualizados de manera exitosa.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../perfilUsuario/usuario';">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
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
            var telefono = $('#telefono').val();
            var genero = $('#genero').val();
            var passwd = $('#passwd').val();
            var passwd2 = $('#passwd2').val();
            var fechaNac = $('#fechaNac').val();
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
            else{
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
            if(indicador == '4'){
                    $('#MSGA_03').modal('show');
                    return true;
            }
            else{
                $(window).scrollTop(3);
                return false;
            }
        });
    });

    $('#cancelar').onclick(function () {
        window.location('perfilUsuario/usuario');
    });
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js" async defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


</body>
</html>
