<html>
<head>
    <title> REGÍSTRATE </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <g:external dir="css" file="main.css"/>



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
                                    <g:uploadForm action="crear" method="post" name="form" id="formRegister">
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
                                                    <input type="text" name="nombreUsuario" id="nombreUsuario" value="" ng-model="nombreUsuario" placeholder="Nombre de Usuario" required="true"/>
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
                                                <div class="6u 6u$(xsmall)">
                                                    <input type="email" name="correo" id="email" ng-model="email"  placeholder="Correo Electrónico" required="true" maxlength="50"/>
                                                    <span class="help-inline" ng-show="submitted && form.correo.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.correo.$error.email">El email es invalido.</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type="email" name="correo2" id="email2" ng-model="email2" placeholder="Confirma Correo Electrónico" required="true" maxlength="50"/>
                                                    <span class="help-inline" ng-show="submitted && form.correo2.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.correo2.$error.email">El email es invalido.</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <input type="password" name="contrasenia" id="passwd" ng-model="contrasenia" placeholder="Contraseña" required="true" maxlength="10" ng-pattern="/^(?=[^\d\W]*[\d\W])(?=[^A-Z]*[A-Z])(?=[^a-z]*[a-z])[^.\n].{5,}$/"/>
                                                    <span class="help-inline" ng-show="submitted && form.contrasenia.$error.required">Este campo es obligatorio</span>
                                                    <span class="help-inline" ng-show="submitted && form.contrasenia.$error.pattern">La contraseña debe contener mayúsculas, minúsculas, números y una longitud mínima de 6.</span>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="password" name="contrasenia2" id="passwd2" placeholder="Confirma Contraseña" required="true" maxlength="10" />
                                                    <span class="help-inline" ng-show="submitted && form.contrasenia.$error.required">Este campo es obligatorio</span>
                                                </div>
                                                <div class="12u 12u$(xsmall)">
                                                    <g:field type="text" name="generof" id="generof" placeholder="Género Literario Favorito" required="true" />
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="text" name="autor1" id="autor1" placeholder="Autor Favorito 1"/>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="text" name="autor2" id="autor2" placeholder="Autor Favorito 2"/>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="text" name="autor3" id="autor3" placeholder="Autor Favorito 3"/>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="text" name="libro1" id="libro1" placeholder="Libro Favorito 1"/>
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="text" name="libro2" id="libro2" placeholder="Libro Favorito 2" />
                                                </div>
                                                <div class="6u 6u$(xsmall)">
                                                    <g:field type="text" name="libro3" id="libro3" placeholder="Libro Favorito 3"/>
                                                </div>
                                                <div class="6u 1u$(xsmall) g-recaptcha" data-sitekey="6Ld4sQoUAAAAAPZzWmOrDXOoHKsY64Hdf7a8rsHS"></div>
                                                <div class="12u$">
                                                    <ul class="actions">
                                                        <li >
                                                            <button name="submit" value="Regístrate" ng-click="form.$valid" >SUB</button>
                                                            <button type="button" id="validar" ng-click="submitted = true">Validate!</button>
                                                            <a class="special" style="width: 150px; cursor: pointer;" onclick="error()">CANCELAR</a>
                                                            <g:submitButton name="submit" value="Regístrate" class="special"  onClick="validarPasswd()" /></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                    </g:uploadForm>
                                    <li ><g:submitButton name="submit" value="prueba" class="special" onClick="prueba()" /></li>


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

    <script>
        var app = angular.module('myApp', []);
        app.controller('myCtrl', function($scope) {
            $scope.firstName = "John";
            $scope.lastName = "Doe";
        });
    </script>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">

            $( "#validar" ).click(function() {
                $('#MSGC_01').modal('show');
                alert( "Valid: " + form.valid() );
            });
            function error() {
                jQuery(document).ready(function ($) {
                    $('#myModal').modal('toggle');
                });
            }


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
