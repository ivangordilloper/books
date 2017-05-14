<html>
<head>
    <title> CONTACTO </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
    <script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
    <script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
    <script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
    <g:external dir="css" file="modals.css"/>

    <script type="text/javascript" src="${resource(dir: '/assets/js/',file:"MiAngular.js")}" async defer></script>
    <g:external dir="js" file="angular.min.js"/>

    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" async defer></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" async defer></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js" async defer></script>
</head>
<body>
<div id="inicio">
    <!-- Main -->
    <article id="main">
        <header>
            <h2>Contacto</h2>
        </header>

        <section class="wrapper style5">
            <div class="inner">
                <section>
                    <div class="box">

                        <div ng-app="HelloUserApp">
                            <div ng-controller="HelloUserController">
                                <form class="form-inline">
                                    <input ng-model="query" type="text"
                                           placeholder="Filter by" autofocus>
                                </form>
                                <ul>
                                    <li data-ng-repeat="element in busqueda.libros | filter:query ">{{element.name}} </li>
                                </ul>
                                <ul>
                                    <li data-ng-repeat="element in busqueda.autores | filter:query ">{{element.name}} </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </section>
            </div>
        </section>
    </article>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
