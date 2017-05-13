<html lang=en>
<head>
    <meta charset="UTF-8">
    <title>LIBRO</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <style type="text/css">
    header {
        background: #0A122A;

    }
    body{
        background:#0A122A;

    }

    .nav2 li {
        text-decoration: none!important;
        padding: 5px 15px!important;
        display: block!important;
        box-shadow: none !important;
        color: #ffffff !important;
        border-radius: 4px;
        background-color: #BC673F!important;
        box-shadow: none !important;
        color: #ffffff !important;

    }

    .nav2 li a {
        text-decoration: none!important;
        padding: 5px 15px!important;
        display: block!important;
        box-shadow: none !important;
        border-radius: 20px;
        right: -1400px!important;
        color: #ffffff!important;
    }

    ul, ol{
        list-style: none!important;
        padding: 0px!important;
        margin: 0px!important;
        box-shadow: none !important;
    }

    .nav2 > li {
        float:right!important;
    }

    .nav2 li a:hover{
        color: #ffffff!important;
    }

    .nav2 li ul{
        display: none!important;
        position: absolute!important;
        min-width: 140px!important;
    }

    .nav2 li:hover >  ul{
        display: block!important;
    }

    .nav2 li ul li {
        position: relative!important;
        margin: 0px;

    }

    .extra{
        padding-top-: 0px;
        padding-bottom: 0px;
        color: #0A122A;
    }
    label {
        color: grey;
    }


    label:hover{
        color:orange!important;
    }
    label:hover ~ label{
        color:orange;}
    input[type = "radio"]{
        display: none!important;
    }
    input[type = "radio"]:checked ~ label{
        color:orange;}

    </style>
</head>
<body>
<header>
    <div class="container">
        <h1 style="margin-top: 30px; text-align: center">${libro.titulo} ${libro.autores.nombreCompleto}</h1>
    </div>
</header>


<div class="container">
    <section class="main row">
        <article class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="padding-bottom: 25px;">

                <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" height="350px" width="200px" style="padding-top: 60px"/>
        </article>
        <article class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background: #0B173B; height: 375px">
            <div class="row">

                <div class="clasificacion">
                <g:form action="calificar" method="post" style="padding-top: 10px; ">
                        <g:field id="radio1" type="radio" onclick="sendStars(${libro.id}, 5);" class="hp" name="estrellas" value="5"></g:field><label for="radio1">★</label>
                        <g:field id="radio2" type="radio" name="estrellas" value="4"></g:field><label for="radio2">★</label>
                        <g:field id="radio3" type="radio" name="estrellas" value="3"></g:field><label for="radio3">★</label>
                        <g:field id="radio4" type="radio" name="estrellas" value="2"></g:field><label for="radio4">★</label>
                        <g:field id="radio5" type="radio" name="estrellas" value="1"></g:field><label for="radio5">★</label>

                </g:form>
                </div>

            </div>
            <div class="row">
                <p>
               Género:  ${libro.generoLiterario} <br/>
               Editorial: ${libro.editorial}, ${libro.pais} <br/>
               Fecha Publicación: ${fecha} <br/>
                </p>
            </div>

            <div class="row">
                <h1>Resumen</h1> <br/>
                <p>
                ${libro.resumen}
                 </p>
            </div>


        </article>

    </section>
<div class="row" style="padding-top: 20px">
   <section class="row">

        <div class="row">
            <div class="container">

                    <g:form action="opinar" method="post">

                            <g:hiddenField name="idLibro" value="${libro.id}" />
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                            <g:field name="mandarO" id = "hola" type="text" class="form-control" required= "true" placeholder="Escribe tu opinión..."></g:field>
                            <div>
                                <dialog></dialog>
                            </div>

                            <section>
                                <dialog></dialog>
                            </section>

                            <dialog></dialog>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                            <g:submitButton name="submit"  class="special"/>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                            <ul class="nav2" >
                                <li> Agregar a lista de preferencia
                                    <ul>
                                        <li style="font-size: 15px"><a> Opcion 1</a> </li>
                                        <li style="font-size: 15px"><a> Opcion 2</a> </li>
                                    </ul>

                                </li>

                            </ul>
                        </div>



                    </g:form>



            </div>
        </div>



        <!---<a href="#hola" class="more scrolly">Danos tu opinión...</a>-->
    </section>
    <div
            class="row" style="padding-top: 10px"> </div>

    <section id="hola">
        <div class="row">
            <div class="extra" style="height: 20px">
               <h1> <a href="#opi" class="more scrolly" style="color: #ffffff">¿Qué opinan otros usuarios?</a> </h1>
            </div>
        </div>

        <div
                class="row" style="padding-top: 20px"> </div>


    </section>

<section id="opi">
    <div class="row">
<g:each in="${opiniones}" var="opinion">
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <div class="thumbnail">
                <div class="caption">
                    <div class="row">
                        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                            <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: 1])}" height="70px" width="70px"/>
                        </div>
                        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <h3 class="extra">${opinion.usuario.username}</h3>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <p>${opinion.opinionL}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</g:each>
    </div>

</section>
<footer>

    <div class="container">
        <h3></h3>
    </div>
</footer>
<script src="js/jquery-3.2.1.min"></script>
<script src="js/bootstrap.min.js"></script>
    <script>
        function sendStars(id, calificacion) {

            var form = new FormData();
            form.append("stars", calificacion);
            form.append("id", id);


            console.log(calificacion)
            console.log(id)

            var settings = {
                "async": true,
                "crossDomain": true,
                "url": "http://localhost:8081/libro/calificar",
                "method": "POST",
                "headers": {
                    "cache-control": "no-cache",
                    "postman-token": "149fffae-4c04-1d6b-b765-377b3b3bb9a5"
                },
                "processData": false,
                "contentType": false,
                "mimeType": "multipart/form-data",
                "data": form
            }

            $.ajax(settings).done(function (response) {
                console.log(response);
            });

        }

    </script>
</div>
</div>
</body>
</html>