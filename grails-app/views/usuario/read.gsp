<html>
<head>
    <title> LISTA USUARIOS </title>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <g:external dir="css" file="bootstrap-datetimepicker.css"/>    <script ></script>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="modals.css"/>
    <g:external dir="css" file="preferences.css" />
</head>
<div id="usuario">

<!-- Main -->

<div class="wrapper style5">
    <div class="inner">


        <div>
            <div class="box ">

                <h4>Usuarios de BooksCom </h4><a href="/usuario/read"><g:img dir="images" file="lupa.png" align="right" class="img-config3"/></a><a href="/usuario/createUsuario"><g:img dir="images" file="mas.png" align="right" class="img-config2"/></a>
                <br>


                <div class="table-wrapper">
                    <table class="letraC">
                        <thead>
                        <tr>
                            <th></th>
                            <th style="text-align:center;" >Nombre de usuario</th>
                            <th style="text-align:center;">Correo</th>
                            <th style="text-align:center;">Telefono</th>
                            <th style="text-align:center;" colspan="3">Acciones</th>


                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${usuarios}" var="usuario">
                            <tr>
                                <td style="padding-top: 10px"><g:img dir="images" file="usuario.png"  class="image-list2"/></td>
                                <td style="padding: 5px">${usuario.username}</td>
                                <td>${usuario.correo}</td>
                                <td>${usuario.telefono}</td>
                                <td style="text-align:center;"> <a href="${createLink(controller : 'usuario', action:'verUsuario', params: [id:usuario.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                <td style="text-align:center;"> <a href="${createLink(controller : 'usuario', action:'update', params: [id:usuario.id])}"><g:img dir="images" file="editar.png" align="right" class="image-list3" /></a></td>
                                <td style="text-align:center;"> <p class="delete" id="${usuario.id}" style="margin-top: 14px;"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></p></td>
                            </tr>
                        </g:each>

                        </tbody>
                        <tfoot>

                        </tfoot>
                    </table>
                </div>

                    </div>

</div>
            </div>
        </section>
</div>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Confirmación.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">¿Está seguro de que deseas eliminar el usuario?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning delete" id="deleteClick" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js" async defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script type="text/javascript" async defer>
    jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
        $('#cancelar').click(function () {
            $('#MSGC_01').modal('show');
        });
        $(document).on("click","p.delete",function(e){
            $("#deleteClick").attr("onclick","window.location = '../libro/delete/"+ $(this).attr("id") + "'");
            $('#MSGC_01').modal('show');
        });
    });
</script>
</body>
</html>
