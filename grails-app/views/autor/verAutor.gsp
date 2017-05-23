<html>
<head>
    <title> Bookscom </title>

    <style type="text/css">

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
        padding: 2px;
        text-decoration: none!important;
        display: block;
    }

    .dropdown a:hover {background-color: #f1f1f1}

    .show {display:block;}

    body{
        background: #ffffff!important;
        color: black;
    }
    </style>
</head>
<body>

<div class="container">

    <!--una-->
    <div class="row" style="height: 50px;">

    </div> <!--una-->

    <div class="row">

    </div>

    <!--dos-->
    <div class="row">

        <!--dos.uno-->
        <div class="col-sm-6 col-md-2">
            <section>
                <div class="row">
                    <img src="${createLink(controller: 'imagen', action: 'renderImageA', params: [id: autor.id])}"  style="margin-top:15px; background-size:100%auto; height: 150px; width: 180px;"/>
                </div>

                <div class="row">
                    <br/>
                    <div class="dropdown">
                        <button onclick="myFunction()" class="dropbtn" style="width: 155px">Agregar</button>
                        <div id="myDropdown" class="dropdown-content" style="font-size: 15px">
                            <a href="#home">Agregar a mis autores favoritos</a>
                            <a href="#about">Ediar mis autores favoritos</a>
                            <a href="#contact">Ver mi lista de autores</a>
                        </div>
                    </div>
                </div>

                <div class="row" style="height: 30px"></div>
                <div class="row" style="height: 5px">
                </div>

            </section>
        </div> <!--dos.uno-->
        <!--dos.dos-->
        <div class="col-sm-12 col-md-10">
            <section>
                <p style="margin-bottom:1px; color: black; font-size: 35px"><i>${autor.nombreCompleto}</i> </p>
                <div class="row" style="margin-bottom: 0px">
                    <div> ${autor.nacionalidad}, ${autor.fechaNac.toString().substring(0,4)} </div>
                </div>

                <p style="text-align: justify; margin: 2px">${autor.bio}</p>
                <br/>
            </section>

            <section>
                <h3 style="margin-top: 10px; color:#D2691E; font-size: 15px;">Libros de ${autor.nombreCompleto}</h3>
                <hr style="margin: 1px; color: darkorange; margin-bottom: 10px"/>
            </section>

            <section id="opi">
                <g:each in="${lib}" var="libro">
                    <div class="row">
                                <div class="col-xs-1 col-sm-1 col-md-1 col-lg-2">
                                        <img src="${createLink(controller: 'imagen', action: 'renderImageL', params: [id: libro.id])}" style="margin-bottom:5px; margin-top: 5px;  height: 90px; width: 60px;" />
                                </div>
                                <div class="col-xs-4 col-sm-8 col-md-4 col-lg-3">
                                        <p style="font-size: 15px; color: black; margin: 0px; padding-top: 1px">
                                        <b style="color: black; margin: 0px; padding-top: 0px">${libro.titulo}<br/></b>
                                        <i> ${libro.fechaPub.toString().substring(0,10)} </i></p>
                            <% def count=1 %>
                            <g:each in="${0..count}" var="c" >
                                <span style="font-size:150%;color:#BC673F;">&starf;</span>
                            </g:each>
                                </div>

                                <div class="col-xs-4 col-sm-8 col-md-4 col-lg-5">
                                    <!--${libro.resumen.toString().substring(0,10)}. -->
                                    <div id="resumen" style="text-align: justify">  ${libro.resumen.substring(0, 10)} ... </div>
                                </div>
                                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                    <a href="${createLink(controller : 'libro', action:'verLibro', params: [id: libro.id])}" > ver libro</a>
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


    </div> <!--dos-->

    <!--tres-->
    <div class="row" style="height: 100px;">

    </div> <!--tres-->

</div>



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
            "url": "http://localhost:8080/autor/calificar",
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
    /* When the user clicks on the button,
     toggle between hiding and showing the dropdown content */
    function myFunction2() {
        document.getElementById("myDropdown2").classList.toggle("show");
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

<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

</body>
</html>