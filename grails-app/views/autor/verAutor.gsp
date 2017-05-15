<html>
<head>
    <title> Bookscom </title>

    <style type="text/css">

    body{
        background: #ffffff;
        color: black;
    }
    form .stars {
        background: url('${resource(dir: "images/css", file: "stars.png")}') repeat-x 0 0!important;
        width: 150px!important;
        margin: 0 auto!important;
    }

    form .stars input[type="radio"] {
        position: absolute!important;
        opacity: 0!important;
        background-color: white!important;
        color: white!important;
        filter: alpha(opacity=0)!important;
    }
    form .stars input[type="radio"].star-5:checked ~ span {
        width: 100%!important;
    }
    form .stars input[type="radio"].star-4:checked ~ span {
        width: 80%!important;
    }
    form .stars input[type="radio"].star-3:checked ~ span {
        width: 60%!important;
    }
    form .stars input[type="radio"].star-2:checked ~ span {
        width: 40%!important;
    }
    form .stars input[type="radio"].star-1:checked ~ span {
        width: 20%!important;
    }
    form .stars label {
        display: block!important;
        width: 30px!important;
        height: 30px!important;
        margin: 0!important;
        padding: 0!important;
        text-indent: -999em!important;
        float: left!important;
        position: relative!important;
        z-index: 10!important;
        background: transparent!important;
        cursor: pointer!important;
    }
    form .stars label:hover ~ span {
        background-position: 0 -30px!important;
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
        display: block!important;
        width: 0!important;
        position: relative!important;
        top: 0!important;
        left: 0!important;
        height: 30px!important;
        background: url('${resource(dir: "images/css", file: "stars.png")}') repeat-x 0 -60px!important;
        -webkit-transition: -webkit-width 0.5s!important;
        -moz-transition: -moz-width 0.5s!important;
        -ms-transition: -ms-width 0.5s!important;
        -o-transition: -o-width 0.5s!important;
        transition: width 0.5s!important;
    }


    </style>
</head>
<body>
<div class="container">

    <div class="row" style="height: 199px"></div>
    <form id="ratingsForm">
        <div class="stars">
            <input type="radio" name="star" class="star-1" id="star-1" />
            <label class="star-1" for="star-1">1</label>
            <input type="radio" name="star" class="star-2" id="star-2" />
            <label class="star-2" for="star-2">2</label>
            <input type="radio" name="star" class="star-3" id="star-3" />
            <label class="star-3" for="star-3">3</label>
            <input type="radio" name="star" class="star-4" id="star-4" />
            <label class="star-4" for="star-4">4</label>
            <input type="radio" name="star" class="star-5" id="star-5" />
            <label class="star-5" for="star-5">5</label>
            <span></span>
        </div>

    </form>



</div>

<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"swiper.min.js")}"></script>

</body>
</html>