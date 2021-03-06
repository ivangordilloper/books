<html>
<head>
    <title> LISTA AUTORES </title>
<g:external dir="css" file="main.css"/>
<g:external dir="css" file="preferences.css" />
</head>
<div id="autor">

    <!-- Main -->

    <div class="wrapper style5">
        <div class="inner">


            <div>
                <div class="box ">

                    <h4>Lista: ${llista.nombre} </h4><a href="/usuario/read"><g:img dir="images" file="lupa.png" align="right" class="img-config3"/></a><a href="/usuario/createUsuario"><g:img dir="images" file="mas.png" align="right" class="img-config2"/></a>
                    <br>


                    <div class="table-wrapper">
                        <table class="letraC">
                            <thead>
                            <tr>
                                <th></th>
                                <th style="text-align:center;" >Género literario</th>
                                <th style="text-align:center;">Autor</th>
                                <th style="text-align:center;">Nacionalidad</th>
                                <th style="text-align:center;">Libro</th>
                                <th style="text-align:center;" colspan="3">Acciones</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${llista}" var="lista">
                                <tr>
                                    <td style="padding-top: 10px"><g:img dir="images" file="book.png"  class="image-list2"/></td>
                                    <td style="padding: 5px; color:#666666">${lista.autores.generoLiterario}</td>
                                    <td style="padding: 5px; color:#666666">${lista.autores.nombreCompleto}</td>
                                    <td style="padding: 5px; color:#666666">${lista.autores.nacionalidad}</td>
                                    <td style="padding: 5px; color:#666666">${lista.autores.libros}</td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'autor', action:'verAutor', params: [id:lista.autores.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'listaPreferenciaAutor', action:'opinar', params: [id:lista.autores.id])}"><g:img dir="images" file="opinion.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <g:link action="delete" id="${lista.autores.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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