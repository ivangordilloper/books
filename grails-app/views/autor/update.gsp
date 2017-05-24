<html>
<head>
    <title> Editar Autor </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<body id="autor">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Editar autor: ${pupdateA.nombreCompleto}</h4>

                <g:form method="post" action="actualizar">
                    <g:hiddenField name="idAutor" value="${pupdateA.id}" />
                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nombre" id="nombre" value="${pupdateA.nombreCompleto}" placeholder="Nombre" required="true" maxlength="1000"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaNac" id="fechaNac" value="${fecha}"  placeholder="Fecha nacimiento" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="text" name="nacionalidad" id="nacionalidad" value="${pupdateA.nacionalidad}" required="true"  placeholder="Nacionalidad" maxlength="15"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="genero"  value="${pupdateA.genero}"  from="${['M', 'F']}">
                            </g:select>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="${pupdateA.generoLiterario}" required="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Editar" class="special" />
                                    <button type="button" id="cancelar" class="special">Cancelar</button></li>
                            </ul>

                        </div>
                    </div>


                </g:form>

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
                <p>¿Está seguro de que desea cancelar la actualización de autor?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../read';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_03" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Alerta</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Los datos han sido actualizados de manera exitosa.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../../perfilAdministrador/administrador';">Aceptar</button>
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
        $('#MSGA_03').modal('show');

    });
    });
</script>

</body>
</html>