<html>
<head>
    <title> Nuevo Autor </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<body id="autor">
<!-- Main -->

<section class="wrapper style5" style="padding-top: 0px; margin-top: 0px;">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Agregar autor</h4>

                <g:uploadForm method="post" action="crear">

                    <div class="row uniform">

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <g:field  type="text" name="nombre" id="nombre" placeholder="Nombre" required="true" maxlength="10"/>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <g:field  type="text" name="apellidoP" id="apellidoP" placeholder="Apellido Paterno" required="true" maxlength="10" />
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <g:field type="text" name="apellidoM" id="apellidoM" placeholder="Apellido Materno" maxlength="10"/>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <g:field  type="text" name="nacionalidad" id="nacionalidad" value=""  placeholder="Nacionalidad" maxlength="15" required="true"/>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <g:field  type="date" name="fechaNac" id="fechaNac" value=""  placeholder="Fecha nacimiento" required="true"/>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            Selecciona género:<g:select name="genero"  value="Género" from="${['M', 'F']}">
                            </g:select>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            Selecciona género literario:<g:select name="generoLiterario" required="true" from="${['Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <g:textArea type="text" name="bio" id="bio" value=""  placeholder="Biografía" maxlength="1000" required="true"/>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6">
<<<<<<< HEAD
                            <input name="photo" type="file" required ="true" max-size=32154/>
=======
                            <input name="photo" type="file" id="photo" required ="true"/>
>>>>>>> f406aa7de64f4f9c4f2a21135153116e73a9bb15

                        </div>


                        <div class="col-xs-6 col-sm-4 col-md-3">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Regístrar" class="special" required="true"/>
                                </li>
                            </ul>

                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3">
                            <ul class="actions vertical">
                                <li >
                                    <button type="button" id="cancelar" class="special">Cancelar</button></li>
                            </ul>

                        </div>
                    </div>


                </g:uploadForm>

            </div>
        </section>

    </div>


</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

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
                <p style="color: black; text-align: justify">¿Está seguro de que desea cancelar el registro de autor?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../autor/read';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_031" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Los datos han sido registrados de manera exitosa.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js" async defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script type="text/javascript" async defer>
    jQuery(document).ready(function($) {<!--from  w w  w.java2s . c o m-->
        $('#cancelar').click(function () {
            $('#MSGC_01').modal('show');
        });
    $("form").submit(function() {
        $('#MSGA_031').modal('show');
        return true;

    });
    });

    $('#photo').bind('change', function() {
        if(this.files[0].size/1024>1000) {
            alert("Imagen muy grande");
            disable();
        }else{
            enable();
        }
    });

    function disable() {
        $(':input[type="submit"]').prop('disabled', true);

    }
    function enable() {
        $(':input[type="submit"]').prop('disabled', false);

    }
</script>

</body>
</html>