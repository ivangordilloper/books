<html>
<head>
    <title> INICIAR SESIÓN </title>
</head>
<body>
    <article id="main">

        <section class="wrapper style5">
            <div class="inner">


                <section>
                    <div class="box">

                        <div id="login">
                            <div class="cointainer">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <h4>Iniciar Sesión </h4>
                            <form method="post" action="/login/authenticate">

                                <div class="row uniform">

                                <div class="12u 12u$(xsmall)">
                                    <input type="text" name="username" id="username" required value="" placeholder="Nombre de usuario" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <input type="password" name="password" id="password" required value="" placeholder="Contraseña" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                <p id="remember_me_holder">
                                    <input type="checkbox" class="chk" name="remember-me" id="remember_me" />
                                    <label for="remember_me">Recuérdame</label>
                                </p>
                                </div>

                                <div class="row">
                                    <div class="col-xs-12 col-sm-6">
                                    <g:submitButton name="submit" value="Iniciar Sesión" class="special" />
                                     </div>
                                    <div class="col-xs-12- col-sm-6 ">
                                      <a href="/inicio/recuperarContra">Olvidé mi contraseña</a></li>
                                    </div>
                                </div>
                            </div>
                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            (function() {
                                document.forms['loginForm'].elements['username'].focus();
                            })();
                        </script>

                    </div>

                </section>

            </div>
        </section>
    </article>

    <script src="assets/js/main.js"></script>
    <script type="text/javascript">
        function redirect() {
            var p1 = document.getElementById("username").value;
            var p2 = document.getElementById("password").value;
            var p3 = id;
            if(p1=="raid@raid.com")
                window.open('contacto','_blank');
            else if(p1=="admin@admin.com")
                window.open('administrador.html','_blank');
            else
                window.open('/perfilUsuario','_blank');
        }
    </script>
</div>
</body>
</html>