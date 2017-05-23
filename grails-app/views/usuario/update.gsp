<html>
<head>
    <title> EDITAR PERFIL </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <g:external dir="css" file="main.css"/>
</head>

<body>
<div id="inicio">
    <!-- Main -->
    <article id="main">
        <header>
            <h2>${user.username} edita tu perfil</h2>
        </header>
        <section class="wrapper style5">
            <div class="inner">
                <section>
                    <div class="box">
                        <h4>Editar perfil</h4>

                        <g:form action="actualizar" method="post" name="formulario" id="formulario" value="${user.id}">
                            <div class="row uniform">
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="text" name="nombre" id="nombre" value="${user.nombre}"  placeholder="Nombre(s)" required="true" maxlength="10"/>
                                    <div id="errorNombre" style="display:none; color:#FF0000;"></div>
                                </div>
                            <div class="6u 12u$(xsmall)">
                                <g:field type="text" name="apellidoP" id="apellidoP" value="${user.apellidoP}"  placeholder="Apellido Paterno" required="true" maxlength="10"/>
                                <div id="errorApellidoP" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 12u$(xsmall)">
                                <g:field type="text" name="apellidoM" id="apellidoM" value="${user.apellidoM}"  placeholder="Apellido Materno" required="true" maxlength="10"/>
                                <div id="errorApellidoM" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <g:field type="text" name="nombreUsuario"  id="nombreUsuario" value="${user.username}"  placeholder="Nombre de usuario" required="true"/>
                                <div id="errorUsuario" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <g:field type="number" name="telefono" id="number" value="${user.telefono}"  placeholder="Teléfono" maxlength="20"/>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <div class="6u 6u$(xsmall)">
                                    <div class='input-group date' id='datetimepicker9'>
                                        <input type='text' class="form-control" name= "fechaNac" id="fechaNac" required="true"/>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar">
                                            </span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="6u 6u$(xMedium)">
                                <g:select name="genero" value="${user.genero}" from="${['M', 'F']}">
                                </g:select>
                            </div>
                            <div class="12u 12u$(xsmall)">
                                <g:field type="email" name="correo" id="email"  value="${user.correo}" placeholder="Correo Electrónico" required="true" maxlength="50"/>
                                <div id="errorEmail1" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <g:field type="password" name="contrasenia" id="passwd" placeholder="Contraseña" required="true" maxlength="10" />
                                <div id="errorContrasena1" style="display:none; color:#FF0000;"></div>
                            </div>
                            <div class="6u 6u$(xsmall)">
                                <g:field type="password" name="contrasenia2" id="passwd2" placeholder="Confirma Contraseña" required="true" maxlength="10" />
                                <div id="errorContrasena2" style="display:none; color:#FF0000;"></div>
                            </div>

                            <div class="12u$">
                                <ul class="actions">
                                    <li ><g:submitButton name="submit" value="Regístrate" class="special"/>
                                        <button type="button" id="cancelar" onclick="window.location.replace('/perfilUsuario/usuario')" class="special">Cancelar</button></li>
                                </ul>

                            </div>
                        </g:form>
                    </div>
                </section>
            </div>
        </section>
    </article>
</div>
</div>
<!-- Scripts -->


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
            if(indicador == '5'){
                var validar = validarUsuarioBD(nombreUsuario);
                var validar2 = validarCorreoBD(email);
                alert(validar);
                alert(validar2);
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

    $('#cancelar').onclick(function () {
        window.location('perfilUsuario/usuario');
    });
</script>

</body>
</html>
