<%@ page import="Plantilla.Autor; Plantilla.Libro" %>
<html>
<head>
    <title>VER AUTOR </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
    <g:external dir="css" file="star-rating.css"/>
    <g:external dir="css" file="stars.css"/>


    <style type="text/css">

    *{
        padding: 0px;
        margin: 0px;
    }
    .nav2 li a {
        text-decoration: none;
        padding: 10px 15px;
        display: block;
        background-color: #BC673F;
        box-shadow: none !important;
        color: #ffffff !important;

    }
    ul, ol{
        list-style: none;
        padding: 0px!important;
        margin: 0px!important;
        box-shadow: none !important;
        color: #ffffff !important;
    }

    .nav2 > li {
        float:left;
    }

    .nav2 li a:hover{
        background-color: #F5B041;
    }

    .nav2 li ul{
        display: none;
        position: absolute;
        min-width: 140px;
    }

    .nav2 li:hover >  ul{
        display: block;
    }

    .nav2 li ul li {
        position: relative;

    }

    .nav2 li ul li ul{
        right: -140px;
        top: 0px;
    }

    </style>
</head>
<body>

<div id="autor">
    <div class="wrapper style5 ver-libro">
        <div class="inner" style="padding-bottom: 0px">
            <section class="spotlight">
                <div div class="image"><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: autor.id])}" height="400px" width="200px"/></div>
                    <div class="content">
                <h2 style="font-size:15px;text-align: center; margin-top:50px; margin-bottom: 50px"></h2>

                <h2 style="font-size:35px;text-align: center; position: relative;  margin: 5px">${autor.nombreCompleto}</h2>
                        <div class="container4">
                            <span class="star-rating col-sm-10">
                                <input type="radio" name="rating" value="1" ><i></i>
                                <input type="radio" name="rating" value="2"><i></i>
                                <input type="radio" name="rating" value="3"><i></i>
                                <input type="radio" name="rating" value="4"><i></i>
                                <input type="radio" name="rating" value="5"><i></i>
                            </span>
                        </div>
                <h4 style="font-size:15px;text-align: left; padding-top: 15px; padding-top:20px; margin: 5px">Fecha de Nacimiento</h4>
                <p style="font-size:15px;text-align: left; margin: 2px">${fecha}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Nacionalidad</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${autor.nacionalidad}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Género Literario</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${autor.generoLiterario}</p>
                        <h4 style="font-size:15px;text-align: left; margin: 5px">Libros</h4>

                <div class="swiper-container">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                    <g:each in="${lib}" var="libro">
                    <div class="swiper-slide"> <a  href="${createLink(controller : 'libro', action:'verLibro', params: [id:(libro.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${Libro.find(libro).titulo}</div></a>
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
            <section class = "spotligth">
                <div class="box" style="padding-top: 0px">
                  <div class="row uniform">
                            <ul class="nav2">
                                <li>  <a>Agregar a lista de preferencia</a>
                                    <ul>
                                        <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 1 </a> </li>
                                        <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 2 </a> </li>
                                    </ul>
                                </li>
                                <li>  <a>Agregar a lista de preferencia</a>
                                    <ul>
                                        <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 1 </a> </li>
                                        <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 2 </a> </li>
                                    </ul>
                                </li>
                            </ul>

                        </div>

                </div>
            </section>

        </div>
</div>
</div>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>

<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<g:javascript>
    $(document).ready(function () {
        //initialize swiper when document ready
        var mySwiper = new Swiper ('.swiper-container', {
            // Optional parameters
            direction: 'horizontal',
            slidesPerView: 3,
            paginationClickable: true,
            spaceBetween: 30,
            // Navigation arrows
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            loop: true,
            keyboardControl: true,
        })
    });
</g:javascript>
</body>
</html>