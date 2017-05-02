<html>
<head>
   <title> INICIAR SESIÓN </title>
</head>
<body>
<div id="inicio">

    <article id="main">
        <header>
            <h2>Iniciar Sesión </h2>
        </header>
        <section class="wrapper style5">
            <div class="inner">


                <section>
                    <div class="box">

                        <h4>Iniciar Sesión </h4>

                        <div id="login">
                            <g:form method="post" action="iniciar">

                            <div class="row uniform">

                                <div class="12u 12u$(xsmall)">
                                    <input type="text" name="username" id="username" required value="" placeholder="Nombre de usuario" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <input type="password" name="password" id="password" required value="" placeholder="Contraseña" />
                                </div>
                                <p id="remember_me_holder">
                                    <input type="checkbox" class="chk" name="remember-me" id="remember_me" />
                                    <label for="remember_me">Recuérdame</label>
                                </p>

                                <div class="12u$">
                                    <ul class="actions">
                                        <li ><input type="submit" id="submit" value="Iniciar Sesión " class="special" onclick="redirect(${sesionUsuario})"/></li>
                                        <li><a href="resetpass.html">Has olvidado tu contraseña</a></li>
                                    </ul>
                                </div>
                            </div>
                        </g:form>
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