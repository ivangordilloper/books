<html>
<head>
    <title>VER LIBRO </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="stars.css"/>
    <g:external dir="css" file="main.css"/>

<style type="text/css">

    *{
        padding: 0px;
        margin: 0px;
    }

    .nav2 li {
        text-decoration: none!important;
        padding: 10px 15px!important;
        display: block!important;
        background-color: #ffffff;
        box-shadow: none !important;
        color: #000000 !important;

    }

.nav2 li a {
    text-decoration: none!important;
    padding: 10px 15px!important;
    display: block!important;
    background-color: #BC673F;
    box-shadow: none !important;
    color: #ffffff !important;

}
    ul, ol{
        list-style: none!important;
        padding: 0px!important;
        margin: 0px!important;
        box-shadow: none !important;
        color: #f0ad4e !important;
    }

    .nav2 > li {
        float:right!important;
    }

    .nav2 li a:hover{
        background-color: #F5B041!important;
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

    }

    .nav2 li ul li ul{
        right: -140px!important;
        top: 0px!important;
    }

    .encabezado{
        background-color:#071914;
        height:0px;
    }

    .post{
        background-color: rgba(117, 255, 26, 0.46);
        height: 100px;
        margin-bottom: 1em;
    }

    .res, .campo{
        float: left;
        position: relative;
    }

</style>

</head>
<body>
<div class="libro">

    <section class="wrapper style5 ver-libro">
        <div class="inner">

            <section class="spotlight">
                <div class="image">
                    <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" height="400px" width="200px" style="padding-top: 60px"/></div>

                <div class="content">
                    <h2 style="font-size:15px;text-align: center; margin-top:50px; margin-bottom: 50px"></h2>

                    <ul class="nav2">
                        <li style="font-size: 70px"> ...
                            <ul>
                                <g:each in="${listaL}" var="lista">
                                    <li style="font-size: 15px"><a href="${createLink(controller : 'listaPreferenciaLibro', action:'agregarElemento', params: [id:1])}"> Agregar a : ${lista.nombre}</a> </li>
                                </g:each>
                            </ul>

                        </li>
                    </ul>
                    <h2 style="font-size:35px;text-align: center; margin: 5px"> ${libro.titulo}</h2>
                    <div class="container4">
                        <span class="star-rating col-sm-10">
                            <input type="radio" name="rating" value="1" ><i></i>
                            <input type="radio" name="rating" value="2"><i></i>
                            <input type="radio" name="rating" value="3"><i></i>
                            <input type="radio" name="rating" value="4"><i></i>
                            <input type="radio" name="rating" value="5"><i></i>
                        </span>
                    </div>
                    <h4  style="font-size:15px;text-align: left; padding-top: 15px; padding-top:20px; margin: 5px">Autor</h4>
                    <p style="font-size:15px;text-align: left; margin: 2px">${libro.autores.nombreCompleto} </p>
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

            <br>
        </div>


    </section>

</div>
</body>