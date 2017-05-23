<html>
<head>
    <title> LISTA LIBROS </title>
<g:external dir="css" file="main.css"/>
<g:external dir="css" file="preferences.css" />
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

                                <th style="text-align:center;" >Autor</th>
                                <th style="text-align:center;">Título</th>
                                <th style="text-align:center;" >Género literario</th>
                                <th style="text-align:center;">Calificacion</th>
                                <th style="text-align:center;" colspan="3">Acciones</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${llista.libros}" var="lista">
                                <tr>
                                    <td style="padding-top: 10px"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: lista.id])}"  style="background-radius:50%; border-radius: 50%; background-size:100%auto; height: 50px; width: 50px"/></td>
                                    <td style="padding: 5px; color:#666666">${lista.titulo}</td>
                                    <td style="padding: 5px; color:#666666">${lista.autores.nombreCompleto}</td>
                                    <td style="padding: 5px; color:#666666">${lista.generoLiterario}</td>
                                    <td style="padding: 5px; color:#666666">Calificacion</td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:lista.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <a href="${createLink(controller : 'libro', action:'opinar', params: [id:lista.id])}"><g:img dir="images" file="opinion.png" align="right" class="image-list3" /></a></td>
                                    <td style="padding: 5px; color:#666666"> <g:link action="eliminarElemento" id="${lista.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></g:link></td>
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