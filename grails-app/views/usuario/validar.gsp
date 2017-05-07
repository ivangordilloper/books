<html>
<head>
    <title> CONTACTO </title>
    <script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
    <script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
    <script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
    <g:external dir="css" file="modals.css"/>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js"></script>
    <g:javascript>
jQuery(document).ready(function($){
        var token = "${token}";
        if(token=='error'){
            $('#MSGE_16').modal('show');
        }
        else{

        }
        });
    </g:javascript>
</head>
<body>
<div id="inicio">
    <!-- Main -->
    <article id="main">
        <header>
            <h2>Contacto</h2>
        </header>
        <section class="wrapper style5">
            <div class="inner">
                <section>
                    <div class="box">
                        <h4>Preferencias</h4>
                        <form method="post" action="#">

                            ${token}
                            <div class="row uniform">
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="text" name="generof" id="generof" placeholder="Género Literario Favorito" required="true" />
                                </div>
                                <div class="6u 6u$(xsmall)">
                                    <g:select name="autor1" id="autor1" required="true"   from="${autors.nombreCompleto}"  >
                                    </g:select>
                                </div>
                                <div class="6u 6u$(xsmall)">
                                    <g:select name="autor2" id="autor2" required="true"   from="${autors.nombreCompleto}"  >
                                    </g:select>
                                </div>
                                <div class="6u 6u$(xsmall)">
                                    <g:select name="autor3" id="autor3" required="true"   from="${autors.nombreCompleto}"  >
                                    </g:select>
                                </div>
                                <div class="6u 6u$(xsmall)">
                                    <g:select name="libro1" id="libro1" required="true"   from="${libros.titulo}">
                                    </g:select>
                                </div>
                                <div class="6u 6u$(xsmall)">
                                    <g:select name="libro2" id="libro2" required="true"   from="${libros.titulo}">
                                    </g:select>
                                </div>
                                <div class="6u 6u$(xsmall)">
                                    <g:select name="libro3" id="libro3" required="true"   from="${libros.titulo}">
                                    </g:select>
                                </div>
                                <li>
                                    <g:submitButton name="submit" value="Regístrate" class="special"/>
                                </li>
                            </div>
                        </form>
                    </div>

                </section>
            </div>
        </section>
    </article>
</div>
<div class="modal fade" data-keyboard="false" id="MSGE_16" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>El enlace de validación es incorrecto. Veriﬁque que esté bien conformado. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
