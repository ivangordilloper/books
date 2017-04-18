<html>
<head>
    <title> USUARIO </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
</head>
<body id="perfilusuario">

    <!-- Main -->
    <article id="main">
        <header>
            <h2>Bienvenido usuario</h2>
        </header>


        <section class="spotlight">
            <div class="image"><g:img dir="image" file="choose.jpg" alt="" /></div><div class="content">
            <div class="swiper-container">
                <h4>Tal vez te gusten estos libros</h4>
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->

                    <div class="swiper-slide"> <a  href="/usuario/libro"><g:img dir="images" file="book.png" class="image-slide"/><div class="text-book">Libro 1</div></a></div>

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



        <section class="spotlight">
            <div class="image"><g:img dir="images" file="libros4.png" alt="" /></div><div class="content">
            <h2>Diviertete eligiendo tus libros favoritos
            </h2>

        </div>
        </section>
        <div id="example" class="modal hide fade in" style="display: none;">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Cabecera de la ventana</h3>
            </div>
            <div class="modal-body">
                <h4>Texto de la ventana</h4>
                <p>Mas texto en la ventana.</p>
            </div>
            <div class="modal-footer">
                <a href="index.html" class="btn btn-success">Guardar</a>
                <a href="#" data-dismiss="modal" class="btn">Cerrar</a>
            </div>
        </div>
        <!--
							<div id="cuadroFlotante">
										¿Qué somos?
									</div>
									<div id="texto">
										...
							</div>
						-->
    </article>
    <!-- Scripts -->
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
</div>
</body>
</html>