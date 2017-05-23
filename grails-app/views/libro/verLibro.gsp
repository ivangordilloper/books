<html>
<head>
    <title> Bookscom </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="usuario.css"/>
    <g:external dir="css" file="swiper.min.css"/>
    <g:external dir="css" file="slides.css"/>


    <style type="text/css">
        body{
            background: #ffffff;
            color: black;
        }
         form .stars {
            background: url('${resource(dir: "images/css", file: "stars.png")}') repeat-x 0 0;
            width: 150px;
            margin: 0 auto;
        }

        form .stars input[type="radio"] {
            position: absolute;
            opacity: 0;
            background-color: white;
            color: white;
            filter: alpha(opacity=0)!important;
        }
        form .stars input[type="radio"].star-5:checked ~ span {
            width: 100%;
        }
        form .stars input[type="radio"].star-4:checked ~ span {
            width: 80%;
        }
        form .stars input[type="radio"].star-3:checked ~ span {
            width: 60%;
        }
        form .stars input[type="radio"].star-2:checked ~ span {
            width: 40%;
        }
        form .stars input[type="radio"].star-1:checked ~ span {
            width: 20%;
        }
        form .stars label {
            display: block;
            width: 30px;
            height: 30px;
            margin: 0!important;
            padding: 0!important;
            text-indent: -999em;
            float: left;
            position: relative;
            z-index: 10;
            background: transparent!important;
            cursor: pointer;
        }
        form .stars label:hover ~ span {
            background-position: 0 -30px;
        }
        form .stars label.star-5:hover ~ span {
            width: 100% !important;
        }
        form .stars label.star-4:hover ~ span {
            width: 80% !important;
        }
        form .stars label.star-3:hover ~ span {
            width: 60% !important;
        }
        form .stars label.star-2:hover ~ span {
            width: 40% !important;
        }
        form .stars label.star-1:hover ~ span {
            width: 20% !important;
        }
        form .stars span {
            display: block;
            width: 0;
            position: relative;
            top: 0;
            left: 0;
            height: 30px;
            background: url('${resource(dir: "images/css", file: "stars.png")}') repeat-x 0 -60px!important;
            -webkit-transition: -webkit-width 0.5s;
            -moz-transition: -moz-width 0.5s;
            -ms-transition: -ms-width 0.5s;
            -o-transition: -o-width 0.5s;
            transition: width 0.5s;
        }

        .dropbtn {
            background-color: #BC673F;
            color: white;
            box-shadow: none;
            font-size: 15px;
            margin: 0px;
            padding: 1px;
            text-align: center;
            border: none;
            cursor: pointer;
        }
        hr{
            margin: 1px;
            border-color: #BC673F;
            size: 1px;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #DEB887;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 60px;
            width: 155px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 5px;
            text-decoration: none!important;
            display: block;
        }

        .dropdown a:hover {background-color: #f1f1f1}

        .show {display:block;}

    </style>
</head>
<body>
<div class="container">

    <!--una-->
    <div class="row" style="height: 50px;">

    </div> <!--una-->


    <!--dos-->
    <div class="row">

                <!--dos.uno-->
                <div class="col-sm-6 col-md-2">
                    <section>
                        <div class="row">
                            <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  style="margin-top:15px; background-size:100%auto; height: 250px; width: 180px;"/>
                        </div>

                        <div class="row">
                            <br/>
                            <div class="dropdown">
                                <button onclick="myFunction()" class="dropbtn" style="width: 155px">Agregar</button>
                                <div id="myDropdown" class="dropdown-content">
                                    <g:each in="${listas}" var="lista">
                                        <a onclick="agregar(1, 1)" style="font-size: 15px;"> ${lista.nombre} </a>
                                    </g:each>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="height: 30px"></div>
                        <div class="row" style="height: 5px">
                            <p style="color:gray; margin-bottom:1px; font-size:14px; text-align: center; padding-left: 40px">Califica este libro</p>
                            <form id="ratingsForm">
                                <div class="stars">
                                    <input type="radio" name="star" onclick="sendStars(${libro.id}, 1)" class="star-1" id="star-1" />
                                    <label class="star-1" for="star-1">1</label>
                                    <input type="radio" name="star" onclick="sendStars(${libro.id}, 2)" class="star-2" id="star-2" />
                                    <label class="star-2" onclick="sendStars(${libro.id}, 2)" for="star-2">2</label>
                                    <input type="radio" name="star" onclick="sendStars(${libro.id}, 3)" class="star-3" id="star-3" />
                                    <label class="star-3" for="star-3">3</label>
                                    <input type="radio" name="star" onclick="sendStars(${libro.id}, 4)" class="star-4" id="star-4" />
                                    <label class="star-4" for="star-4">4</label>
                                    <input type="radio" name="star" onclick="sendStars(${libro.id}, 5)" class="star-5" id="star-5" />
                                    <label class="star-5" for="star-5">5</label>
                                    <span></span>
                                </div>
                            </form>
                        </div>
                    </section>
                </div> <!--dos.uno-->
                <!--dos.dos-->
                <div class="col-sm-12 col-md-6">
                <section>
                    <p style="margin-bottom:1px; color: black; font-size: 35px"><i>${libro.titulo}</i> </p>

                    <div class="row" style="margin-bottom: 0px">
                        <g:each in="${libro.autores}" var="b" >
                        <p style="padding: 1px; margin-left: 28px"> por <a href="${createLink(controller : 'autor', action:'verAutor', params: [id: b.id])}" > <b><i style="color: #0A122A">${libro.autores.nombreCompleto.toString().substring(1,libro.autores.nombreCompleto.toString().length() - 1 )}</i></b></a> </p>
                        </g:each>
                        <div>

                            <g:if test="${cuentaE.equals("1")}">
                                <% def count1= 1 %>
                                <g:each in="${1..count1}" var="b" >
                                    <span style="font-size:200%;color:#FFD700;">&starf;</span>
                                </g:each>
                                <% def count11= 4 %>
                                <g:each in="${1..count11}" var="b" >
                                    <span style="font-size:200%;color:gainsboro;">&starf;</span>
                                </g:each>
                            </g:if>

                            <g:if test="${cuentaE.equals("2")}">
                                <% def count2= 2 %>
                                <g:each in="${1..count2}" var="b" >
                                    <span style="font-size:200%;color:#FFD700;">&starf;</span>
                                </g:each>
                                <% def count21= 3 %>
                                <g:each in="${1..count21}" var="b" >
                                    <span style="font-size:200%;color:gainsboro">&starf;</span>
                                </g:each>
                            </g:if>
                            <g:if test="${cuentaE.equals("3")}">
                                <% def count3= 3 %>
                                <g:each in="${1..count3}" var="b" >
                                    <span style="font-size:200%;color:#FFD700;">&starf;</span>
                                </g:each>
                                <% def count31= 2 %>
                                <g:each in="${1..count31}" var="b" >
                                    <span style="font-size:200%;color:gainsboro;">&starf;</span>
                                </g:each>
                            </g:if>
                            <g:if test="${cuentaE.equals("4")}">
                                <% def count4= 4 %>
                                <g:each in="${1..count4}" var="b" >
                                    <span style="font-size:200%;color:#FFD700;">&starf;</span>
                                </g:each>
                                <% def count41= 1 %>
                                <g:each in="${1..count41}" var="b" >
                                    <span style="font-size:200%;color:gainsboro;">&starf;</span>
                                </g:each>
                            </g:if>
                            <g:if test="${cuentaE.equals("5")}">
                                <% def count5= 5 %>
                                <g:each in="${1..count5}" var="b" >
                                    <span style="font-size:200%;color:#FFD700;">&starf;</span>
                                </g:each>
                            </g:if>


                        </div>
                        <p style="font-size: 15px; color: darkred;"> (${numeroCal} votos)</p>
                    </div>

                    <p style="text-align: justify; margin: 2px">${libro.resumen}</p>
                    <br/>
                    <hr style="margin: 1px"/>
                    <p style="font-size: 15px; padding: 0px; margin: 0px"> ${libro.editorial}, ${libro.pais} <br/>
                        Publicado el ${fecha} <br/> Género ${libro.generoLiterario}</p>
                </section>

                <section>
                    <h3 style="margin-top: 10px; color:#D2691E; font-size: 15px;">¿Qué opinas del libro?</h3>
                    <hr style="margin: 1px; color: darkorange; margin-bottom: 10px"/>
                </section>

                <section>
                    <g:form action="opinar" method="post">
                        <g:hiddenField name="idLibro" value="${libro.id}" />
                        <g:hiddenField name="idUsuario" value="${idU1.id}" />
                        <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                            <g:field name="mandarO" style="padding-top: 3px; height:70px; width: 340px; margin:0px" type="text" class="form-control" required= "true" placeholder="Escribe tu opinión..."></g:field>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" >
                            <g:submitButton name="submit"  class="special" value="Opinar"/>
                        </div>
                        </div>
                    </g:form>
                </section>

    <section id="opi">
                                <g:each in="${opiniones}" var="opinion">
                                    <div class="row">
                                        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                                    <img src="${createLink(controller: 'imagen', action: 'renderImageU', params: [id: idU1.id])}" style="margin:0px; padding:0px; background-radius:50%; border-radius: 50%; background-size:100%auto; height: 40px; width: 40px;" />
                                                 </div>
                                         </div>
                                        <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                                <p style="font-size: 15px; color: black; margin: 0px">
                                                <b style="font-size: 20px; color: #BC673F; margin: 0px">${opinion.usuario.username} :</b>
                                                <i>"${opinion.opinionL}"</i></p>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <hr style="border-color: #faf2cc"/>
                                        </div>
                                     </div>

                                </g:each>

    </section>


</div>   <!--dos.dos-->
                <!--dos.tres-->
                <div class="col-sm-12 col-md-4">
                <section>
                    <h3 style="color:#D2691E; font-size: 15px; padding-top: 10px">LIBROS RELACIONADOS <br/> </h3>
                    <hr/>
                    <!-- Libros relacionados por GeneroLiterario-->
                    <div class="row" style="margin-top: 10px">
                        <% def count=listaG.collect().size()-1 %>
                        <g:each in="${0..count}" var="c" >
                            <g:if test="${listaG[c].id.equals(libro.id)}">
                            </g:if>
                            <g:else>
                                <div class="col-sm-3">
                                    <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:libro.id])}"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: listaG[c].id])}"  style="background-size:100%auto; height: 100px; width: 70px;"/></a>
                                </div>
                            </g:else>
                        </g:each>
                    </div> <!-- Libros relacionados por GeneroLiterario-->


                    <h3 style="color:#D2691E; font-size: 15px; padding-top: 30px">ACERCA DE ${libro.autores.nombreCompleto.toString().substring(1,libro.autores.nombreCompleto.toString().length() - 1 )} <br/> </h3>
                    <hr/>
                    <g:each in="${libro.autores}" var="b" >
                    <div class="row">
                        <div class="col-md-8" style="margin-top: 10px; font-size: 15px">
                            <div> Nacionalidad: ${Plantilla.Autor.findById(b.id).nacionalidad}</div>
                            <div> Nacimiento: ${Plantilla.Autor.findById(b.id).getFechaNac().toString().substring(0,10)}</div>
                            <div> Género: ${Plantilla.Autor.findById(b.id).generoLiterario}</div>
                       </div>
                        <div class="col-md-4">
                            <a href="${createLink(controller : 'autor', action:'verAutor', params: [id:b.id])}"><img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: b.id])}"  style="margin-top: 15px; background-size:100%auto; height: 90px; width: 90px;"/></a>
                        </div>
                    </div>
                    </g:each>
                    <br>

