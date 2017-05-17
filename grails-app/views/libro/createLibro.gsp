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
<body id="libro">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">
        <section>
            <div class="box">
                <h4>Agregar Libro</h4>
                <g:uploadForm method="post" action="crear">
                    <div class="row uniform">
                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="titulo" id="titulo" placeholder="Título" required="true" maxlength="20"/>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:select name="autores" required="true"   from="${autor.nombreCompleto}"  >
                            </g:select>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field type="text" name="editorial" id="editorial" placeholder="Editorial" maxlength="20" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field type="text" name="pais" id="pais" value=""  placeholder="País" maxlength="20" required="true"/>
                        </div>

                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaPub" id="fechaPub" value=""  placeholder="Fecha Publicación" required="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="Género literario" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}" required="true">
                            </g:select>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:textArea type="text" name="resumen" id="resumen" value=""  placeholder="Resumen" maxlength="100" required="true"/>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            Portada: <input name="portada" type="file" required="true"/>
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
                    <p>¿Está seguro de que desea cancelar el registro de libro?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                    <button type="button" class="btn btn-warning" onclick="window.location = '../libro/read';" data-dismiss="modal">Sí</button>
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
                    <p>Los datos han sido actualizados de manera exitosa.</p>
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

    </script>


</section>

</body>
</html>