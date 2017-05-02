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
                                <th style="text-align:center;" colspan="3">Nombre completo</th>
                                <th style="text-align:center;">Nacionalidad</th>
                                <th style="text-align:center;">Género</th>
                                <th style="text-align:center;" colspan="3">Acciones</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${preadA}" var="autorV">
                                <tr>

                                    <td style="padding-top: 10px"><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: autorV.id])}"  style="background-radius:50%; border-radius: 50%; background-size:100%auto; height: 50px; width: 50px;"/></td>
                                    <td style="padding: 5px; color:#666666">${autorV.nombreCompleto}</td>
                                    <td style="padding: 5px; color:#666666"></td>
                                    <td style="padding: 5px; color:#666666"></td>
                                    <td style="padding: 5px; color:#666666">${autorV.nacionalidad}</td>
                                    <td style="padding: 5px; color:#666666">${autorV.generoLiterario}</td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'autor', action:'verAutor', params: [id:autorV.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'autor', action:'update', params: [id:autorV.id])}"><g:img dir="images" file="editar.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <g:link action="delete" id="${autorV.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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