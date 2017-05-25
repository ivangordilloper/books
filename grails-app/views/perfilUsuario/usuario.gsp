<html>
<head>
    <title> Bookscom | Perfil</title>
    <link rel="stylesheet" href="${resource(dir:'css', file:'slides.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'swiper.min.css')}" type="text/css" media="all"/>

    <link rel="stylesheet" href="${resource(dir:'css', file:'main.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'style-user.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'letra.css')}" type="text/css" media="all"/>
    <g:external dir="css" file="modals.css"/>
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
                        <li><a data-toggle="tab" href="#amigos">Amigos</a></li>
                        <li class="active"><a data-toggle="tab" href="#preferencia">Listas de preferencia</a></li>
                        <li ><a data-toggle="tab" href="#librerias">Librerías</a></li>

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
                        <div id="preferencia" class="tab-pane active">
                            <div id="myDIV" style="padding-top: 5px; display: none;">
                                <div class="container">
                                    <p style="padding: 0px; margin: 0px;">Crear lista de preferencia</p>
                                    <g:form method="post" controller="listaPreferenciaLibro" action="crear">
                                        <g:hiddenField name="idUsuario" value="${idU}" />
                                        <div class="row uniform">

                                            <div class="col-xs-12 col-md-4">
                                                <g:field  type="text" name="nombre" id="nombre" requiered="true" maxlength="50" style="color: #0A122A!important;"/>
                                            </div>

                                            <div class="col-xs-12 col-md-4">
                                                <ul class="actions vertical">
                                                    <li ><g:submitButton name="submit" value="Crear" id="crearL" class="special" /></li>
                                                </ul>
                                            </div>

                                        </div>
                                    </g:form>
                                </div>
                            </div>
                            <table class="table table-striped" style="color: #2E3842;">
                                <thead>
                                <tr>
                                    <th style="color: #2E3842;">Libros</th>
                                    <th style="color: #2E3842;"></th>
                                    <th style="color: #2E3842; width: auto;"></th>
                                    <th style="color: #2E3842; width: auto;"></th>
                                    <th style="color: #2E3842; width: auto;"><a onclick="hideblock()"><g:img dir="images" file="mas.png" align="right" class="img-config2" style="height: 20px; width: 20px"/></a></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${listaLibros}" var="lista">
                                    <tr>
                                        <td> <g:img dir="images" file="lista.png"  style="margin:15px; width: 50px"/></td>
                                        <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${lista.nombre}</i></b></p>
                                            <p style="padding:0px;line-height:15px; margin: 0px;">Creación: ${lista.fechaCreacion.toString().substring(0,10)}</p>
                                            <p style="padding:0px;line-height:25px; margin: 0px;">Libros: ${lista.libros.size()}</p>
                                        </td>
                                        <td>
                                            <!--<div class="dropdown">
                                                <div id="myDropdown" class="dropdown-content">

                                                </div>
                                            </div>-->
                                            <a href="${createLink(controller : 'listaPreferenciaLibro', action:'verListaPreferenciaLibro', params: [id: lista.id])}" style="font-size: 13px;"><g:img dir="images" file="lupa.png" align="left" class="image-list3" height="18" width="18"/></a>

                                        </td>
                                        <td>
                                            <a href="${createLink(controller : 'listaPreferenciaLibro', action:'update', params: [id: lista.id])}" style="font-size: 13px;"><g:img dir="images" file="editar.png"  align="left" class="image-list3" height="18" width="18" /></a>

                                        </td>
                                        <td>
                                            <p class="deleteLista" id="${lista.id}" style="margin-right: 25px;"><g:img dir="images"  file="eliminar.png" align="left" class="image-list3" height="18" width="18"   /></p>


                                        </td>
                                    </tr>

                                </g:each>
                                </tbody>
                            </table>

                            <!--      <div id="myDIV">
                               Hola
                            </div> -->

                            <table class="table table-striped" style="color: #2E3842;">
                                <thead>
                                <tr>
                                    <th style="color: #2E3842;">Autores</th>
                                    <th style="color: #2E3842;"></th>
                                    <th style="color: #2E3842; width: auto;"></th>
                                    <th style="color: #2E3842; width: auto;"></th>
                                    <th style="color: #2E3842; width: auto;"></th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> <g:img dir="images" file="lista.png"  style="margin:15px; width: 50px"/></td>
                                    <td> <p style="padding:0px; margin: 0px;"><b><i style="color: black">${listaA.nombre}</i></b></p>
                                        <p style="padding:0px;line-height:15px; margin: 0px;">Creación: ${listaA.fechaCreacion.toString().substring(0,10)}</p>
                                        <p style="padding:0px;line-height:25px; margin: 0px;">Autores: ${listaA.autores.size()}</p>
                                    </td>
                                    <td>
                                        <!--<div class="dropdown">
                                                <div id="myDropdown" class="dropdown-content">

                                                </div>
                                            </div>-->
                                        <a href="${createLink(controller : 'listaPreferenciaAutor', action:'verListaPreferenciaAutor', params: [id: listaA.id])}" style="font-size: 13px;"><g:img dir="images" file="lupa.png" align="left" class="image-list3" height="18" width="18"/></a>

                                    </td>
                                    <td>
                                        <a style="color: transparent">hol</a>

                                    </td>
                                    <td>
                                        <a style="color: transparent">hol</a>

                                    </td>

                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="librerias" class="tab-pane active">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <table class="table table-striped" style="color: #2E3842;">
                                        <thead>
                                        <tr>
                                            <th style="color: #2E3842;">Librerías cercanas a ti</th>
                                            <th style="color: #2E3842;"></th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12" style="height: 500px;">
                                <section class="spotlight" >
                                    <div id="map" style="width: 100%; height: 100%;" class="maps"></div>
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

                            </div>
                        </div>

                        <div id="amigos" class="tab-pane fade">

                            <table class="table table-striped" style="color: #2E3842;">
                                <thead>
                                <tr>
                                    <th style="color: #2E3842;">Amigos</th>
                                    <th style="color: #2E3842;"></th>
                                    <th style="color: #2E3842;"></th>
                                </tr>
                                </thead>
                            </table>
                            <div style="height: 5px">
                            </div>
                            <g:each in="${listaAmigos}" var="amigo">
                                <div class="col-xs-6 col-sm-6 col-md-3" >
                                    <div class="panel panel-default">
                                        <div class="panel-heading" style="text-align: center; "><a style="color: transparent;" href="${createLink(controller : 'perfilUsuario', action:'verUsuario', params: [id: amigo.id])}"><img  src="${createLink(controller: 'imagen', action: 'renderImageU', params: [id: amigo.id])}" style="background-radius:50%; border-radius: 50%;background-size:100%auto; height: 150px; width: 150px;" class="img-profile"/></a></div>
                                        <div class="panel-body" style="padding-top: 8px; padding-bottom:8px; margin: 0px;"><p style="padding:0px; margin: 0px; text-align: center;"><b><i style="color: black; text-align: center; padding-bottom: 2px;">${amigo.username} (${amigo.listasL.size()} listas) </i></b></p>
                                           <a class="special" style="width: 155px; font-size: 10px;" href="${createLink(controller : 'usuario', action:'verUsuario', params: [id: amigo.id])}"><g:img dir="images" file="lupa.png" align="right" class="image-list3" style="height: 20px; width: 20px; padding: 0px; margin: 0px;"/></a>
                                        </div>
                                    </div>
                                </div>
                            </g:each>

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
    function hideblock() {
        var x = document.getElementById('myDIV');
        if (x.style.display === 'none') {
            x.style.display = 'block';
        } else {
            x.style.display = 'none';
        }
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

<g:external dir="js" file="bootstrap.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Confirmación.</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">¿Está seguro de que deseas eliminar la lista de preferencia?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning delete" id="deleteL" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_08" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Alerta</h4>
            </div>
            <div class="modal-body">
                <p style="color: black; text-align: justify">Lista de Preferencias ha sido creada exitosamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js" async defer></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script type="text/javascript" async defer>
    jQuery(document).ready(function($){<!--from  w w  w.java2s . c o m-->
        $('#cancelar').click(function () {
            $('#MSGC_01').modal('show');
        });
        $('#crearL').click(function () {
            $('#MSGA_08').modal('show');
        });
        $(document).on("click","p.deleteLista",function(e){
            $("#deleteL").attr("onclick","window.location = '../listaPreferenciaLibro/delete/"+ $(this).attr("id") + "'");
            $('#MSGC_01').modal('show');
        });
    });
</script>


</body>
</html>