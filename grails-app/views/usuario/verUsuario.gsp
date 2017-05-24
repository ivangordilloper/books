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
body{
    background: #ffffff;
    color: black;
}
form .stars {
    background: url('${resource(dir: "images/css", file: "stars.png")}') repeat-x 0 0;
    width: 150px;
    margin: 0 auto;
}

form .stars input[type="radio"] {
    position: absolute;
    opacity: 0;
    background-color: white;
    color: white;
    filter: alpha(opacity=0)!important;
}
form .stars input[type="radio"].star-5:checked ~ span {
    width: 100%;
}
form .stars input[type="radio"].star-4:checked ~ span {
    width: 80%;
}
form .stars input[type="radio"].star-3:checked ~ span {
    width: 60%;
}
form .stars input[type="radio"].star-2:checked ~ span {
    width: 40%;
}
form .stars input[type="radio"].star-1:checked ~ span {
    width: 20%;
}
form .stars label {
    display: block;
    width: 30px;
    height: 30px;
    margin: 0!important;
    padding: 0!important;
    text-indent: -999em;
    float: left;
    position: relative;
    z-index: 10;
    background: transparent!important;
    cursor: pointer;
}
form .stars label:hover ~ span {
    background-position: 0 -30px;
}
form .stars label.star-5:hover ~ span {
    width: 100% !important;
}
form .stars label.star-4:hover ~ span {
    width: 80% !important;
}
form .stars label.star-3:hover ~ span {
    width: 60% !important;
}
form .stars label.star-2:hover ~ span {
    width: 40% !important;
}
form .stars label.star-1:hover ~ span {
    width: 20% !important;
}
form .stars span {
    display: block;
    width: 0;
    position: relative;
    top: 0;
    left: 0;
    height: 30px;
    background: url('${resource(dir: "images/css", file: "stars.png")}') repeat-x 0 -60px!important;
    -webkit-transition: -webkit-width 0.5s;
    -moz-transition: -moz-width 0.5s;
    -ms-transition: -ms-width 0.5s;
    -o-transition: -o-width 0.5s;
    transition: width 0.5s;
}

.dropbtn {
    background-color: #BC673F;
    color: white;
    box-shadow: none;
    font-size: 15px;
    margin: 0px;
    padding: 1px;
    text-align: center;
    border: none;
    cursor: pointer;
}
hr{
    margin: 1px;
    border-color: #BC673F;
    size: 1px;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #DEB887;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 60px;
    width: 155px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 5px;
    text-decoration: none!important;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}

</style>

<body>
<!-- Main -->
<div style="background: white; color: black;">
<article id="main">
    <header style="padding-top: 50px!important;padding-bottom: 40px!important; margin: 0px;">
        <p><img  src="${createLink(controller: 'imagen', action: 'renderImageU', params: [id: usuarioBusqueda.id])}" style="background-radius:50%; border-radius: 50%;background-size:100%auto; height: 150px; width: 150px;" class="img-profile"/>
        <p style="margin: 0px; padding: 0px"><h2 style="margin: 0px; padding: 0px">${usuarioBusqueda.username}</h2></p>
        <button onclick="agregarAmigo(${usuarioBusqueda.id})" class="special">Agregar</button>
    </header>
</article>


