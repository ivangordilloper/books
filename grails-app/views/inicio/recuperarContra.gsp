<html>
<head>
    <title> RECUPERAR </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<body>
<div id="inicio">

    <article id="main">
        <header>
            <h2> Recuperar contraseña</h2>

        </header>
        <section class="wrapper style5">
            <div class="inner">


                <section>
                    <div id="login">
                            <Form action="recuperarContrasena" method="post">
                                <div class="row uniform">
                                    <div class="col-md-6 col-md-offset-3">

                                        <h4>Escribe tu correo electrónico.</h4>
                                    <div class="12u 12u$(xsmall)" id="divCorreo" style="padding-top: 10px; padding-bottom: 10px">
                                        <input type="email" name="correo" id="email"  placeholder="Correo Electrónico" maxlength="50" required="true"/>

                                    </div>
                                        <br>

                                    <div class="12u$(xsmal)">
                                        <ul class="actions">
                                            <li >  <g:submitButton name="submit" value="Enviar correo" class="special" />
                                                <button type="button" id="cancelar" class="special" style="width: 255px;">Cancelar</button></li>
                                        </ul>
                                    </div>
                                </div>
                                </div>


                            </form>
    </div>

                </section>

            </div>
        </section>
    </article>


</div>
<div class="modal fade" data-keyboard="false" id="MSGE_12" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Correo electrónico no registrado en el sistema.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_04" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Se ha enviado un correo electrónico con su nueva contraseña. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Mensaje de confirmación</h4>
            </div>
            <div class="modal-body">
                <p>¿Está seguro de que desea cancelar la recuperación de la contraseña?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../inicio/iniciarSesion/';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>
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
            error: function () { }
        });
        return retVal;
    }
    jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
        $('#cancelar').click(function () {
            $('#MSGC_01').modal('show');
        });
        $("form").submit(function() {
            var correo = $('#email').val();
            var validateCorreo = validarCorreoBD(correo);
            if(validateCorreo == 'true'){
                $('#MSGA_04').modal('show');
                return true;
            }
            else{
                $('#MSGE_12').modal('show');
                return false;
            }
        });
    });
</script>

</body>
</html>