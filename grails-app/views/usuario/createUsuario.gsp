<html>
<head>
    <title> REGÍSTRATE </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="js" file="angular/angular.min.js"/>
    <g:external dir="js" file="angular/angular-messages.min.js"/>
    <g:external dir="js" file="angular/angular.js"/>


</head>
<body>
    <body ng-app="app" >
        <div id="inicio">
            <!-- Main -->
            <article id="main">
                <header>
                    <h2>Regístrate</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">
                        <section>
                            <div class="box">
                                    <h4>Regístrate</h4>
                                    <form action="crear" method="post" name="form" id="formRegister">
                                        <div class="control-group" ng-class="{true: 'error'}[submitted && form.email.$invalid]">
                                            <div class="row uniform">
                                                <div class="12u 12u$(xsmall) controls">
                                                    <input  type="text" name="nombre" id="nombre" value="" ng-model="nombre" placeholder="Nombres(s)" required="true" ng-pattern ="/^[a-zA-Z\s]*$/"/>
                                                    <span class="help-inline" ng-show="submitted && form.nombre.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.nombre.$error.pattern">El nombre no debe contener números.</span>
                                                    </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type="text" name="apellidoP" id="apellidoP" value="" ng-model="apellidoP"  placeholder="Apellido Paterno" ng-pattern ="/^[a-zA-Z\s]*$/" required="true"/>
                                                    <span class="help-inline" ng-show="submitted && form.apellidoP.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.apellidoP.$error.pattern">El Apellido Paterno no debe contener números.</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type="text" name="apellidoM" id="apellidoM" value="" ng-model="apellidoM"  placeholder="Apellido Materno" ng-pattern ="/^[a-zA-Z\s]*$/" required="true" maxlength="10"/>
                                                    <span class="help-inline" ng-show="submitted && form.apellidoM.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.apellidoM.$error.pattern">El Apellido Materno no debe contener números.</span>
                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="text" name="nombreUsuario" id="nombreUsuario" value="" ng-model="nombreUsuario" placeholder="Nombre de usuario" required="true"/>
                                                    <span class="help-inline" ng-show="submitted && form.nombreUsuario.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.nombreUsuario.$error.pattern">El Apellido Materno no debe contener números.</span>
                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="number" name="telefono" id="number" value="" ng-model="number"  placeholder="Teléfono" maxlength="20" required="true"/>
                                                    <span class="help-inline" ng-show="submitted && form.telefono.$error.required">Este campo es obligatorio</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type='date' name= "fechaNac" ng-model="fechaNac" placeholder="Fecha de Nacimiento" required="true" />
                                                    <span class="help-inline" ng-show="submitted && form.fechaNac.$error.required">Debe introducir una fecha correcta</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:select name="genero"  from="${['M', 'F']}">
                                                    </g:select>
                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="email" name="correo" id="email" ng-model="email"  placeholder="Correo Electrónico" required="true" maxlength="50"/>
                                                    <span class="help-inline" ng-show="submitted && form.correo.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.correo.$error.email">El email es invalido.</span>
                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="email" name="correo2" id="email2" ng-model="email2" placeholder="Confirma Correo Electrónico" required="true" maxlength="50"/>
                                                    <span class="help-inline" ng-show="submitted && form.correo2.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.correo2.$error.email">El email es invalido.</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type="text" name="contrasenia" id="passwd" ng-model="contrasenia" placeholder="Contraseña" required="true" maxlength="10" ng-pattern="/^(?=[^\d\W]*[\d\W])(?=[^A-Z]*[A-Z])(?=[^a-z]*[a-z])[^.\n].{5,}$/"/>
                                                    <span class="help-inline" ng-show="submitted && form.contrasenia.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.contrasenia.$error.pattern">La contraseña debe contener mayúsculas, minúsculas, números y una longitud mínima de 6.</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="password" name="contrasenia2" id="passwd2" placeholder="Confirma Contraseña" required="true" maxlength="10" />
                                                    <span class="help-inline" ng-show="submitted && form.contrasenia.$error.required">Este campo es obligatorio</span>
                                                </div>
                                                <div class="6u 1u$(xsmall) g-recaptcha" data-sitekey="6Ld4sQoUAAAAAPZzWmOrDXOoHKsY64Hdf7a8rsHS"></div>
                                                <div class="12u$">
                                                    <ul class="actions">
                                                        <li >
                                                            <button name="submit" value="Regístrate" ng-click="form.$valid" >SUB</button>
                                                            <button type="button" id="validar" ng-click="submitted = true">Validate!</button>
                                                            <a class="special" style="width: 150px; cursor: pointer;" onclick="$('#MSGC_01').modal('show');">CANCELAR</a>
                                                            <g:submitButton name="submit" value="Regístrate" class="special"  onClick="validarPasswd()" /></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                    </form>
                                    <li ><g:submitButton name="submit" value="prueba" class="special" onClick="prueba()" /></li>


                            </div>
                        </section>
                    </div>
                </section>
            </article>
        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script>
        var app = angular.module('myApp', []);
        app.controller('myCtrl', function($scope) {
            $scope.firstName = "John";
            $scope.lastName = "Doe";
        });
    </script>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker9').datetimepicker({
                    viewMode: 'years',
                    format: 'DD/MM/YYYY'
                });
            });
        </script>

        <script type="text/javascript">
            jQuery.validator.setDefaults({
                debug: true,
                success: "valid"
            });
            var form = $( '#formRegister' );
            form.validate();
            $( "#validar" ).click(function() {
                $('#MSGC_01').modal('show');
                alert( "Valid: " + form.valid() );
            });

            /*function validarPasswd() {


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
                }


            }*/
        </script>
    </body>
</body>
</html>
