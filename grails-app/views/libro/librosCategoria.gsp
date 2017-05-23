<html>
<head>
    <title> Bookscom</title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
    <script type="text/javascript" src="${resource(dir: '/assets/js/',file:"MiAngular.js")}" async defer></script>
    <g:external dir="js" file="angular.min.js"/>
</head>
<style type="text/css">
.linea{
    margin: 1px;
    color: #BC673F;
    size: 1px;
}

</style>
<body>

<div style="background:white; color: black; font-size: 15px">
    <div class="container">

        <!--Fila 1 : Vacia-->
        <div class="row" style="height: 70px">
        </div> <!--Fila 1 : Vacia-->

         <!--Fila 2 : Recomendaciones-->
        <div class="row" style="padding: 0px; margin: 0px">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped" style="color: #2E3842;">
                    <thead>
                    <tr>
                        <th style="color: #2E3842;">Recomendaciones</th>
                        <th style="color: #2E3842;"></th>
                        <th style="color: #2E3842;"></th>
                    </tr>
                    </thead>
                </table>

            </div>
        </div>

        <div class="row"  style="padding: 0px; margin: 0px">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="swiper-container">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper" style="padding-top: 10px">
                            <!-- Slides -->

                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;"/>
                            </div>
                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;"/>
                            </div>
                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;"/>
                            </div>
                            <div class="swiper-slide separator-slide">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                            </div>

                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>
                        <!-- If we need scrollbar -->
                    </div>

                </div>
            </div>
       <!--Fila 2 : Recomendaciones-->

       <!--Fila 3 : Épico-->
        <div class="row" style="padding: 0px; margin: 0px">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped" style="color: #2E3842;">
                    <thead>
                    <tr>
                        <th style="color: #2E3842;">Obras literarías de género Épico</th>
                        <th style="color: #2E3842;"></th>
                        <th style="color: #2E3842;"></th>
                    </tr>
                    </thead>
                </table>

            </div>
        </div>

        <div class="row"  style="padding: 0px; margin: 0px">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="swiper-container" style="padding: 0px; margin: 0px">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper" style="padding-top: 5px; margin:5px;">
                    <!-- Slides -->
                        <g:each in="${Plantilla.Libro.findAllByGeneroLiterario("'Epico")}" var="libro">
                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  style="background-size:100%auto; height: 200px; width: 150px"/>
                                <p style="text-align: center">${libro.titulo}</p>
                                <p style="text-align: center">${libro.califL}</p>
                            </div>
                        </g:each>


                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need scrollbar -->
                </div>

            </div>
        </div>


       <!--Fila 4 : Dramatico-->
        <div class="row" style="padding: 0px; margin: 0px">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped" style="color: #2E3842;">
                    <thead>
                    <tr>
                        <th style="color: #2E3842;">Obras literarías de género Dramático</th>
                        <th style="color: #2E3842;"></th>
                        <th style="color: #2E3842;"></th>
                    </tr>
                    </thead>
                </table>

            </div>
        </div>

        <div class="row"  style="padding: 0px; margin: 0px">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="swiper-container" style="padding: 0px; margin: 0px">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper" style="padding-top: 5px; margin:5px;">
                        <!-- Slides -->
                         <g:each in="${Plantilla.Libro.findAllByGeneroLiterario("Dramático")}" var="libro">
                             <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                 <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:libro.id])}"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  style="background-size:100%auto; height: 200px; width: 150px"/></a>
                                 <p style="text-align: center">${libro.titulo}</p>
                                 <p style="text-align: center">${libro.califL}</p>
                             </div>
                        </g:each>


                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need scrollbar -->
                </div>

            </div>
        </div>


        <!--Fila 5 : Didáctico-->
        <div class="row" style="padding: 0px; margin: 0px">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped" style="color: #2E3842;">
                    <thead>
                    <tr>
                        <th style="color: #2E3842;">Obras literarías de género Didáctico</th>
                        <th style="color: #2E3842;"></th>
                        <th style="color: #2E3842;"></th>
                    </tr>
                    </thead>
                </table>

            </div>
        </div>

        <div class="row"  style="padding: 0px; margin: 0px">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="swiper-container" style="padding: 0px; margin: 0px">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper" style="padding-top: 5px; margin:5px;">
                    <!-- Slides -->
                        <g:each in="${Plantilla.Libro.findAllByGeneroLiterario("Didáctico")}" var="libro">
                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  style="background-size:100%auto; height: 200px; width: 150px"/>
                                <p style="text-align: center">${libro.titulo}</p>
                                <p style="text-align: center">${libro.califL}</p>
                            </div>
                        </g:each>


                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need scrollbar -->
                </div>

            </div>
        </div>

        <!--Fila 6 : Histórico-->
        <div class="row" style="padding: 0px; margin: 0px">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped" style="color: #2E3842;">
                    <thead>
                    <tr>
                        <th style="color: #2E3842;">Obras literarías de género Histórico</th>
                        <th style="color: #2E3842;"></th>
                        <th style="color: #2E3842;"></th>
                    </tr>
                    </thead>
                </table>

            </div>
        </div>

        <div class="row"  style="padding: 0px; margin: 0px">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="swiper-container" style="padding: 0px; margin: 0px">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper" style="padding-top: 5px; margin:5px;">
                    <!-- Slides -->
                        <g:each in="${Plantilla.Libro.findAllByGeneroLiterario("Historia")}" var="libro">
                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  style="background-size:100%auto; height: 200px; width: 150px"/>
                                <p style="text-align: center">${libro.titulo}</p>
                                <p style="text-align: center">${libro.califL}</p>
                            </div>
                        </g:each>


                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need scrollbar -->
                </div>

            </div>
        </div>

        <!--Fila 7 : Lírico-->
        <div class="row" style="padding: 0px; margin: 0px">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped" style="color: #2E3842;">
                    <thead>
                    <tr>
                        <th style="color: #2E3842;">Obras literarías de género Lírico</th>
                        <th style="color: #2E3842;"></th>
                        <th style="color: #2E3842;"></th>
                    </tr>
                    </thead>
                </table>

            </div>
        </div>

        <div class="row"  style="padding: 0px; margin: 0px">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="swiper-container" style="padding: 0px; margin: 0px">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper" style="padding-top: 5px; margin:5px;">
                    <!-- Slides -->
                        <g:each in="${Plantilla.Libro.findAllByGeneroLiterario("Lírico")}" var="libro">
                            <div class="swiper-slide separator-slide" style="width: 100px; height: 150px; margin: 0px!important; padding: 0px!important;">
                                <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  style="background-size:100%auto; height: 200px; width: 150px"/>
                                <p style="text-align: center">${libro.titulo}</p>
                                <p style="text-align: center">${libro.califL}</p>
                            </div>
                        </g:each>


                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need scrollbar -->
                </div>

            </div>
        </div>



        <br/>
        <br/>
    </div>  <!-- Fin div contenedor -->
</div> <!--Fin Div blanco-->

<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<script>
    function myFunction() {
        var x = document.getElementById('myDIV');
        if (x.style.display === 'none') {
            x.style.display = 'block';
        } else {
            x.style.display = 'none';
        }
    }
</script>
<script>
    //Function To Display Popup
    function div_show() {
        document.getElementById('abc').style.display = "block";
    }
</script>

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
<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<script>
    function myFunction() {
        var x = document.getElementById('myDIV');
        if (x.style.display === 'none') {
            x.style.display = 'block';
        } else {
            x.style.display = 'none';
        }
    }
</script>
<script>
    //Function To Display Popup
    function div_show() {
        document.getElementById('abc').style.display = "block";
    }
</script>

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