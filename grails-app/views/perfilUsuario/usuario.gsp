<html>
<head>
    <title> USUARIO </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>

    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
</head>
<body id="perfilusuario">

    <!-- Main -->
    <article id="main">
        <header>
            <h2>${pal} ${usuarioS.username}</h2>
        </header>


        <section class="spotlight swipbooks">
            <div class="image"><g:img dir="image" file="choose.jpg" alt="" /></div><div class="content">
            <div class="swiper-container">

                <h4>Tal vez te gusten estos libros</h4>
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->


                <g:each in="${libros1}" var="libro">
                    <div class="swiper-slide separator-slide"> <a  href="${createLink(controller : 'libro', action:'verLibro', params: [id:(libro.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${libro.titulo}</div></a>
                    </div>
                </g:each>


                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

                <!-- If we need scrollbar -->
            </div>
        </div>
        </section>

    <section class="spotlight swipbooks">
        <div class="image"><g:img dir="images" file="libros4.png" alt="" /></div>
        <div class="content">
            <div class="swiper-container">
                <h4>Tal vez te gusten estos libros</h4>
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->
                <g:each in="${autores1}" var="autor">
                    <div class="swiper-slide separator-slide"> <a  href="${createLink(controller : 'autor', action:'verAutor', params: [id:(autor.id)])}" ><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: autor.id])}" class="image-slide" style=" background-size:100%auto; height: 90px; width: 90px;"/><div class="text-book">${autor.nombreCompleto}</div></a>
                    </div>
                </g:each>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

                <!-- If we need scrollbar -->
            </div>
    </div>
    </section>
    <section class="spotlight white-back">
        <div class="content listas-full">
                <h4 style="text-align: center">Líbrerias cercanas a ti.</h4>
        </div>
    </section>

        <section class="spotlight" >
            <div id="map" class="maps"></div>
            <script>
                var pos;
                var map;
                var infoWindow;
                var labels = 'BCDEFGHIJKLMNOPQRSTUVWXYZ';
                var labelIndex = 0;

                function initMap() {
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
                    infoWindow = new google.maps.InfoWindow({map: map});
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition(function(position) {
                            pos = {
                                lat: position.coords.latitude,
                                lng: position.coords.longitude
                            };
                            var libreria = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
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
                                radius: 10000,
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





        <div id="example" class="modal hide fade in" style="display: none;">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Cabecera de la ventana</h3>
            </div>
            <div class="modal-body">
                <h4>Texto de la ventana</h4>
                <p>Mas texto en la ventana.</p>
            </div>
            <div class="modal-footer">
                <a href="index.html" class="btn btn-success">Guardar</a>
                <a href="#" data-dismiss="modal" class="btn">Cerrar</a>
            </div>
        </div>
        <!--
							<div id="cuadroFlotante">
										¿Qué somos?
									</div>
									<div id="texto">
										...
							</div>
						-->
    </article>
    <!-- Scripts -->
    <script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
    <script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
    <script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>

    <script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

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
</div>
</body>
</html>