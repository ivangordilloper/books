<html>
<head>
    <title>VER USUARIO</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <g:external dir="css" file="usuario.css"/>

</head>
<body>
<div id="usuario">

    <section class="wrapper style5 ver-libro">
        <div class="inner">

            <section class="spotlight">
                <div class="image"><g:img dir = "images" file = "userIndex.png" alt="${user.username}" /></div><div class="content">
                <h2 style="font-size:15px;text-align: left; margin: 5px">Nombre </h2>
                <p style="font-size:15px;text-align: left; margin: 5px">${user.nombre} ${user.apellidoP} ${user.apellidoM}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Fecha de nacimiento</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${fecha}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Correo</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${user.correo}</p>
                <h4 style="font-size:15px;text-align: left; margin: 5px">Télefono</h4>
                <p style="font-size:15px;text-align: left; margin: 5px">${user.telefono}</p>

            </div>
            </section>

        </div>
    </section>
</div>
</body>
</html>