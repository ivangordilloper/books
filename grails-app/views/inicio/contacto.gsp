<html>
<head>
    <title> BOOKSCOM </title>
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
                        <div id="map" class="maps"></div>
                        <br>
                        <br>
                        <script>
                            function initMap() {
                                var myLatLng = {lat: 19.5045912, lng: -99.146815};

                                var map = new google.maps.Map(document.getElementById('map'), {
                                    zoom: 17,
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
                                    ],
                                    center: myLatLng
                                });

                                var marker = new google.maps.Marker({
                                    position: myLatLng,
                                    map: map
                                });
                            }
                        </script>
                        <script async defer
                                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCeBwBcIGZR7nUPEjmCnkvh9jhFfsXTBbE&callback=initMap">
                        </script>
                        <h4>Realiza un comentario o sugerencia.</h4>
                        <form method="post" action="enviar">

                            <div class="row uniform">
                                <div class="12u 12u$(xsmall)">
                                    <input type="text" name="nombreC" id="nombreC" value="" placeholder="Nombre Completo" required="true" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <input type="email" name="mail" id="mail" value="" placeholder="Correo Electrónico" required="true" />
                                </div>

                                <div class="12u$">
                                    <textarea name="mensaje" id="mensaje"placeholder="Introduce una sugerencia y/o comentario" required="true" rows="6"></textarea>
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" value="Enviar" class="special" /></li>
                                        <li><button type="button" id="cancelar" class="special">Cancelar</button></li>
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

<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Confirmación</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">¿Está seguro de que desea cancelar la sugerencia?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_15" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Alerta</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Se ha enviado tu comentario y/o sugerencia a Bookscom. Gracias por ayudar a mejorar la comunidad.  </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
        $('#cancelar').click(function () {
            $('#MSGC_01').modal('show');
        });
        $("form").submit(function() {
            $('#MSGA_15').modal('show');
            return true;
        });
    });
</script>
</body>
</html>
