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
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
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
                        <h4>Contacto</h4>
                        <br>
                        <b>Dirección:</b> Juan de Dios Bátiz, Nueva Industrial Vallejo, Ciudad de México, CDMX
                        <br>
                        <b>Teléfono:</b>01 55 5729 6000
                        <br>
                        <br>
                        <div id="map"></div>
                        <form method="post" action="#">

                            <div class="row uniform">
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="demo-name" id="demo-name1" value="" placeholder="Name" />
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="demo-name" id="demo-name2" value="" placeholder="Name" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <input type="email" name="demo-email" id="demo-email" value="" placeholder="Correo Electrónico" />
                                </div>

                                <div class="12u$">
                                    <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" value="Send Message" class="special" /></li>
                                        <li><input type="reset" value="Reset" /></li>
                                    </ul>
                                </div>
                            </div>
                        </form>

                    </div>

                </section>

            </div>
        </section>
    </article>
</div>
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
                        icon: icon,
                        label: 'Tu estás aquí\n'
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
                                var contentString = '<div style="color:#000000"><b>' + place.name + '</b><br>' + details.formatted_address +
                                    '</div>';

                                infoWindow.setContent(contentString);
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
</body>
</html>
