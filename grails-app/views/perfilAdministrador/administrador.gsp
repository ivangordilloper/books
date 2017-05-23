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
.linea{
    margin: 1px;
    color: #BC673F;
    size: 1px;
}

</style>
<body>
<div style="background:white; color: black; font-size: 15px; padding: 0px; margin: 0px;">
    <div class="container">

        <!--Fila 1 : Vacia-->
        <div class="row" style="height: 45px">
        </div> <!--Fila 1 : Vacia-->

    <!--Fila 2 : 3 columnas-->
        <div class="row">
            <!--Fila 2.1 -->
            <div class="col-sm-6 col-md-2">
                <div class="container">
                    <div class="row">
                        <p style="margin-bottom:1px; color: black; font-size: 35px"><i></i> </p>
                        <br/>
                    </div>
                    <div class="row">
                        <img src="${createLink(controller: 'imagen', action: 'renderImageU', params: [id: usuarioS.id ])}"  style="height: 170px; width: 170px;"/>
                    </div>
                    <div class="row">
                        <br/>
                        <div class="dropdown">
                            <button class="special" style="width: 155px; font-size: 10px;">Editar foto</button>
                        </div>
                    </div>


                </div>
            </div>  <!--Fila 2.1 -->

        <!--Fila 2.2 -->
            <div class="col-sm-12 col-md-10">
                <section>

                    <ul class="nav nav-tabs">

                        <li ><a data-toggle="tab" href="#perfil">Perfil</a></li>
                        <li><a data-toggle="tab" href="#amigos">Autores</a></li>
                        <li class="active"><a data-toggle="tab" href="#preferencia">Libros</a></li>
                        <li ><a data-toggle="tab" href="#librerias">Usuarios</a></li>

                    </ul>

                    <div class="tab-content">
                        <div id="perfil" class="tab-pane fade">
                            <table class="table table-striped" style="color: #2E3842;">
                                <thead>
                                <tr>
                                    <th style="color: #2E3842;">Perfil</th>
                                    <th style="color: #2E3842;"><a href="${createLink(controller : 'perfilUsuario', action:'update')}" ><g:img dir="images" file="config.png" align="right" class="img-config2" style="height: 20px; width: 20px"/></a></th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td> Nombre </td>
                                    <td> <p id=o; style="padding:0px; margin: 0px;"><b><i style="color: black">${Plantilla.Usuario.findById(usuarioS.id).nombre}</i></b></p>
                                        <div id="ocultar" style="display: none">
                                            <div class="col-xs-6 col-md-6">
                                                <g:field  type="text" name="nombre" id="nombre"  value="${Plantilla.Usuario.findById(usuarioS.id).nombre}" requiered="true" maxlength="30"/>
                                            </div>
                                        </div>
                                    </td>

                                </tr>
                                <tr>
                                    <td> Apellido paterno </td>
                                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${Plantilla.Usuario.findById(usuarioS.id).apellidoP}</i></b></p>
                                        <div id="ocultar2" style="display: none"> Hola
                                        </div> </td>
                                </tr>
                                <tr>
                                    <td> Apellido materno</td>
                                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${Plantilla.Usuario.findById(usuarioS.id).apellidoM}</i></b></p>
                                        <div id="ocultar3" style="display: none"> Hola
                                        </div> </td>
                                </tr>
                                <tr>
                                    <td> Nombre de usuario</td>
                                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${Plantilla.Usuario.findById(usuarioS.id).username}</i></b></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td> Correo electrónico</td>
                                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${Plantilla.Usuario.findById(usuarioS.id).correo}</i></b></p>
                                        <div id="ocultar4" style="display: none"> Hola
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td> Fecha nacimiento</td>
                                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${Plantilla.Usuario.findById(usuarioS.id).fechaNac.toString().substring(0,10)}</i></b></p>
                                        <div id="ocultar5" style="display: none"> Hola
                                        </div>
                                    </td>
                                </tr>

                                </tbody>

                            </table>
                        </div>

                        <div id="librerias" class="tab-pane">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <table class="table table-striped" style="color: #2E3842;">
                                        <thead>
                                        <tr>
                                            <th style="color: #2E3842;">Usuarios</th>
                                            <th style="color: #2E3842;"></th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <g:each in="${listaUsuario}" var="lista">
                                            <tr>
                                                <td> <g:img dir="images" file="lista.png"  style="margin:15px; width: 50px"/></td>
                                                <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${lista.nombre}</i></b></p>
                                                    <p style="padding:0px;line-height:15px; margin: 0px;">Apellidos: ${lista.apellidoP} ${lista.apellidoM}</p>
                                                    <p style="padding:0px;line-height:25px; margin: 0px;">Genero: ${lista.genero}</p>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <div id="myDropdown1" class="dropdown-content">
                                                            <a href="${createLink(controller : 'usuario', action:'verUsuario', params: [id: lista.id])}" style="font-size: 13px;">Ver</a>
                                                            <a href="${createLink(controller : 'usuario', action:'delete', params: [id: lista.id])}" style="font-size: 13px;">Eliminar</a>

                                                        </div>
                                                    </div>

                                                </td>
                                            </tr>

                                        </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>


                        <div id="preferencia" class="tab-pane active">
                            <div id="myDIV" style="padding-top: 5px; display: none;">
                                <div class="container">
                                    <p style="padding: 0px; margin: 0px;">Crear Libro</p>
                                    <g:form method="post" controller="libro" action="createLibro">
                                        <g:hiddenField name="idUsuario" value="${idU}" />
                                        <div class="row uniform">

                                           <!--Crear libro-->
                                        </div>
                                    </g:form>
                                </div>
                            </div>
                            <table class="table table-striped" style="color: #2E3842;">
                                <thead>
                                <tr>
                                    <th style="color: #2E3842;">Libros</th>
                                    <th style="color: #2E3842;"></th>
                                    <th style="color: #2E3842;"><a onclick="myFunction()"><g:img dir="images" file="mas.png" align="right" class="img-config2" style="height: 20px; width: 20px"/></a></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${libros1}" var="lista">
                                    <tr>
                                        <td> <g:img dir="images" file="book.png"  style="margin:15px; width: 50px"/></td>
                                        <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${lista.titulo}</i></b></p>
                                            <p style="padding:0px;line-height:15px; margin: 0px;">Año: ${lista.fechaPub}</p>
                                            <p style="padding:0px;line-height:25px; margin: 0px;">Autores: ${lista.autores.nombreCompleto}</p>
                                        </td>
                                        <td>
                                            <div class="dropdown">
                                                <div id="myDropdown" class="dropdown-content">
                                                    <a href="${createLink(controller : 'libro', action:'verLibro', params: [id: lista.id])}" style="font-size: 13px;">Ver</a>
                                                    <a href="${createLink(controller : 'libro', action:'update', params: [id: lista.id])}" style="font-size: 13px;">Editar</a>
                                                    <a href="${createLink(controller : 'libro', action:'delete', params: [id: lista.id])}" style="font-size: 13px;">Eliminar</a>

                                                </div>
                                            </div>

                                        </td>
                                    </tr>

                                </g:each>
                                </tbody>
                            </table>



                         </div>

                        <div id="amigos" class="tab-pane fade">
                            <table class="table table-striped" style="color: #2E3842;">
                                <thead>
                                <tr>
                                    <th style="color: #2E3842;">Autores</th>
                                    <th style="color: #2E3842;"></th>
                                    <th style="color: #2E3842;"><a onclick="myFunction1()"><g:img dir="images" file="mas.png" align="right" class="img-config2" style="height: 20px; width: 20px"/></a></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${autores1}" var="amigo">
                                    <tr>
                                        <td><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: amigo.id])}"  style="background-radius:50%; border-radius: 50%; background-size:100%auto; height: 50px; width: 50px"/></td>
                                        <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${amigo.nombreCompleto}</i></b></p>
                                            <p style="padding:0px;line-height:15px; margin: 0px;">Creación: ${amigo.fechaNac}</p>
                                        </td>
                                        <td>
                                            <div class="dropdown">
                                                <div id="myDropdown3" class="dropdown-content">
                                                    <a href="${createLink(controller : 'autor', action:'verAutor', params: [id: amigo.id])}" style="font-size: 13px;">Ver</a>
                                                    <a href="${createLink(controller : 'autor', action:'update', params: [id: amigo.id])}" style="font-size: 13px;">Editar</a>
                                                    <a href="${createLink(controller : 'autor', action:'de', params: [id: amigo.id])}" style="font-size: 13px;">Eliminar</a>

                                                </div>
                                            </div>

                                        </td>
                                    </tr>

                                </g:each>
                                </tbody>
                            </table>
                        </div>

                        <div style="height: 10px"></div>
                    </div>
                </section>

            </div> <!--Fila 2.2 -->

        </div> <!--Fila 2 : 3 columnas-->


        <div class="row" style="height: 0px">
        </div>







        <br/>
        <br/>
    </div>  <!-- Fin div contenedor -->
