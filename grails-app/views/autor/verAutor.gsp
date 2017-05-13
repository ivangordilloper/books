<html lang=en>
<head>
    <meta charset="UTF-8">
    <title>LIBRO</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="estilos.css">

    <style type="text/css">
    header {
        background: #0A122A;

    }
    body{
        background:#0B173B;

    }

    .nav2 li {
        text-decoration: none!important;
        padding: 5px 15px!important;
        display: block!important;
        box-shadow: none !important;
        color: #ffffff !important;
        border-radius: 20px;
        background-color: orange!important;

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
        <h1 style="margin-top: 30px; text-align: center">${autor.nombreCompleto}</h1>
    </div>
</header>


<div class="container">
    <section class="main row">
        <article class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background: #0A122A; padding-bottom: 25px;">

            <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: autor.id])}" height="350px" width="200px" style="padding-top: 60px"/>
        </article>
        <article class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background: #0A122A;; height: 375px">
            <div class="row">

                <div class="clasificacion">
                    <g:form action="calificar" method="post" style="padding-top: 10px; ">
                        <g:field id="radio1" type="radio" onclick="sendStars(${autor.id}, 5);" class="hp" name="estrellas" value="5"></g:field><label for="radio1">★</label>
                        <g:field id="radio2" type="radio" name="estrellas" value="4"></g:field><label for="radio2">★</label>
                        <g:field id="radio3" type="radio" name="estrellas" value="3"></g:field><label for="radio3">★</label>
                        <g:field id="radio4" type="radio" name="estrellas" value="2"></g:field><label for="radio4">★</label>
                        <g:field id="radio5" type="radio" name="estrellas" value="1"></g:field><label for="radio5">★</label>

                    </g:form>
                </div>

            </div>
            <div class="row">
                <p>
                    Género:  ${autor.nombreCompleto} <br/>
                    Editorial: ${autor.nacionalidad} <br/>
                    Fecha Publicación: ${autor.fechaNac} <br/>
                </p>
            </div>

            <div class="row">
                <h1>Resumen</h1> <br/>
                <p>
                    ${autor.generoLiterario}
                </p>
            </div>


        </article>

    </section>
    <div
            class="row" style="background: #0A122A; padding-top: 20px"> </div>
    <section class="row">

        <div class="row">
            <div class="container">
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                    <g:form action="opinar" method="post">
                        <div class="input-group">
                            <span class="input-group-addon">        <a href="${createLink(controller : 'usuario', action:'read', params: [id:autor.id])}">@</a></span>
                            <g:field name="mandar" type="text" class="form-control" placeholder="Escribe tu opinión..."></g:field>

                        </div>
                    </g:form>
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
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <div class="thumbnail">
                    <div class="caption">
                        <h3 class="extra">Usuario</h3>
                        <p>Mi opinion es que esta muy padre</p>
                        <p>
                            <a href="${createLink(controller : 'usuario', action:'read', params: [id:autor.id])}" class="btn btn-primary" role="button" style=" border-radius: 15px;background: orange; color: #ffffff; border-color: #985f0d">Ver usuario</a>
                        </p>
                    </div>
                </div>
            </div>
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
                "url": "http://localhost:8081/autor/calificar",
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
</body>
</html>