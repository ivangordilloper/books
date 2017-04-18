<html>
<head>
    <title> LISTA USUARIOS </title>
    <g:external dir="css" file="main.css"/>
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
                                <td style="text-align:center;"> <g:link action="delete" id="${usuario.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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
