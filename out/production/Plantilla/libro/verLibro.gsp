<html>
<head>
    <title>VER LIBRO </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>
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
<div id="usuario">

    <section class="wrapper style5 ver-libro">
        <div class="inner">

            <section class="spotlight">
                <div class="image">
                    <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" height="400px" width="200px" style="padding-top: 60px"/></div>

                <div class="content">
                    <h2 style="font-size:15px;text-align: center; margin-top:50px; margin-bottom: 50px"></h2>
                <h2 style="font-size:35px;text-align: center; margin: 5px">${libro.titulo}</h2>
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
            <section class = "spotligth">
                <div class="box">
                    <form  role="form" action="#" method="POST" id="contacto" title="Nombre">

                        <div class="row uniform">
                                 <ul class="nav2">
                                    <li> <a>Agregar a lista de preferencia</a>
                                        <ul>
                                            <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 1 </a> </li>
                                            <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 2 </a> </li>
                                        </ul>
                                    </li>
                                     <li> <a>Agregar a lista de preferencia</a>
                                         <ul>
                                             <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 1 </a> </li>
                                             <li> <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:1])}"> Lista 2 </a> </li>
                                         </ul>
                                     </li>
                                 </ul>

                        </div>
                    </form>
                </div>
            </section>
        </div>


    </section>


</div>
</body>
</html>