<html>
<head>
    <title> Edita libro: ${libro.titulo} </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<body id="libro">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Editar Libro</h4>

                <g:uploadForm method="post" action="actualizar">
                    <g:hiddenField name="idLibro" value="${libro.id}" />
                    <div class="row uniform">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:field  type="text" name="titulo" id="titulo" value = "${libro.titulo}" placeholder="Título" required="true" maxlength="50"/>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:select name="autores" required="true" from="${autorl.nombreCompleto}"  >
                            </g:select>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:field  type="text" name="isbn" id="isbn" value ="${libro.isbn}" placeholder="ISBN" required="true" maxlength="50"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:field type="text" name="editorial" id="editorial" value="${libro.editorial}" placeholder="Editorial" maxlength="50" required="true"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            Selecciona género literario:<g:select name="pais" from="${['Épico', 'Lírico', 'Dramático', 'Historia', 'Didáctico']}" value="${libro.generoLiterario}" required="true">
                            </g:select>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            Fecha de publicación:<g:field  type="date" name="fechaPub" id="fechaPub" value="${libro.fechaPub}"  placeholder="Fecha Publicación" required="true"/>
                        </div>







                        <div class="6u 12u$(xsmall)">
                            <g:field type="text" name="editorial" id="editorial"  value="${libro.editorial}" placeholder="Editorial" maxlength="20" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field type="text" name="pais" id="pais" value="${libro.pais}"  placeholder="País" maxlength="20" required="true"/>
                        </div>

                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaPub" id="fechaPub" value="${fecha}"  placeholder="Fecha Publicación" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="${libro.generoLiterario}" requiered="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:field type="text" name="resumen" id="resumen" value="${libro.resumen}"  placeholder="Resumen" maxlength="100" required="true"/>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            Portada: <input name="portada"  type="file" required="true"/>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Editar" class="special" />
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
                <p>¿Está seguro de que desea cancelar la actualización de libro?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../read';" data-dismiss="modal">Sí</button>
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