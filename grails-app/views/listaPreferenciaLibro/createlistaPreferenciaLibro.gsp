<html>
<head>
    <title> Nueva Lista </title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
</head>
<body id="listaPreferenciaLibro">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Nueva lista de preferencia de libros</h4>

                <g:form method="post" action="crear">
                    <g:hiddenField name="idUsuario" value="${idU}" />
                    <div class="row uniform">

                        <div class="col-xs-4 col-md-4">
                            <g:field  type="text" name="nombre" id="nombre"  requiered="true" maxlength="30"/>
                        </div>

                        <div class="col-xs-4 col-md-4">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Crear" class="special" /></li>
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