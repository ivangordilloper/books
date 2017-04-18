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

                    <h4>Autores registrados en BooksCom </h4><a href="/autor/read"><g:img dir="images" file="lupa.png" align="right" class="img-config3"/></a><a href="/autor/createAutor"><g:img dir="images" file="mas.png" align="right" class="img-config2"/></a>
                    <br>


                    <div class="table-wrapper">
                        <table class="letraC">
                            <thead>
                            <tr>
                                <th></th>
                                <th style="text-align:center;" >Nombre</th>
                                <th style="text-align:center;" colspan="2">Apellidos</th>
                                <th style="text-align:center;">Nacionalidad</th>
                                <th style="text-align:center;">Género</th>
                                <th style="text-align:center;" colspan="3">Acciones</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${autors}" var="autor">
                                <tr>
                                    <td style="padding-top: 10px"><g:img dir="images" file="usuario.png"  class="image-list2"/></td>
                                    <td style="padding: 5px; color:#666666">${autor.nombre}</td>
                                    <td style="padding: 5px; color:#666666">${autor.apellidoP}</td>
                                    <td style="padding: 5px; color:#666666">${autor.apellidoM}</td>
                                    <td style="padding: 5px; color:#666666">${autor.nacionalidad}</td>
                                    <td style="padding: 5px; color:#666666">${autor.generoLiterario}</td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'autor', action:'verAutor', params: [id:autor.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'autor', action:'update', params: [id:autor.id])}"><g:img dir="images" file="editar.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <g:link action="delete" id="${autor.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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