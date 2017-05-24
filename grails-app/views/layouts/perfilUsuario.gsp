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
    <g:external dir="js" file="angular.min.js"/>
    <script type="text/javascript" src="${resource(dir: '/assets/js/',file:"MiAngular.js")}" async defer></script>
    <link rel="stylesheet" href="${resource(dir:'css', file:'slides.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'swiper.min.css')}" type="text/css" media="all"/>

    <link rel="stylesheet" href="${resource(dir:'css', file:'main.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'style-user.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'letra.css')}" type="text/css" media="all"/>


    <g:layoutHead />



</head>
<style type="text/css">
    body{
        background: #0B173B;
    }
</style>
<body>

<!-- Page Wrapper -->
<div id="page-wrapper">

    <!-- Header -->
    <header id="header">
        <h1><a href="../">BooksCom</a></h1>


    <div ng-app="HelloUserApp">
        <div ng-controller="HelloUserController">
            <form class="form-inline">
                <div style="margin-left: 65%; margin-right: 12%;">
                    <input ng-model="query" type="text"
                           placeholder="Buscar..." autofocus onkeypress="myFunction()" style="-webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; background-color :#AC654B!important; border: 2px solid transparent!important; margin-right:200px!important; font-size: 15px!important; width: auto!important; height: 30px!important; margin-top: 10px;">
                </div>
            </form>
            <div class="box" id="busqueda" style="display:none; margin-top:-25px; margin-left: 65%; margin-right: 10%; padding-right: 3px; padding-left: 3px; padding-top: 7px; padding-bottom: 3px; background-color: #FFFFFF; color: #000000;">
                <ul style="list-style: none; padding: 0px; margin: 0px;">
                    <li data-ng-repeat="element in busqueda.libros | filter:query as results ">
                        <div class="row" style="padding: 10px;">
                        <div class="col-xs-12 col-md-3">
                        <img ng-src="/imagen/renderImageL/{{element.id}}"height="60" width="50" style="margin: 0px; padding: 0px;"/>
                        </div>
                            <div class="col-xs-12 col-md-9">
                            <p style="margin: 0px; padding: 0px;line-height: 1; color: black; font-size: 12px;"><a style="font-size: 15px;  border-bottom:none!important; " ng-href="/perfilUsuario/verLibro/{{element.id}}">
                           <b style="color: black;"> {{element.name}} </b>
                            </a>
                            </p>
                                <p style="padding-top: 4px;line-height: 1; margin: 0px; font-size: 12px; color: black;">LIBRO</p>

                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px; height: 1px; background: gainsboro;">
                        </div>
                    </li>
                </ul>

                <ul style="list-style: none; padding: 0px; margin: 0px;">
                    <li data-ng-repeat="element in busqueda.autores | filter:query ">
                        <div class="row" style="padding: 10px;">
                            <div class="col-xs-12 col-md-3">
                             <img ng-src="../imagen/renderImageA/{{element.id}}"height="60" width="50" style="margin: 0px; padding: 0px;"/>
                            </div>
                                <div class="col-xs-12 col-md-9">
                                <p style="margin: 0px; padding: 0px;line-height: 1; color: black; font-size: 12px;"><a style="font-size: 15px;  border-bottom:none!important;" ng-href="../perfilUsuario/verAutor/{{element.id}}">
                                    <b style="color: black;"> {{element.name}} </b>
                                </a> </p>
                                    <p style="padding-top: 4px;line-height: 1; margin: 0px; font-size: 12px; color: black;">AUTOR</p>

                                </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px; height: 1px; background: gainsboro;">
                        </div>
                    </li>
                </ul >

                <ul style="list-style: none; padding: 0px; margin: 0px;">
                    <li data-ng-repeat="element in busqueda.usuarios | filter:query ">
                        <div class="row" style="padding: 10px;">
                            <div class="col-xs-12 col-md-3">
                        <img ng-src="/imagen/renderImageU/{{element.id}}"height="60" width="50" style="margin: 0px; padding: 0px;"/>
                            </div>
                            <div class="col-xs-12 col-md-9">
                                <p style="margin: 0px; padding: 0px;line-height: 1; color: black; font-size: 12px;"><a style="font-size: 15px;  border-bottom:none!important;" ng-href="/usuario/verUsuario/{{element.id}}">
                                    <b style="color: black;"> {{element.name}} </b>
                                </a> </p>
                                <p style="padding-top: 3px;line-height: 1; margin: 0px; font-size: 12px; color: black;">USUARIO</p>

                            </div>
                        </div>
                        <div class="row" style="padding: 0px; margin: 0px; height: 1px; background: gainsboro;">
                        </div>
                    </li>
                </ul>

            </div>
            </div>

    </div>





    <div id="livesearch"> </div>

        <nav id="nav">

            <ul>
               <li style="padding-right: 60px;">

               </li>
                <li class="special">

                    <a href="#menu" class="menuToggle"><img  src="${createLink(controller: 'imagen', action: 'renderImageU', params: [id: usuarioS.id])}" style="background-radius:50%; border-radius: 50%;background-size:100%auto; height: 31px; width: auto; margin-bottom: -9px; margin-right: 10px!important;"/><span>${usuarioS.username}</span></a>
                    <div id="menu">
                        <ul>
                            <li><a href="/perfilUsuario/usuario">Mi perfil</a></li>
                            <li><a href="${createLink(controller : 'perfilUsuario', action:'librosCategoria')}">  Buscar libros</a></li>
                            <li><a href="${createLink(controller : 'chat', action:'index')}">  Comunidad</a></li>
                            <li><a href="#" id="IngresaFacebook" onclick="ingresar()">Conectar con Facebook</a></li>
                            <li><a href="/logout">Cerrar sesión</a></li>
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
<!-- Scripts -->
<script>
    function myFunction() {
        $("#busqueda").css('display', '');
        var prueba = $("#obtenerValor").val();
        //alert(prueba);
    }
