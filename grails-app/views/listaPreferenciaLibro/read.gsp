<head>
    <title> Bookscom</title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
</head>
<style type="text/css">
    .linea{
        margin: 1px;
        color: #BC673F;
        size: 1px;
    }

</style>
<body>

<div style="background: white; color: black">
    <div class="container">
        <div class="row" style="height: 90px">

        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1 style="color: #BC673F;">Listas de preferencia </h1>
                <hr style="padding:0px; margin:0px; border-color: #BC673F;"/>
                <div class="row">
                    <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                            <g:img dir="images" file="lista.png"  style="margin:20px; width: 100px"/>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
                            <p style="padding-top: 20px"><b><i style="color: black">Nombre de lista</i></b></p>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                            <g:img dir="images" file="lista.png"  style="margin:20px; width: 100px"/>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
                            <p style="padding-top: 20px"><b><i style="color: black">Nombre de lista</i></b></p>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
                            <g:img dir="images" file="lista.png"  style="margin:20px; width: 100px"/>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
                                <p style="padding-top: 20px; margin: 0px;"><b><i style="color: black">Nombre de lista</i></b></p>
                                <p style="padding-top:0px; margin: 0px;">Creación: 10/09/2017</p>
                                <p style="padding-top:0px; margin: 0px;">Libros: 10</p>
                            </div>

                        </div>
                    </div>
                </div>


            </div>


        </div>
        <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h1 style="color: #BC673F;">Mis autores favoritos</h1>
                    <hr style="padding:0px; margin:0px; border-color: #BC673F;"/>
                    <div class="swiper-container">

                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper" style="padding-top: 10px">
                            <!-- Slides -->

                            <div class="swiper-slide separator-slide">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                            </div>
                            <div class="swiper-slide separator-slide">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                            </div>
                            <div class="swiper-slide separator-slide">
                                <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
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
</div>
</div>

<!-- Scripts -->
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

    <script>
        function myFunction() {
            document.getElementById("demo").innerHTML = "Hello World";
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