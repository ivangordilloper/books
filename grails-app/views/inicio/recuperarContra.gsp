<html>
<head>
    <title> RECUPERAR </title>
</head>
<body>
<div id="inicio">

    <article id="main">
        <header>
            <h2> Recuperar contraseña</h2>

        </header>
        <section class="wrapper style5">
            <div class="inner">


                <section>
    <div id="login">
                            <Form action="mandarCorreo" method="post">
                                <div class="row uniform">
                                    <div class="col-md-6 col-md-offset-3">
                                        <h4>Recupera tu contraseña </h4>

                                        <h8>Escribe tu correo electróico.</h8>

                                    <div class="12u 12u$(xsmall)" id="divCorreo" style="padding-top: 10px; padding-bottom: 10px">
                                        <input type="email" name="correo" id="email"  placeholder="Correo Electrónico" maxlength="50" required="true"/>

                                    </div>
                                    <div class="12u$(xsmal)">
                                        <ul class="actions">
                                            <li >  <g:submitButton name="submit" value="Enviar correo" class="special" /></li>

                                            <li><a href="/iniciar/recuperarContra">Intenta de nuevo</a></li>
                                        </ul>
                                    </div>
                                </div>
                                </div>
                            </form>
    </div>

                </section>

            </div>
        </section>
    </article>

    <script src="assets/js/main.js"></script>

</div>
</body>
</html>