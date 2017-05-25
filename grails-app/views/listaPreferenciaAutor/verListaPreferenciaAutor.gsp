<html>
<head>
    <title> Bookscom | Lista Autores</title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="preferences.css" />
    <g:external dir="css" file="modals.css"/>
</head>
<body>
<article id="main" >
    <header style="padding-top: 70px!important; padding-bottom: 50px!important;"><h2>${llista.nombre}</h2><p>${llista.usuarioId}</p></header>
</article>
<div id="autor" style="padding: 0px; margin: 0px;">

    <!-- Main -->

    <div class="wrapper style5" style="padding: 40px; margin: 0px;">
        <div class="inner" >

            <div>
                <div class="box ">

                    <div class="table-wrapper">
                        <table class="letraC">
                            <thead>
                            <tr>

                                <th></th>
                                <th style="text-align:center;" >Género</th>
                                <th style="text-align:center;">Autor</th>
                                <th style="text-align:center;">Nacionalidad</th>
                                <th style="text-align:center;">Libro</th>
                                <th style="text-align:center;" colspan="3"></th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${llista.autores}" var="lista">
                                <tr>
                                    <td style="padding-top: 10px"><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: lista.id])}"  style="background-radius:50%; border-radius: 50%; background-size:100%auto; height: 50px; width: 50px"/></td>
                                    <td style="padding: 5px; color:#666666">${lista.generoLiterario}</td>
                                    <td style="padding: 5px; color:#666666">${lista.nombreCompleto}</td>
                                    <td style="padding: 5px; color:#666666">${lista.nacionalidad}</td>
                                    <td style="padding: 5px; color:#666666">
                                     ${lista.libros.titulo.toString().substring(1,lista.libros.titulo.toString().length()-1)}
                                        <%def id = lista.id as int%>


                                    </td>
                                    <td style="padding: 5px; color:#666666"> <a href="/perfilUsuario/verAutor/${id}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"><p class="deleteAutor" id="${llista.id}" id2="${id}" style="margin-top: 14px;"><g:img dir="images"  file="eliminar.png" align="right" class="image-list3" /></p>

                                    </td>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_013" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Confirmación.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">¿Está seguro de que deseas eliminar el autor?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning delete" id="deleteAutor" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCeBwBcIGZR7nUPEjmCnkvh9jhFfsXTBbE&libraries=places&callback=initMap" async defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script type="text/javascript" async defer>
    jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
        $('#cancelar').click(function () {
            $('#MSGC_01').modal('show');
        });
        $(document).on("click","p.deleteAutor",function(e){
            ///listaPreferenciaAutor/eliminarElemento?id=${id}&idLista=${llista.id}
            $("#deleteAutor").attr("onclick","window.location = '/listaPreferenciaAutor/eliminarElemento?id="+ $(this).attr("id2") + "&idLista=" + $(this).attr("id")+"'");
            $('#MSGC_013').modal('show');
        });


    });
</script>


</body>
</html>