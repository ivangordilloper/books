<html>
<head>
    <title> LISTA LIBROS </title>
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
                                <th style="text-align:center;">Título</th>
                                <th style="text-align:center;" >Autor</th>
                                <th style="text-align:center;">Calificación</th>
                                <th style="text-align:justify;" colspan="3"></th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${llista.libros}" var="lista">
                                <tr>
                                    <td style="padding-top: 10px"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: lista.id])}"  style="background-radius:50%; border-radius: 50%; background-size:100%auto; height: 50px; width: 50px"/></td>
                                    <td style="padding: 5px; color:#666666">${lista.titulo}</td>
                                    <td style="padding: 5px; color:#666666">${lista.autores.nombreCompleto.toString().substring(1, lista.autores.nombreCompleto.toString().length()-1)}</td>
                                    <td style="padding: 5px; color:#666666">
                                        <% if(lista.califL.size()>0){%>
                                        <% def promedio = lista.califL.calif.collect().sum() / lista.califL.size()
                                        def cuentaE

                                        if (promedio>= 5){
                                            cuentaE ="5"
                                        }else if(promedio>=4 && promedio<5) {
                                            cuentaE= "4"
                                        }else if(promedio>=3 && promedio<4){
                                            cuentaE= "3"
                                        }else if (promedio>= 2 && promedio <3){
                                            cuentaE= "2"
                                        }else if (promedio>=1 && promedio<2){
                                            cuentaE="1"
                                        }
                                        %>
                                        <div style="text-align: center">
                                            <g:if test="${cuentaE.equals("1")}">
                                                <% def count1= 1 %>
                                                <g:each in="${1..count1}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <% def count11= 4 %>
                                                <g:each in="${1..count11}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                </g:each>
                                            </g:if>

                                            <g:if test="${cuentaE.equals("2")}">
                                                <% def count2= 2 %>
                                                <g:each in="${1..count2}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <% def count21= 3 %>
                                                <g:each in="${1..count21}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro">&starf;</span>
                                                </g:each>
                                            </g:if>
                                            <g:if test="${cuentaE.equals("3")}">
                                                <% def count3= 3 %>
                                                <g:each in="${1..count3}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <% def count31= 2 %>
                                                <g:each in="${1..count31}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                </g:each>
                                            </g:if>
                                            <g:if test="${cuentaE.equals("4")}">
                                                <% def count4= 4 %>
                                                <g:each in="${1..count4}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <% def count41= 1 %>
                                                <g:each in="${1..count41}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                </g:each>
                                            </g:if>
                                            <g:if test="${cuentaE.equals("5")}">
                                                <% def count5= 5 %>
                                                <g:each in="${1..count5}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                            </g:if>
                                        <%} else {%>

                                            <%def count0= 5 %>
                                            <g:each in="${1..count0}" var="b" >
                                                <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                            </g:each>

                                        <%}%>
                                    </td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'perfilUsuario', action:'verLibro', params: [id:lista.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"><p class="deleteLibro" id="${llista.id}" id2="${lista.id}" style="margin-top: 14px;"><g:img dir="images"  file="eliminar.png" align="right" class="image-list3" /></p>
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
                <button type="button" class="btn btn-warning delete" id="deleteLibro" data-dismiss="modal">Sí</button>
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
        $(document).on("click","p.deleteLibro",function(e){
            ///listaPreferenciaAutor/eliminarElemento?id=${id}&idLista=${llista.id}
            $("#deleteLibro").attr("onclick","window.location = '/listaPreferenciaLibro/eliminarElemento/"+ $(this).attr("id2") + "?idLista=" + $(this).attr("id")+"'");
            $('#MSGC_013').modal('show');
        });


    });
</script>
</body>
</html>