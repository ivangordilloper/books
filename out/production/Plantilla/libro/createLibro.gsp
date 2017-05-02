<html>
<head>
    <title> Nueva Libro </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
</head>
<body id="libro">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Agregar Libro</h4>

                <g:uploadForm method="post" action="crear">

                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="titulo" id="titulo" placeholder="Título" requiered="true" maxlength="20"/>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:select name="autores" requiered="true"   from="${autor.nombreCompleto}"  >
                            </g:select>
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <g:field type="text" name="editorial" id="editorial" placeholder="Editorial" maxlength="20"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:field type="text" name="pais" id="pais" value=""  placeholder="País" maxlength="20"/>
                        </div>

                        <div class="6u 6u$(xsmall)">
                            <g:field  type="date" name="fechaPub" id="fechaPub" value=""  placeholder="Fecha Publicación"/>
                        </div>
                        <div class="6u 6u$(xsmall)">
                            <g:select name="generoLiterario"  value="Género literario" requiered="true" from="${['Género literario', 'Épico', 'Lírico', 'Dramático']}">
                            </g:select>
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <g:field type="text" name="resumen" id="resumen" value=""  placeholder="Resumen" maxlength="100"/>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            Portada: <input name="portada" type="file"/>
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