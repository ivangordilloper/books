<%@ page import="Plantilla.Autor; Plantilla.Libro" %>
<html>
<head>
    <title>VER AUTOR </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>

</head>
<body>

<div id="autor">

    <div class="wrapper style5 ver-libro">
        <div class="inner">
            <section class="spotlight">
                <g:img dir = "images" margin-top="1px" file = "usuario.png" alt="${autor.nombre}" style="padding-top: 70px"/>
                    <div class="content">
                <h2 style="font-size:15px;text-align: center; margin-top:50px; margin-bottom: 50px"></h2>
                <h2 style="font-size:15px;text-align: left; margin: 5px">${autor.nombre} ${autor.apellidoP} ${autor.apellidoM}</h2>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Fecha de Nacimiento</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${fecha}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Nacionalidad</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${autor.nacionalidad}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Género Literario</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${autor.generoLiterario}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Libros</h4>
                <g:each in="${lib}" var="libro">
                <p style="font-size:15px;text-align: left; margin: 5px" align="left">${Libro.find(libro).titulo}</p>
                </g:each>
                <div class="swiper-container">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                    <g:each in="${lib}" var="libro">
                    <div class="swiper-slide"> <a  href="${createLink(controller : 'libro', action:'verLibro', params: [id:(lib)])}"><g:img dir="images" file="book.png" class="image-slide"/><div class="text-book">${Libro.find(libro).titulo}</div></a>
                        </div>
                    </g:each>
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>

                    <!-- If we need scrollbar -->
                </div>

            </div>
            </section>

        </div>
</div>
</div>

</body>
</html>