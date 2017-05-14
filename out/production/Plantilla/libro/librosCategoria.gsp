<html>
<head>
    <title> LIBRO </title>

     <g:meta name="info.app.grailsVersion"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>

    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
       <style type="text/css">
        *{
            margin:0;
            padding:0;
        }
        body {
            background-color: #3c2d26;
            color:#ffffff;
        }

        .vane{
            padding-right: 100px;!important;
            padding-left:  100px;!important;
            background-color: rgba(0, 0, 0, 0.375);!important;
        }
        .vaneI {
            text-align: justify;
            margin-left: 10px;
            margin-right: 10px;
        }
           .vaneX{
                padding-top: 30px;
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
       </style>
</head>
<body>
<div id="libro">


<Form action="read" method="post" name="form" >
    <div class="row uniform vaneX">
        <div class="6u 6u$(xsmall)">
            <g:select class="vaneR" name="autores" required="true"   from="${libroC.titulo}"  >
            </g:select>
        </div>
    <div class="6u 6u$(xsmall)">
        <ul class="actions vertical">
            <li ><g:submitButton name="submit" value="Buscar" class="special"/></li>
        </ul>
    </div>
    </div>
</Form>
<div>
<section class="spotlight swipbooks vane">
    <div class ="image vaneI" > Obras literarias en donde el autor usa un narrador para "contar" una historia real o ficticia.scripción.
    <br/>Tipos: Cuento, Novela, Mito, Leyenda, Fábula, Crónica, Apólogo, Epístola, Ensayo y Epopeya.</div><div class="content">
    <div class="swiper-container">

        <h4>Género literario: Narrativo/Épico</h4>
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
        <!-- Slides -->


            <g:each in="${libroC}" var="libro">
                <div class="swiper-slide separator-slide"> <a  href="${createLink(controller : 'libro', action:'verLibro', params: [id:(libro.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${libro.titulo}</div></a>
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
    <div class ="image vaneI"> Obras literarias en donde el autor presenta algún episodio o conflicto de la vida de los seres humanos por medio del diálogo de los personajes. <br/>
        Tipos: Tragedia, Comedia, Drama, Farsa, Esperpento,
    </div><div class="content">
    <div class="swiper-container">

        <h4>Género literario: Dramático</h4>
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
        <!-- Slides -->


            <g:each in="${libroC}" var="libro">
                <div class="swiper-slide separator-slide"> <a  href="${createLink(controller : 'libro', action:'verLibro', params: [id:(libro.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${libro.titulo}</div></a>
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
        <div class ="image vaneI"> Obras literarias en donde el autor transmite sentimientos, emociones o sensaciones respecto a una persona u objeto de inspiración. <br/>Tipo: Canción, Himno, Oda, Elegía, Égloga, Sátira.</div><div class="content">

        <div class="swiper-container">

            <h4>Género literario: Lírico</h4>
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
            <!-- Slides -->


                <g:each in="${libroC}" var="libro">
                    <div class="swiper-slide separator-slide"> <a  href="${createLink(controller : 'libro', action:'verLibro', params: [id:(libro.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${libro.titulo}</div></a>
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