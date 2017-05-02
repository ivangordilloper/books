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

                <h4>Editar autor: ${pupdateA.nombreCompleto}</h4>

                <g:form method="post" action="actualizar">
                    <g:hiddenField name="idAutor" value="${pupdateA.id}" />
                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nombre" id="nombre" value="${pupdateA.nombreCompleto}" placeholder="Nombre" requiered="true" maxlength="1000"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaNac" id="fechaNac" value="${fecha}"  placeholder="Fecha nacimiento" requiered="true"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field  type="text" name="nacionalidad" id="nacionalidad" value="${pupdateA.nacionalidad}"   placeholder="Nacionalidad" maxlength="15"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="genero"  value="${pupdateA.genero}"  from="${['Género', 'M', 'F']}">
                            </g:select>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="${pupdateA.generoLiterario}" requiered="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
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