</div> <!--Fin Div blanco-->

<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<script>
    function myFunction() {
       window.location.replace('/libro/createLibro')
    }
    function myFunction1() {
        window.location.replace('/autor/createAutor')
    }
</script>

<script>
    function myFunction2() {
        var x = document.getElementById('ocultar');
        var y = document.getElementById('ocultar2');
        var z = document.getElementById('o');
        if (x.style.display === 'none') {
            x.style.display = 'block';
        } else {
            x.style.display = 'none';
        }
        if (y.style.display === 'none') {
            y.style.display = 'block';
        } else {
            y.style.display = 'none';
        }
        if (z.style.display === 'none') {
            z.style.display = 'block';
        } else {
            z.style.display = 'none';
        }
    }
</script>

<script>
    //Function To Display Popup
    function div_show() {
        document.getElementById('abc').style.display = "block";
    }
</script>

<g:javascript>
    $(document).ready(function () {
        //initialize swiper when document ready
        var mySwiper = new Swiper ('.swiper-container', {
            // Optional parameters
            direction: 'horizontal',
            slidesPerView: 3,
            paginationClickable: true,
            spaceBetween: 30,
            // Navigation arrows
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            loop: true,
            keyboardControl: true,
        })
    });
</g:javascript>

<script>
    var pos;
    var map;
    var infoWindow;
    var labels = 'BCDEFGHIJKLMNOPQRSTUVWXYZ';
    var labelIndex = 0;

    function initMap() {
        var myLatLng = {lat: 19.5045912, lng: -99.146815};
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 14,
            styles: [
                {
                    "featureType": "administrative",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "stylers": [
                        {
                            "visibility": "simplified"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [
                        {
                            "visibility": "simplified"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "stylers": [
                        {
                            "visibility": "simplified"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "stylers": [
                        {
                            "visibility": "simplified"
                        }
                    ]
                },
                {
                    "featureType": "landscape",
                    "stylers": [
                        {
                            "visibility": "simplified"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "stylers": [
                        {
                            "visibility": "on"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "visibility": "on"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "stylers": [
                        {
                            "color": "#84afa3"
                        },
                        {
                            "lightness": 52
                        }
                    ]
                },
                {
                    "stylers": [
                        {
                            "saturation": -17
                        },
                        {
                            "gamma": 0.36
                        }
                    ]
                },
                {
                    "featureType": "transit.line",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#3f518c"
                        }
                    ]
                }
            ]
        });
        infoWindow = new google.maps.InfoWindow({map: map}); //lat: , lng:
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                pos = {
                    lat: 19.5045912,
                    lng: -99.146815
                };
                var libreria = new google.maps.LatLng(19.5045912,-99.146815);
                var icon = {
                    url: "/assets/marcador.png", // url
                    origin: new google.maps.Point(0,0), // origin
                    anchor: new google.maps.Point(0, 0) // anchor
                };
                var markerActual = new google.maps.Marker({
                    position: pos,
                    map: map,
                    icon: icon
                });

                map.setCenter(pos);
                function callback(results, status) {
                    if (status === google.maps.places.PlacesServiceStatus.OK) {
                        for (var i = 0; i < results.length; i++) {
                            createMarker(results[i]);
                        }
                    }
                }

                function createMarker(place) {
                    var placeLoc = place.geometry.location;
                    var marker = new google.maps.Marker({
                        map: map,
                        label: labels[labelIndex++ % labels.length],
                        position: place.geometry.location
                    });
                    var service2 = new google.maps.places.PlacesService(map);
                    var request = { reference: place.reference };
                    service2.getDetails(request,function(details, status){
                        google.maps.event.addListener(marker, 'click', function() {
                            var contentString = '<div><'

                            infoWindow.setContent(place.name + '<br>' + details.formatted_address);
                            //infoWindow.setContent(place.address);
                            infoWindow.open(map, this);
                        });
                    });


                }
                var service = new google.maps.places.PlacesService(map);
                service.nearbySearch({
                    location: libreria,
                    radius: 1000,
                    types: ['book_store']
                }, callback);
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCeBwBcIGZR7nUPEjmCnkvh9jhFfsXTBbE&libraries=places&callback=initMap" async defer></script>


</body>
</html>