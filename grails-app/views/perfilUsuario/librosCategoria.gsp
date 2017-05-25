<html>
<head>
    <title> Bookscom</title>
    <link rel="stylesheet" href="${resource(dir:'css', file:'slides.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'swiper.min.css')}" type="text/css" media="all"/>

    <link rel="stylesheet" href="${resource(dir:'css', file:'main.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'style-user.css')}" type="text/css" media="all"/>
    <link rel="stylesheet" href="${resource(dir:'css', file:'letra.css')}" type="text/css" media="all"/>

    <script type="text/javascript" src="${resource(dir: '/assets/js/',file:"MiAngular.js")}" async defer></script>
    <g:external dir="js" file="angular.min.js"/>
</head>

<body>

<%
    def promedio
    def count1
    def count2
    def count11
    def count1nada
    def cuentaE
    def count21
    def count3
    def count31
    def count4
    def count41
    def count5

%>

<div style="background:white; color: black; font-size: 15px">
    <div class="container">
        <!--Fila 1 : Vacia-->
        <div class="row" style="height: 70px">
        </div> <!--Fila 1 : Vacia-->
        <h1 style="color: black;">Encuentra tus libros favoritos</h1>
        <ul class="nav nav-tabs">
            <li class="active" ><a data-toggle="tab" href="#recomendaciones">Recomendaciones</a></li>

        </ul>


        <div class="tab-content">
            <div class="titulo-preferencia">Los libros que te han gustado</div>

            <div id="recomendaciones" class="tab-pane active">
                <!--Dramático-->

                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <!-- Swipper-->
                        <div class="swiper-container" style="padding:0px;">

                            <!-- Additional required wrapper -->
                            <div class="swiper-wrapper">
                            <!-- Slides -->
                                <g:each in="${libroFOAF}" var="libro">
                                    <div class="swiper-slide separator-slide">
                                        <a class="link-libro" href="${createLink(controller : 'perfilUsuario', action:'verLibro', params: [id:libro.id])}"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  class="image-book"/></a>
                                        <p style="color: #0A122A; background: transparent; padding: 0px;  margin: 0px; text-align: center; height: 50px;"><b style="color: black;">${libro.titulo}</b></p>
                                        <%
                                            if (libro.califL.size() ==0){
                                                promedio = 0
                                            }
                                            else {
                                                promedio = libro.califL.calif.collect().sum() / libro.califL.size()
                                            }


                                            if (promedio == 0){
                                                cuentaE ="0"
                                            }
                                        if (promedio>= 5){
                                            cuentaE ="5"
                                        }else if(promedio>=4 && promedio<5) {
                                            cuentaE= "4"
                                        }else if(promedio>=3 && promedio<4){
                                            cuentaE= "3"
                                        }else if (promedio>= 2 && promedio <3){
                                            cuentaE= "2"
                                        }else if (promedio>=1 && promedio<2){
                                            cuentaE="1"
                                        }
                                        %>
                                        <div style="text-align: center">

                                        <g:if test="${cuentaE.equals("0")}">
                                            <% count1nada= 5 %>
                                            <g:each in="${1..count1nada}" var="b" >
                                                <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                            </g:each>
                                        </g:if>

                                            <g:if test="${cuentaE.equals("1")}">
                                                <%  count1= 1 %>
                                                <g:each in="${1..count1}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <%  count11= 4 %>
                                                <g:each in="${1..count11}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                </g:each>
                                            </g:if>

                                            <g:if test="${cuentaE.equals("2")}">
                                                <% count2= 2 %>
                                                <g:each in="${1..count2}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <% count21= 3 %>
                                                <g:each in="${1..count21}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro">&starf;</span>
                                                </g:each>
                                            </g:if>
                                            <g:if test="${cuentaE.equals("3")}">
                                                <%  count3= 3 %>
                                                <g:each in="${1..count3}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <%  count31= 2 %>
                                                <g:each in="${1..count31}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                </g:each>
                                            </g:if>
                                            <g:if test="${cuentaE.equals("4")}">
                                                <%  count4= 4 %>
                                                <g:each in="${1..count4}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                                <%  count41= 1 %>
                                                <g:each in="${1..count41}" var="b" >
                                                    <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                </g:each>
                                            </g:if>
                                            <g:if test="${cuentaE.equals("5")}">
                                                <%  count5= 5 %>
                                                <g:each in="${1..count5}" var="b" >
                                                    <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                </g:each>
                                            </g:if>
                                        </div>
                                    </div>
                                </g:each>
                            </div>
                            <!-- If we need pagination -->
                            <div class="swiper-pagination"></div>
                            <!-- If we need scrollbar -->
                        </div>
                    </div>


                </div>

