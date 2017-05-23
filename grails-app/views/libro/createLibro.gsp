<html>
<head>
    <title> Nueva Libro </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
</head>
<style>
input[type=file].hidden {
    color: transparent;
}
</style>
<body>
<!-- Main -->

<section class="wrapper style5" style="padding-top: 0px; margin-top: 0px;">
    <div class="inner">
        <section>
            <div class="box">
                <h4>Agregar Libro</h4>
                <g:uploadForm method="post" action="crear">
                    <div class="row uniform">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <g:field  type="text" name="titulo" id="titulo" placeholder="Título" required="true" maxlength="50"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:select name="autores" required="true" from="${autor.nombreCompleto}"  >
                            </g:select>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:field  type="text" name="isbn" id="isbn" placeholder="ISBN" required="true" maxlength="50"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:field type="text" name="editorial" id="editorial" placeholder="Editorial" maxlength="50" required="true"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <g:field type="text" name="pais" id="editorial" placeholder="País" maxlength="50" required="true"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            Fecha de publicación:<g:field  type="date" name="fechaPub" id="fechaPub" value=""  placeholder="Fecha Publicación" required="true"/>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            Selecciona género literario:<g:select name="generoLiterario" from="${['Épico', 'Lírico', 'Dramático', 'Historia', 'Didáctico']}" required="true">
                            </g:select>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <g:field type="text" name="pais" id="subGenero" placeholder="Subgénero" maxlength="50" required="true"/>

                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <g:textArea type="text" name="resumen" id="resumen" value=""  placeholder="Resumen" maxlength="1000" required="true"/>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <input name="portada" type="file" style="color: #0A122A;" required="true"/>
                        </div>

                        <div class="col-xs-6 col-sm-4 col-md-3">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Regístrar" class="special" />
                                 </li>
                            </ul>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-md-3">
                            <ul class="actions vertical">
                                <li ><button type="button" id="cancelar" class="special">Cancelar</button></li>
                            </ul>
                        </div>
                    </div>
                </g:uploadForm>
            </div>
        </section>

    </div>
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
                    <p style="color: black; text-align: justify">¿Está seguro de que desea cancelar el registro de libro?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                    <button type="button" class="btn btn-warning" onclick="window.location = '/perfilAdministrador/administrador';" data-dismiss="modal">Sí</button>
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
                    <h4 class="modal-title">Alerta</h4>
                </div>
                <div class="modal-body">
                    <p style="color: black; text-align: justify">Los datos han sido registrados de manera exitosa.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../perfilAdministrador/administrador';">Aceptar</button>
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

    </script>


</section>

</body>
</html>