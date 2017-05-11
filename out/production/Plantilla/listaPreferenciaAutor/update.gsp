<html>
<head>
    <title> EDITAR LISTA</title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="book.css"/>
</head>
<body id="listaPreferenciaAutor">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4> Editar lista ${lis.nombre}</h4>

                <g:form method="post" action="actualizar" name="formu">
                    <g:hiddenField name="idLista" value="${lis.id}" />
                    <div class="row uniform">

                        <div class="12u 12u$(xsmall)">
                            <g:field  type="text" name="nombre" id="${lis.id}" placeholder="Nombre de la lista" value = "${lis.nombre}" requiered="true" maxlength="20"/>
                        </div>

                        <div class="12u 12u$(xsmall)">
                            <ul class="actions vertical">
                                <li ><g:submitButton name="submit" value="Editar" class="special" onclick = "return confirm('Estan los datos correcots?')" /></li>
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