<g:each in="${uri}" var="listaAmigos">

    <div class="row">
        <div class="titulo-preferencia">Tal vez te interese la lista de tu amigo ${listaAmigos[0].nombre+" "+listaAmigos[0].apellidoP}</div>
                <div class="col-xs-12 col-md-12">
                    <!-- Swipper-->
                    <div class="swiper-container" style="padding:0px;">

                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                        <!-- Slides -->
                            <g:each in="${listaAmigos[1]}" var="libro">
                                <div class="swiper-slide separator-slide">
                                    <a class="link-libro" href="${createLink(controller : 'perfilUsuario', action:'verLibro', params: [id:libro.id])}"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  class="image-book"/></a>
                                    <p style="color: #0A122A; background: transparent; padding: 0px;  margin: 0px; text-align: center; height: 50px;"><b style="color: black;">${libro.titulo}</b></p>
                                    <%
                                         promedio
                                        if (libro.califL.size() ==0){
                                            promedio = 0
                                        }
                                        else {
                                            promedio = libro.califL.calif.collect().sum() / libro.califL.size()
                                        }
                                         cuentaE

                                        if (promedio == 0){
                                            cuentaE ="0"
                                        }
                                        if (promedio>= 5){
                                            cuentaE ="5"
                                        }else if(promedio>=4 && promedio<5) {
                                            cuentaE= "4"
                                        }else if(promedio>=3 && promedio<4){
                                            cuentaE= "3"
                                        }else if (promedio>= 2 && promedio <3){
                                            cuentaE= "2"
                                        }else if (promedio>=1 && promedio<2){
                                            cuentaE="1"
                                        }
                                    %>
                                    <div style="text-align: center">

                                        <g:if test="${cuentaE.equals("0")}">
                                            <%  count1nada= 5 %>
                                            <g:each in="${1..count1nada}" var="b" >
                                                <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                            </g:each>
                                        </g:if>

                                        <g:if test="${cuentaE.equals("1")}">
                                            <%  count1= 1 %>
                                            <g:each in="${1..count1}" var="b" >
                                                <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                            </g:each>
                                            <%  count11= 4 %>
                                            <g:each in="${1..count11}" var="b" >
                                                <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                            </g:each>
                                        </g:if>

                                        <g:if test="${cuentaE.equals("2")}">
                                            <%  count2= 2 %>
                                            <g:each in="${1..count2}" var="b" >
                                                <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                            </g:each>
                                            <%  count21= 3 %>
                                            <g:each in="${1..count21}" var="b" >
                                                <span style="font-size:100%;color:gainsboro">&starf;</span>
                                            </g:each>
                                        </g:if>
                                        <g:if test="${cuentaE.equals("3")}">
                                            <%  count3= 3 %>
                                            <g:each in="${1..count3}" var="b" >
                                                <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                            </g:each>
                                            <%  count31= 2 %>
                                            <g:each in="${1..count31}" var="b" >
                                                <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                            </g:each>
                                        </g:if>
                                        <g:if test="${cuentaE.equals("4")}">
                                            <%  count4= 4 %>
                                            <g:each in="${1..count4}" var="b" >
                                                <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                            </g:each>
                                            <%  count41= 1 %>
                                            <g:each in="${1..count41}" var="b" >
                                                <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                            </g:each>
                                        </g:if>
                                        <g:if test="${cuentaE.equals("5")}">
                                            <%  count5= 5 %>
                                            <g:each in="${1..count5}" var="b" >
                                                <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                            </g:each>
                                        </g:if>
                                    </div>
                                </div>
                            </g:each>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>
                        <!-- If we need scrollbar -->
                    </div>
                </div>


            </div>
    </g:each>


                <g:each in="${listaAutores}" var="listaAmigos">

                    <div class="row">
                        <div class="titulo-preferencia">Tal vez te interese la lista de libros del autor ${listaAmigos[0].nombreCompleto}</div>
                        <div class="col-xs-12 col-md-12">
                            <!-- Swipper-->
                            <div class="swiper-container" style="padding:0px;">

                                <!-- Additional required wrapper -->
                                <div class="swiper-wrapper">
                                <!-- Slides -->
                                    <g:each in="${listaAmigos[1]}" var="libro">
                                        <div class="swiper-slide separator-slide">
                                            <a class="link-libro" href="${createLink(controller : 'perfilUsuario', action:'verLibro', params: [id:libro.id])}"><img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}"  class="image-book"/></a>
                                            <p style="color: #0A122A; background: transparent; padding: 0px;  margin: 0px; text-align: center; height: 50px;"><b style="color: black;">${libro.titulo}</b></p>
                                            <%
                                                promedio
                                                if (libro.califL.size() ==0){
                                                    promedio = 0
                                                }
                                                else {
                                                    promedio = libro.califL.calif.collect().sum() / libro.califL.size()
                                                }
                                                cuentaE

                                                if (promedio == 0){
                                                    cuentaE ="0"
                                                }
                                                if (promedio>= 5){
                                                    cuentaE ="5"
                                                }else if(promedio>=4 && promedio<5) {
                                                    cuentaE= "4"
                                                }else if(promedio>=3 && promedio<4){
                                                    cuentaE= "3"
                                                }else if (promedio>= 2 && promedio <3){
                                                    cuentaE= "2"
                                                }else if (promedio>=1 && promedio<2){
                                                    cuentaE="1"
                                                }
                                            %>
                                            <div style="text-align: center">

                                                <g:if test="${cuentaE.equals("0")}">
                                                    <%  count1nada= 5 %>
                                                    <g:each in="${1..count1nada}" var="b" >
                                                        <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                    </g:each>
                                                </g:if>

                                                <g:if test="${cuentaE.equals("1")}">
                                                    <%  count1= 1 %>
                                                    <g:each in="${1..count1}" var="b" >
                                                        <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                    </g:each>
                                                    <%  count11= 4 %>
                                                    <g:each in="${1..count11}" var="b" >
                                                        <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                    </g:each>
                                                </g:if>

                                                <g:if test="${cuentaE.equals("2")}">
                                                    <%  count2= 2 %>
                                                    <g:each in="${1..count2}" var="b" >
                                                        <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                    </g:each>
                                                    <%  count21= 3 %>
                                                    <g:each in="${1..count21}" var="b" >
                                                        <span style="font-size:100%;color:gainsboro">&starf;</span>
                                                    </g:each>
                                                </g:if>
                                                <g:if test="${cuentaE.equals("3")}">
                                                    <%  count3= 3 %>
                                                    <g:each in="${1..count3}" var="b" >
                                                        <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                    </g:each>
                                                    <%  count31= 2 %>
                                                    <g:each in="${1..count31}" var="b" >
                                                        <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                    </g:each>
                                                </g:if>
                                                <g:if test="${cuentaE.equals("4")}">
                                                    <%  count4= 4 %>
                                                    <g:each in="${1..count4}" var="b" >
                                                        <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                    </g:each>
                                                    <%  count41= 1 %>
                                                    <g:each in="${1..count41}" var="b" >
                                                        <span style="font-size:100%;color:gainsboro;">&starf;</span>
                                                    </g:each>
                                                </g:if>
                                                <g:if test="${cuentaE.equals("5")}">
                                                    <%  count5= 5 %>
                                                    <g:each in="${1..count5}" var="b" >
                                                        <span style="font-size:100%;color:#D2691E;">&starf;</span>
                                                    </g:each>
                                                </g:if>
                                            </div>
                                        </div>
                                    </g:each>
                                </div>
                                <!-- If we need pagination -->
                                <div class="swiper-pagination"></div>
                                <!-- If we need scrollbar -->
                            </div>
                        </div>


                    </div>
                </g:each>





        </div><!--Recomendaciones-->
        </div>

    </div>  <!-- Fin div contenedor -->

</div>
<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<script>
    function myFunction() {
        var x = document.getElementById('myDIV');
        if (x.style.display === 'none') {
            x.style.display = 'block';
        } else {
            x.style.display = 'none';
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
<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

<script>
    function myFunction() {
        var x = document.getElementById('myDIV');
        if (x.style.display === 'none') {
            x.style.display = 'block';
        } else {
            x.style.display = 'none';
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


</body>
</html>