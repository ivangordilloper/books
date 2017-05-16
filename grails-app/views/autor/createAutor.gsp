<html>
<head>
    <title> Nuevo Autor </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
</head>
<body id="autor">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Agregar autor</h4>

                <g:uploadForm method="post" action="crear">

                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nombre" id="nombre" placeholder="Nombre" required="true" maxlength="10"/>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field  type="text" name="apellidoP" id="apellidoP" placeholder="ApellidoP" required="true" maxlength="10" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field type="text" name="apellidoM" id="apellidoM" placeholder="ApellidoM" maxlength="10" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaNac" id="fechaNac" value=""  placeholder="Fecha nacimiento" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="text" name="nacionalidad" id="nacionalidad" value=""  placeholder="Nacionalidad" maxlength="15" required="true"/>
                        </div>

                        <div class="6u 6u$(xsmall)">
                            <g:select name="genero"  value="Género" from="${['M', 'F']}">
                            </g:select>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="Género" required="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>
                        <div class="12u 12u$(xsmall)">

                                Fotografia: <input name="photo" type="file" required ="true"/>

                        </div>

                        <div class="12u 12u$(xsmall)">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Regístrar" class="special" />
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
                <h4 class="modal-title">Mensaje de confirmación</h4>
            </div>
            <div class="modal-body">
                <p>¿Está seguro de que desea cancelar el registro de autor?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../autor/read';" data-dismiss="modal">Sí</button>
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
    });
    $("form").submit(function() {


    });
</script>

</body>
</html>