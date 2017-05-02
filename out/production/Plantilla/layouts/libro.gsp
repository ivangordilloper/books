<html>
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title> <g:layoutTitle/></title>
    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />

    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="style-user.css"/>

    <g:layoutHead />

</head>

<body class = "landing">
<!-- Page Wrapper -->
<div id="page-wrapper">
    <!-- Header -->
    <header id="header">
        <h1><a href="http://localhost:8092/inicio/Home">BooksCom</a></h1>
        <nav id="nav">
            <ul>
                <li class="special">
                    <g:img dir="images" file="profile.png" alt="profile" style = "height: 31px;  width: auto; margin-bottom: -9px;"/>
                </li>
                <li class="special">
                    <a href="#menu" class="menuToggle"><span>Menú</span></a>
                    <div id="menu">
                        <ul>
                            <li><g:img src="images" file="amigom.png" height="30px" align="left"> </g:img><a href="/usuario/read">  Buscar usuario</a></li>
                            <li><g:img src="images" file="libro1m.png" height="30px" align="left"> </g:img><a href="/libro/read">  Buscar libro</a></li>
                            <li><g:img src="images" file="autor1m.png" height="30px" align="left"> </g:img><a href="/autor/read">  Buscar autor</a></li>
                            <li><g:img src="images" file="tiendam.png" height="30px" align="left"></g:img><a href="/inicio/tienda"> Buscar tienda</a></li>
                            <li><g:img src="images" file="librosm.png" height="30px" align="left"></g:img><a href="/listaPreferenciaLibro/read">Ver lista libros</a></li>
                            <li><g:img src="images" file="autorm.png" height="30px" align="left"></g:img><a href="/listaPreferenciaAutor/read">Ver lista autores</a></li>
                            <li><g:img src="images" file="fbm.png" height="30px" align="left"></g:img><a href="/usuario/read">Conectar con Facebook</a></li>
                            <li><g:img src="images" file="confm.png" height="30px" align="left"></g:img><a href="/usuario/read">Configuracion</a></li>   </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
    <g:layoutBody/>
    <!-- Footer -->
    <footer id="footer">
        <ul class="icons">
            <li><a href="#" class="icon fa-twitter"></a></li>
            <li><a href="https://www.facebook.com/BooksCom-227500564389966" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
            <li><a href="#" class="icon fa-envelope-o"><span class="label">Correo Electrónico</span></a></li>
        </ul>
        <ul class="copyright">
        </ul>
    </footer>
</div>


<!-- Scripts -->
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"skel.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"util.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"main.js")}"></script>

</body>


