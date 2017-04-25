<html>
<head>
    <title> Nuevo Autor </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
</head>
<body id="autor">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Agregar autor</h4>

                <g:uploadForm method="post" action="crear">

                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nombre" id="nombre" placeholder="Nombre" requiered="true" maxlength="10"/>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field  type="text" name="apellidoP" id="apellidoP" placeholder="ApellidoP" requiered="true" maxlength="10" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field type="text" name="apellidoM" id="apellidoM" placeholder="ApellidoM" maxlength="10"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaNac" id="fechaNac" value=""  placeholder="Fecha nacimiento" requiered="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="text" name="nacionalidad" id="nacionalidad" value=""  placeholder="Nacionalidad" maxlength="15"/>
                        </div>

                        <div class="6u 6u$(xsmall)">
                            <g:select name="genero"  value="Género" from="${['Género', 'M', 'F']}">
                            </g:select>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="Género" requiered="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>
                        <div class="12u 12u$(xsmall)">

                                Fotografia: <input name="photo" type="file" />

                        </div>

                        <div class="12u 12u$(xsmall)">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Regístrar" class="special" /></li>
                            </ul>

                        </div>
                    </div>


                </g:uploadForm>

            </div>
        </section>

    </div>


</section>

</body>
</html>