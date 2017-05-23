<html>
<head>
    <title> INICIAR SESIÓN </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<body>
    <article id="main">
        <header><h2>Iniciar Sesión</h2></header>
        <section class="wrapper style5" style="padding-top: 30px; margin-top: 1px;">
            <div class="inner">
                <section>
                    <div class="box">
                        <div id="login">
                            <div class="cointainer">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <form method="post" action="/login/authenticate">
                                            <div class="row uniform">
                                            <div class="12u 12u$(xsmall)">
                                                <input type="text" name="username" id="username" required value="" placeholder="Nombre de usuario" />
                                            </div>
                                            <div class="12u 12u$(xsmall)">
                                                <input type="password" name="password" id="password" required value="" placeholder="Contraseña" />
                                            </div>
                                            <div class="12u 12u$(xsmall)">
                                            <p id="remember_me_holder">
                                                <input type="checkbox" class="chk" name="remember-me" id="remember_me" />
                                                <label for="remember_me">Recuérdame</label>
                                            </p>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6">

                                                 </div>
                                                <div class="12u$">
                                                    <g:submitButton name="submit" value="Iniciar Sesión" class="special" />
                                                    <a href="/inicio/recuperarContra" style="margin-left: 30px;">Olvidé mi contraseña</a></li>
                                                </div>
                                                <div class="col-xs-12- col-sm-6 ">
                                                  </div>
                                            </div>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </section>

            </div>
        </section>
    </article>
<div class="modal fade" data-keyboard="false" id="MSGE_01" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Error</h4>
            </div>
            <div class="modal-body">
                <p style="color: black;">El usuario y contraseña son incorrectos.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" data-keyboard="false" id="MSGE_11" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Error</h4>
            </div>
            <div class="modal-body">
                <p  style="color: black; text-align: justify">Usuario no registrado, por favor revise que haya escrito el usuario correctamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_02" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Alerta</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Bienvenido(a) <span id="nombreUsuario"></span></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" >Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Confirmación</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">¿Está seguro de que desea cancelar el inicio de sesión?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" async defer>
    function validarUsuario(usuarioP){
        var retVal;
        $.ajax({
            type: "POST",
            async: false,
            url: "<g:createLink controller="usuario" action="validarUsuarioBD" />",
            data: { usuario:usuarioP}, // parameters
            success: function (data) {
                retVal = data;
            },
            error: function () { alert("Data not deleted"); }
        });
        return retVal;
    }
    function validarPassword(usernameP,passwordP){
        var retVal;
        $.ajax({
            type: "POST",
            async: false,
            url: "<g:createLink controller="usuario" action="validarPasswordBD" />",
            data: { usuario:usernameP, password:passwordP}, // parameters
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
            var username = $('#username').val();
            var passwd = $('#password').val();
            var validateUser = validarUsuario(username);
            if(validateUser == 'true'){
                var validarPass = validarPassword(username,passwd);
                if(validarPass == 'true'){
                    $('#nombreUsuario').html(username);
                    $('#MSGA_02').modal('show');
                    return true;

                }
                else{
                    $('#MSGE_01').modal('show');
                }
            }
            else{
                $('#MSGE_11').modal('show');
                return false;
            }
            return false;
        });
    });
</script>
</div>
</body>
</html>