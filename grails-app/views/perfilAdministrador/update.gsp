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
<!-- Scripts -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js" async defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


</body>
</html>
