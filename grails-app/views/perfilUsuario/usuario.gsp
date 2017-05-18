<head>
    <title> Bookscom</title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
</head>
<style type="text/css">
.linea{
    margin: 1px;
    color: #BC673F;
    size: 1px;
}

</style>
<body>
<div style="background: white; color: black">
    <div class="container">

        <!--Fila 1 : Vacia-->
        <div class="row" style="height: 70px">
        </div> <!--Fila 1 : Vacia-->

        <!--Fila 2 : 3 columnas-->
        <div class="row">
            <!--Fila 2.1 -->
           <div class="col-sm-6 col-md-2">
                <section>
                    <div class="row">
                        <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: 1])}"  style="margin-top:15px; background-size:100%auto; height: 250px; width: 180px;"/>
                    </div>

                    <br/>
                 </section>
            </div>  <!--Fila 2.1 -->

            <!--Fila 2.2 -->
            <div class="col-sm-12 col-md-8">
                <section>
                    <h1 style="color: #BC673F;">Listas de preferencia </h1>
                    <hr style="padding:0px; margin:0px; border-color: #BC673F;"/>
                    <div style="height: 10px"></div>
                    <g:each in="${listaLibros}" var="lista">
                    <div class="row">

                        <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                            <g:img dir="images" file="lista.png"  style="margin:15px; width: 80px"/>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                            <p style="padding-top:0px; margin: 0px;"><b><i style="color: black">${lista.nombre}</i></b></p>
                            <p style="padding-top:0px; margin: 0px;">Creación: ${lista.fechaCreacion.toString().substring(0,10)}</p>
                            <p style="padding-top:0px; margin: 0px;">Libros: ${lista.libros.size()}</p>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                            <div class="dropdown">
                               <div id="myDropdown" class="dropdown-content">
                                    <a style="font-size: 13px;">Ver</a>
                                    <a style="font-size: 13px;">Editar</a>
                                    <a style="font-size: 13px;">Eliminar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </g:each>
                </section>

            </div> <!--Fila 2.2 -->

            <!--Fila 2.3 -->
            <div class="col-sm-12 col-md-2">
                <section>
                    <h1 style="color: #BC673F;">Amigos () </h1>
                    <hr style="padding:0px; margin:0px; border-color: #BC673F;"/>
                </section>
            </div> <!--Fila 2.3 -->
         </div> <!--Fila 2 : 3 columnas-->


        <!--Fila 3: Recomendaciones-->
        <div class="row">
        <br/>
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1 style="color: #BC673F;">Bookscom te recomienda</h1>
                <hr style="padding:0px; margin:0px; border-color: #BC673F;"/>
                <div class="swiper-container">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper" style="padding-top: 10px">
                        <!-- Slides -->

                        <div class="swiper-slide separator-slide">
                            <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                    <div> <% def count1=5 %>
                        <g:each in="${1..count1}" var="b" >
                            <span style="font-size:100%;color:darkgoldenrod;">&starf;</span>
                        </g:each>
                    </div>
                        </div>
                        <div class="swiper-slide separator-slide">
                            <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                            <div> <% def count2=5 %>
                                <g:each in="${1..count2}" var="b" >
                                    <span style="font-size:100%;color:darkgoldenrod;">&starf;</span>
                                </g:each>
                            </div>
                        </div>
                        <div class="swiper-slide separator-slide">
                            <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                            <div> <% def count3=5 %>
                                <g:each in="${1..count3}" var="b" >
                                    <span style="font-size:100%;color:darkgoldenrod;">&starf;</span>
                                </g:each>
                            </div>
                        </div>
                        <div class="swiper-slide separator-slide">
                            <g:img dir="images" file="book.png"  style="width: 100px; height: 150px;"/>
                            <div> <% def count4=5 %>
                                <g:each in="${1..count4}" var="b" >
                                    <span style="font-size:100%;color:darkgoldenrod;">&starf;</span>
                                </g:each>
                            </div>
                        </div>

                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need scrollbar -->
            </div>
        </div>
    </div>

        <div class="row" style="height: 10px">
        </div>

        <div class="row" style="padding: 0px">
            <div class="col-sm-12 col-md-12">
            <h1 style="color: #BC673F;">Librerías cercanas a ti </h1>
            <hr style="padding:0px; margin:0px; border-color: #BC673F;"/>
            </div>
        </div>

        <div class="row" style="height: 10px">
        </div>

        <!--Fila 4: Librerías-->
        <section class="spotlight" >
            <div id="map" class="maps"></div>
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
        </section>
        <br/>
        <br/>
    </div>  <!-- Fin div contenedor -->
</div> <!--Fin Div blanco-->

<!-- Scripts -->
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<script>
    function myFunction() {
        document.getElementById("demo").innerHTML = "Hello World";
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

</body>
</html>