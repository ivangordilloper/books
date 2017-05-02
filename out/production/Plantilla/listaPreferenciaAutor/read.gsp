<html>
<head>
    <title> LISTA PREFERENCIAS LIBROS </title>
<g:external dir="css" file="main.css"/>
<g:external dir="css" file="preferences.css" />
</head>
<div id="listaPreferenciaLibro">

    <!-- Main -->

    <div class="wrapper style5">
        <div class="inner">


            <div>
                <div class="box ">

                    <h4>Listas de preferencia de autores </h4><a href="/listaPreferenciaAutor/read"><g:img dir="images" file="lupa.png" align="right" class="img-config3"/></a><a href="/listaPreferenciaAutor/createlistaPreferenciaAutor"><g:img dir="images" file="mas.png" align="right" class="img-config2"/></a>
                    <br>


                    <div class="table-wrapper">
                        <table class="letraC">
                            <thead>
                            <tr>
                                <th></th>
                                <th style="text-align:center;" >Nombre</th>
                                <th style="text-align:center;">Fecha de creación</th>
                                <th style="text-align:center;">Tamaño</th>
                                <th style="text-align:center;" colspan="3">Acciones</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${lAutor}" var="lista">
                                <tr>
                                    <td style="padding-top: 10px"><g:img dir="images" file="lista.png"  class="image-list2"/></td>
                                    <td style="padding: 5px; color:#666666">${lista.nombre}</td>
                                    <td style="padding: 5px; color:#666666">${lista.fechaCreacion.toString().substring(0,10)}</td>
                                    <td style="padding: 5px; color:#666666; align-items: center">${lista.autores.size()}</td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'listaPreferenciaAutor', action:'verListaPreferenciaAutor', params: [id:lista.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'libro', action:'update', params: [id:lista.id])}"><g:img dir="images" file="editar.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <g:link action="delete" id="${lista.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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

</body>
</html>