<div class="container">
    <!--una-->
    <div class="row" style="height: 50px;">

    </div> <!--una-->


    <!--dos-->
    <div class="row">
        <!--dos.uno-->
        <div class="col-sm-6 col-md-8">
    <div class="row">
        <table class="table table-striped" style="color: #2E3842; margin: 0px; padding: 0px;">
            <thead>
            <tr>
                <th style="color: #2E3842;">Listas de preferencia de libros</th>
                <th style="color: #2E3842;"></th>
                <th style="color: #2E3842;"><a href="/listaPreferenciaLibro/createlistaPreferenciaLibro"><g:img dir="images" file="mas.png" align="right" class="img-config2" style="height: 20px; width: 20px"/></a></th>
            </tr>
            </thead>
        </table>
    <table class="table table-striped" style="color: #2E3842;">
        <tbody>
        <g:each in="${usuarioBusqueda.listasL}" var="lista">
            <tr>
                <td> <g:img dir="images" file="lista.png"  style="margin:15px; width: 50px"/></td>
                <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${lista.nombre}</i></b></p>
                    <p style="padding:0px;line-height:15px; margin: 0px;">Creación: ${lista.fechaCreacion.toString().substring(0,10)}</p>
                    <p style="padding:0px;line-height:25px; margin: 0px;">Libros: ${lista.libros.size()}</p>
                </td>
                <td>
                    <div class="dropdown">
                        <div id="myDropdown" class="dropdown-content">
                            <a href="${createLink(controller : 'listaPreferenciaLibro', action:'verListaPreferenciaLibro', params: [id: lista.id])}" style="font-size: 13px;">Ver</a>
                            <a href="${createLink(controller : 'listaPreferenciaLibro', action:'update', params: [id: lista.id])}" style="font-size: 13px;">Editar</a>
                            <a href="${createLink(controller : 'listaPreferenciaLibro', action:'delete', params: [id: lista.id])}" style="font-size: 13px;">Eliminar</a>

                        </div>
                    </div>

                </td>
            </tr>

        </g:each>
        </tbody>
    </table>
    </div>
    <br/>
    <div class="row">
        <table class="table table-striped" style="color: #2E3842; padding: 0px; margin: 0px;">
            <thead>
            <tr>
                <th style="color: #2E3842; column-span: 3;">Autores favoritos de ${usuarioBusqueda.username}</th>
                <th style="color: #2E3842;"></th>
                <th style="color: #2E3842;"></th>
            </tr>
            </thead>
        </table>
        <table class="table table-striped" style="color: #2E3842;">
            <tbody>
            <g:each in="${usuarioBusqueda.listaA}" var="lista">
                <tr>
                    <td> <g:img dir="images" file="lista.png"  style="margin:15px; width: 50px"/></td>
                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${lista.nombre}</i></b></p>
                        <p style="padding:0px;line-height:15px; margin: 0px;">Creación: ${lista.fechaCreacion.toString().substring(0,10)}</p>
                        <p style="padding:0px;line-height:25px; margin: 0px;">Libros: ${lista.autores.size()}</p>
                    </td>
                    <td>
                        <div class="dropdown">
                            <div id="myDropdown2" class="dropdown-content">
                                <a href="${createLink(controller : 'listaPreferenciaLibro', action:'verListaPreferenciaLibro', params: [id: lista.id])}" style="font-size: 13px;">Ver</a>
                                <a href="${createLink(controller : 'listaPreferenciaLibro', action:'update', params: [id: lista.id])}" style="font-size: 13px;">Editar</a>
                                <a href="${createLink(controller : 'listaPreferenciaLibro', action:'delete', params: [id: lista.id])}" style="font-size: 13px;">Eliminar</a>

                            </div>
                        </div>

                    </td>
                </tr>

            </g:each>
            </tbody>
        </table>
    </div>

        </div> <!--dos.uno-->
        <!--dos.tres-->
        <div class="col-sm-12 col-md-4">

    <table class="table table-striped" style="color: #2E3842; margin: 0px; padding: 0px;">
        <thead style="border: transparent">
        <tr>
            <th style="color: #2E3842;">Amigos</th>
            <th style="color: #2E3842;"></th>
            <th style="color: #2E3842;"></th>
        </tr>
        </thead>
    </table>
    <div class="row">
<g:each in="${usuarioBusqueda.amigos}" var="amigo">
        <ul class="list-group" style="padding-top: 20px;" >
            <li class="list-group-item" >

                <div class="row">
                    <div class="col-xs-3 col-md-3">
                        <img  src="${createLink(controller: 'imagen', action: 'renderImageU', params: [id: amigo.id])}" style="background-size:100%auto; height: 100px; width: 120px;" class="img-profile"/>
                        <p style="text-align: center; padding-left: 16px;"> ${amigo.username}</p>
                        <button onclick="agregarAmigo()" class="special" style="font-size: 10px; ">Agregar</button>
                    </div>
                </div>

            </li>
        </ul>
</g:each>
    </div>
        </div> <!--dos.tres-->

</div>
<!-- Scripts -->
<script>
    function agregarAmigo(id) {
        var form = new FormData();
        form.append("idAmigo", id);


        var settings = {
            "async": true,
            "crossDomain": true,
            "url": "${application["IPSOURCE"]}usuario/agregarAmigo",
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
            alert(response);
        });


    }

</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>
</div>
</div>
</body>
</html>