<g:each in="${libro.autores}" var="b2" >
                    <div class="row">
                        <p style="text-align: justify"> ${b2.bio.toString().substring(1, b2.bio.toString().length()-1)}</p>
                    </div>
</g:each>





                    <h3 style="color:#D2691E; font-size: 15px; padding-top: 10px">LIBROS DE ${libro.autores.nombreCompleto.toString().substring(1,libro.autores.nombreCompleto.toString().length() - 1 )} <br/> </h3>
                    <hr/>
                    <!-- Libros relacionados por mismo Autor-->
                    <div class="row" style="margin-top: 10px">
                        <% def count2= listaAI.collect().size()-1%>
                        <g:each in="${0..count2}" var="c" >
                            <g:if test="${listaAI[c].id.equals(libro.id)}">
                            </g:if>
                            <g:else>
                                <div class="col-sm-3">
                                    <a href="${createLink(controller : 'libro', action:'verLibro', params: [id:libro.id])}"> <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: listaAI[c].id])}"  style="background-size:100%auto; height: 100px; width: 70px;"/> </a>
                                </div>
                            </g:else>
                        </g:each>
                    </div> <!-- Libros relacionados por mismoAutor-->

                </section>
                </div> <!--dos.tres-->

    </div> <!--dos-->

    <!--tres-->
    <div class="row" style="height: 100px;">

    </div> <!--tres-->

</div>


<!-- Scripts -->
<script>
    /* When the user clicks on the button,
     toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }
    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
        if (!event.target.matches('.dropbtn')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }
</script>

<script>
    function sendStars(id, calificacion) {

        var form = new FormData();
        form.append("stars", calificacion);
        form.append("id", id);


        console.log(calificacion)
        console.log(id)

        var settings = {
            "async": true,
            "crossDomain": true,
            "url": "http://localhost:8081/libro/calificar",
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

</script>

<script>
    function agregar(id, idL) {

        var form = new FormData();
        form.append("lista", id);
        form.append("libro", idL);


        var settings = {
            "async": true,
            "crossDomain": true,
            "url": "http://localhost:8081/listaPreferenciaLibro/agregarElemento",
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

</script>

<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

</body>
</html>