<html>
<head>
    <title> Bookscom | Lista Autores</title>
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
                                    <td style="padding: 5px; color:#666666"> <a href="/listaPreferenciaAutor/eliminarElemento?id=${id}&idLista=${llista.id}"><g:img dir="images" file="eliminar.png" align="right" class="image-list3" /></a></td>
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

</body>
</html>