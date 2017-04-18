<html>
<head>
    <title>VER LIBRO </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>

</head>
<body>
<div id="usuario">

    <section class="wrapper style5 ver-libro">
        <div class="inner">

            <section class="spotlight">
                <div class="image"><g:img dir = "images" file = "book.png" alt="${libro.titulo}" style="padding-top: 70px"/></div><div class="content">
                <h2 style="font-size:15px;text-align: left; margin: 5px">Título</h2>
                <p style="font-size:15px;text-align: left; margin: 5px">${libro.titulo}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Autor</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${libro.autor.nombre.toString().concat(libro.autor.apellidoP.toString().concat(libro.autor.apellidoM))} </p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Género</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${libro.generoLiterario}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Editorial</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${libro.editorial}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">País</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${libro.pais}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Fecha de Publicación</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${fecha}</p>

            </div>
            </section>

            <section class = "spotligth">
                <div class="box">
                    <form  role="form" action="#" method="POST" id="contacto" title="Nombre">

                        <div class="row uniform">
                            <div class="6u 12u$(xsmall)">
                                <input class="form-control" name="titulo" type="text" id="titulo" placeholder="Encuentra tu libro..." tabindex="1" title="Libro" size="20" maxlength="20" height="30px">
                            </div>
                            <div class="actions">
                                <a href="${createLink(controller : 'libro', action:'verLibro', method="post", params: [id:1])}"><g:img dir="images" file="lupa2.png" align="right" class="image-list3" height="30px"/></a></td>

                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </div>


    </section>


</div>
</body>
</html>