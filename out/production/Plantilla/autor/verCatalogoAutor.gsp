<html>
<head>
    <title>
      AUTOR
    </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
    <style type="text/css">


        .autorV {
            background-color: #0B173B;;
            color:#ffffff;

        }

        .vaneX{
            padding-top: 80px;
            padding-bottom: 0px;
            padding-left:  400px;!important;


        }

        .vaneR{
            -moz-border-radius: 30px;
            -webkit-border-radius: 30px;
            border-radius: 30px;
            border: 1px solid #ffffff;
            padding-right: 0px;
            text-align: center;

        }

        .vane{
            padding-right: 100px;
            padding-left: 100px;
        }

    </style>
</head>
<body>
<div id="autor">
<div class="autorV">


    <Form action="read" method="post" name="form" >
        <div class="row uniform vaneX">
            <div class="6u 6u$(xsmall)">
                <g:select class="vaneR" name="autores" placeholder="Encuentra tu autor favorito" required="true"   from="${autorC.nombreCompleto}"  >
                </g:select>
            </div>
            <div class="6u 6u$(xsmall)">
                <ul class="actions vertical">
                    <li ><g:submitButton name="submit" value="Buscar" class="special"/></li>
                </ul>
            </div>
        </div>
    </Form>

    <section class="spotlight swipbooks vane">
        <div class ="image vaneI">Selecciona un autor y podrás ver los libros que tiene.</div><div class="content">

        <div class="swiper-container">

            <h4>Autores recomendados</h4>
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
            <!-- Slides -->


                <g:each in="${autorC}" var="autorCi">
                    <div class="swiper-slide separator-slide"> <a  href="${createLink(controller : 'autor', action:'verAutor', params: [id:(autorCi.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: autorCi.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${autorCi.nombreCompleto}</div></a>
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

    <section class="spotlight swipbooks vane">
        <div class ="image vaneI">Selecciona un autor y podrás ver los libros que tiene. </div><div class="content">

        <div class="swiper-container">

            <h4>Autores destacados</h4>
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
            <!-- Slides -->


                <g:each in="${autorC}" var="autorCi">
                    <div class="swiper-slide separator-slide">
                        <a  href="${createLink(controller : 'autor', action:'verAutor', params: [id:(autorCi.id)])}" >
                            <img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: autorCi.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/>
                            <div class="text-book">${autorCi.nombreCompleto}</div></a>
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
</body>
</html>