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
                    <div class="box">

                        <h4>Recuperar contraseña </h4>

                        <div id="login">
                            <Form action="mandarCorreo" method="post">
                                <div class="row uniform">
                                    <h8>Escribe tu correo electróico.</h8>
                                    <div class="12u 12u$(xsmall)" id="divCorreo">
                                        <input type="email" name="correo" id="email"  placeholder="Correo Electrónico" maxlength="50" required="true"/>

                                    </div>
                                    <div class="12u$">
                                        <ul class="actions">
                                            <li >  <g:submitButton name="submit" value="Enviar correo" class="special" /></li>

                                            <li><a href="/iniciar/recuperarContra">¿No te llega el correo?, Intenta de nuevo</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </section>

            </div>
        </section>
    </article>

    <script src="assets/js/main.js"></script>

</div>
</body>
</html>