<html>
<head>
    <title> Editar Autor </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
</head>
<body id="autor">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Editar autor: ${autor.nombre} ${autor.apellidoP} ${autor.apellidoM}</h4>

                <g:form method="post" action="actualizar">

                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nombre" id="nombre" value="${autor.nombre}" placeholder="Nombre" requiered="true" maxlength="10"/>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field  type="text" name="apellidoP" id="apellidoP" value="${autor.apellidoP}" placeholder="ApellidoP" requiered="true" maxlength="10" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field type="text" name="apellidoM" id="apellidoM" value="${autor.apellidoM}" placeholder="ApellidoM" maxlength="10"/>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:field  type="date" name="fechaNac" id="fechaNac" value="${fecha}"  placeholder="Fecha nacimiento" requiered="true"/>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nacionalidad" id="nacionalidad" value="${autor.nacionalidad}"   placeholder="Nacionalidad" maxlength="15"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="genero"  value="${autor.genero}"  from="${['Género', 'M', 'F']}">
                            </g:select>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="${autor.generoLiterario}" requiered="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Editar" class="special" /></li>
                            </ul>

                        </div>
                    </div>


                </g:form>

            </div>
        </section>

    </div>


</section>

</body>
</html>