<html>
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title> <g:layoutTitle/></title>
    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <g:external dir="css" file="slides.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="style-user.css"/>
    <g:external dir="css" file="letra.css"/>
    <g:layoutHead />



</head>
<body>

<!-- Page Wrapper -->
<div id="page-wrapper">

    <!-- Header -->
    <header id="header">
        <h1><a href="../">BooksCom</a></h1>
        <nav id="nav">
            <ul>

                <li class="special">

                    <a href="#menu" class="menuToggle"><g:img src="images" file="profile.png" class = "image-profile" href="/usuario/Libro"/><span>usuario</span></a>
                    <div id="menu">
                        <ul>
                            <li><g:img src="images" file="amigom.png" height="30px" align="left"> </g:img><a href="/usuario/read">  Buscar usuario</a></li>
                            <li><g:img src="images" file="libro1m.png" height="30px" align="left"> </g:img><a href="/libro/read">  Buscar libro</a></li>
                            <li><g:img src="images" file="autor1m.png" height="30px" align="left"> </g:img><a href="/autor/read">  Buscar autor</a></li>
                            <li><g:img src="images" file="tiendam.png" height="30px" align="left"></g:img><a href="/inicio/tienda"> Buscar tienda</a></li>
                            <li><g:img src="images" file="librosm.png" height="30px" align="left"></g:img><a href="/listaPreferenciaLibro/read">Ver lista libros</a></li>
                            <li><g:img src="images" file="autorm.png" height="30px" align="left"></g:img><a href="/listaPreferenciaAutor/read">Ver lista autores</a></li>
                            <li><g:img src="images" file="fbm.png" height="30px" align="left"></g:img><a href="/usuario/read">Conectar con Facebook</a></li>
                            <li><g:img src="images" file="confm.png" height="30px" align="left"></g:img><a href="/usuario/read">Configuracion</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
</div>
<g:layoutBody/>
<!-- Footer -->
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
</div>

<!-- Mensajes -->
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Mensaje de confirmación</h4>
            </div>
            <div class="modal-body">
                <p>¿Está seguro de que desea cancelar la solicitud de cita?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"skel.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"util.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"main.js")}"></script>
</body>
</html>