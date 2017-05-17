<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
<div class="container">
    <div class="row">
        <div align="center">
            <img src="cid:logo" />
            <br>
            <b>Buenos días</b><br><br>
            Usted ha solicitado reestablecer su contraseña para <b><l>Bookscom</l></b>.<br><br>
            Su nombre de usuario es: <br>
            <br><b>${pUsuario}<br><br>
            Su nueva contraseña es:<br>
            <br><b>${pContra}</b>
            <br>
            <br>
            Por favor inicie sesión y cambiela por una más segura.
            <br>
            <br>
        </div>
    </div>
</div>
<font size="1">Este correo electrónico contiene información legal confidencial y privilegiada. Si Usted no es el destinatario a quien se desea enviar este mensaje, tendrá prohibido darlo a conocer a persona alguna, así como a reproducirlo o copiarlo. Si recibe este mensaje por error, favor de notificarlo al remitente de inmediato y desecharlo de su sistema.</font>
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"skel.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"util.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"main.js")}"></script>
</body>
</html>
