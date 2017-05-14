<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title> <g:layoutTitle/></title>
    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="slides.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="style-user.css"/>
    <g:external dir="css" file="chat.css"/>

    <g:layoutHead />

</head>

<div id="page-wrapper">

    <!-- Header -->
    <header id="header">
        <h1><a href="/perfilUsuario/usuario">BooksCom</a></h1>
        <nav id="nav">
            <ul>

                <li class="special">

                    <a href="#menu" class="menuToggle"><g:img src="images" file="profile.png" class = "image-profile" href="/usuario/Libro"/><span>${idU1.username}</span></a>
                    <div id="menu">
                        <ul>
                            <li><g:img src="images" file="amigom.png" height="30px" align="left"> </g:img><a href="${createLink(controller : 'usuario', action:'read')}">  Buscar usuario</a></li>
                            <li><g:img src="images" file="libro1m.png" height="30px" align="left"> </g:img><a href="${createLink(controller : 'libro', action:'librosCategoria')}">  Buscar libro</a></li>
                            <li><g:img src="images" file="autor1m.png" height="30px" align="left"> </g:img><a href="${createLink(controller : 'autor', action:'verCatalogoAutor')}">  Buscar autor</a></li>
                            <li><g:img src="images" file="librosm.png" height="30px" align="left"></g:img><a href="${createLink(controller : 'listaPreferenciaLibro', action:'verListaLibro')}">Ver lista libros</a></li>
                            <li><g:img src="images" file="autorm.png" height="30px" align="left"></g:img><a href="${createLink(controller : 'listaPreferenciaAutor', action:'verListaAutor')}">Ver lista autores</a></li>
                            <li><g:img src="images" file="fbm.png" height="30px" align="left"></g:img><a href="#" id="IngresaFacebook" onclick="ingresar()">Conectar con Facebook</a></li>
                            <li><g:img src="images" file="confm.png" height="30px" align="left"></g:img><a href="/usuario/read">Configuracion</a></li>

                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
</div>
<g:layoutBody/>

<div class="row pa"></div>
<footer id="footer">
    <ul class="icons">
        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
        <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
        <li><a href="#" class="icon fa-envelope-o"><span class="label">Correo Electrónico</span></a></li>
    </ul>
    <ul class="copyright">

    </ul>
</footer>

<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"skel.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"util.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"main.js")}"></script>

</html>