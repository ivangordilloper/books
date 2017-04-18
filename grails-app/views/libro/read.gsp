<%@ page import="Plantilla.Libro" %>
<html>
<head>
    <title> LISTA LIBROS </title>
<g:external dir="css" file="main.css"/>
<g:external dir="css" file="preferences.css" />
</head>
<div id="libro">

    <!-- Main -->

    <div class="wrapper style5">
        <div class="inner">


            <div>
                <div class="box ">

                    <h4>libros registrados en BooksCom </h4><a href="/libro/read"><g:img dir="images" file="lupa.png" align="right" class="img-config3"/></a><a href="/libro/createLibro"><g:img dir="images" file="mas.png" align="right" class="img-config2"/></a>
                    <br>


                    <div class="table-wrapper">
                        <table class="letraC">
                            <thead>
                            <tr>
                                <th></th>
                                <th style="text-align:center;" >Título</th>
                                <th style="text-align:center;">Autor</th>
                                <th style="text-align:center;">Género</th>
                                <th style="text-align:center;">Editorial</th>
                                <th style="text-align:center;">País</th>
                                <th style="text-align:center;" colspan="3">Acciones</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${libros}" var="libro">
                                <tr>
                                    <td style="padding-top: 10px"><g:img dir="images" file="book.png"  class="image-list2"/></td>
                                    <td style="padding: 5px; color:#666666">${libro.titulo}</td>
                                    <td style="padding: 5px; color:#666666">${libro.autor.nombre} ${libro.autor.apellidoP} ${libro.autor.apellidoM}</td>
                                    <td style="padding: 5px; color:#666666">${libro.generoLiterario}</td>
                                    <td style="padding: 5px; color:#666666">${libro.editorial}</td>
                                    <td style="padding: 5px; color:#666666">${libro.pais}</td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:libro.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'libro', action:'update', params: [id:libro.id])}"><g:img dir="images" file="editar.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <g:link action="delete" id="${libro.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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