</script>
<script>

    var usuarios = []
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '1246188562111122',
            xfbml      : false,
            version    : 'v2.9'
        });
    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function validarUsuario() {

        FB.getLoginStatus(function(response) {
            if(response.status == 'connected') {
                FB.api('/me?fields=id,name,email,friends{email,name},books', function(response){
                    alert('Hola ' + response.friends);
                    //console.log(response)
                    getEmailFriends(response)
                });
            } else if(response.status == 'not_authorized') {
                alert('Debes autorizar la app!');
            } else {
                alert('Debes ingresar a tu cuenta de Facebook!');
            }
        });
    }

    function ingresar() {
        FB.login(function(response){
            validarUsuario();
        }, {scope: 'public_profile, email'});
    }

    function getEmailFriends(response){
        var jsonObj ={};
        var jsonObj_Books ={};

        console.log(response);
        console.log("hola");

        for (i in response.friends.data){
            //console.log("hola");
            var newUser = "user" + i;
            var newValue = "value" + i;
            jsonObj[i]=response.friends.data[i].id;



        }
        for (i in response.books.data){
            //console.log("hola");
            var newUser = "user" + i;
            var newValue = "value" + i;
            jsonObj_Books[i]=response.books.data[i].name;



        }
        console.log(jsonObj_Books);

        sendFriends(response.id, jsonObj,jsonObj_Books)
    }


    function sendFriends(id, friends,books) {

        var form = new FormData();
        form.append("idUsuarioFB", id);
        form.append("idAmigos", JSON.stringify(friends));
        form.append("books", JSON.stringify(books));

        console.log(friends)
        var settings = {
            "async": true,
            "crossDomain": true,
            "url": "${application["IPSOURCE"]}facebook/connect",
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

    console.log(usuarios)
</script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"skel.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"util.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"main.js")}"></script>
</body>
</html>