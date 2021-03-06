<html>
<head>
    <title> USUARIO </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>
</head>
<body id="perfilusuario">

    <!-- Main -->
    <article id="main">
        <header>
            <h2>Bienvenido usuario</h2>
        </header>


        <section class="spotlight">
            <div class="image"><g:img dir="image" file="choose.jpg" alt="" /></div><div class="content">
            <div class="swiper-container">
                <h4>Tal vez te gusten estos libros</h4>
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->

                    <div class="swiper-slide"> <a  href="/usuario/libro"><g:img dir="images" file="book.png" class="image-slide"/><div class="text-book">Libro 1</div></a></div>

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
        <section >
            <div id="map" style="width:864px;height:400px;"></div>
            <script>
                var pos;
                var map;
                var infoWindow;
                var labels = 'BCDEFGHIJKLMNOPQRSTUVWXYZ';
                var labelIndex = 0;

                function initMap() {
                    map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 14
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
                                url: "/assets/gps.png", // url
                                scaledSize: new google.maps.Size(50, 50), // scaled size
                                origin: new google.maps.Point(0,0), // origin
                                anchor: new google.maps.Point(0, 0) // anchor
                            };
                            var markerActual = new google.maps.Marker({
                                position: pos,
                                map: map,
                                icon: icon,
                                label: 'A'
                            })

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
                                google.maps.event.addListener(marker, 'click', function() {
                                    infoWindow.setContent(place.name);
                                    //infoWindow.setContent(place.address);
                                    infoWindow.open(map, this);
                                });
                            }
                            var service = new google.maps.places.PlacesService(map);
                            service.nearbySearch({
                                location: libreria,
                                radius: 100,
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
    <section class="spotlight">
        <div class="image"><g:img dir="images" file="libros4.png" alt="" /></div><div class="content">
        <h2>Diviertete eligiendo tus libros favoritos
        </h2>

    </div>


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