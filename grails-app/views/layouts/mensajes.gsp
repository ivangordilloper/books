<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<div class="modal fade" data-keyboard="false" data-backdrop="static" id="MSGC_01" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-warning">
                <h4 class="modal-title">Mensaje de confirmación</h4>
            </div>
            <div class="modal-body">
                <p>¿Está seguro de que desea cancelar la solicitud de registro?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-warning" onclick="window.location = '../';" data-dismiss="modal">Sí</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_01" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>El usuario y contraseña son incorrectos.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_02" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Falta al menos un dato obligatorio para realizar la operación.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_03" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Nombre de usuario en uso, por favor escribe otro.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" data-keyboard="false" id="MSGE_12" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Correo electrónico no registrado en el sistema.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_07" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Las contraseñas no coinciden, por favor vuelva a escribir las contraseñas.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_10" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>El correo electrónico ya está asociado a otra cuenta. Por favor introduzca otra dirección de correo electrónico.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_11" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Usuario no registrado, por favor revise que haya escrito el usuario correctamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_13" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>La contraseña es incorrecta. Inténtelo de nuevo. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_14" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Ocurrió un error al realizar OPERACIÓN, por favor inténtelo de nuevo en un par de minutos.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_15" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Ocurrió un error interno en el sistema al enviar el correo electrónico, por favor inténtelo de nuevo.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_16" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>:El enlace de validación es incorrecto. Veriﬁque que esté bien conformado. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_17" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Para proceder es necesario que conﬁrme haber leído y aceptado el aviso de privacidad.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_18" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Libro/Autor no encontrado.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_19" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>El libro ya ha sido valorado.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" data-keyboard="false" id="MSGE_20" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-error">
                <h4 class="modal-title">Mensaje de error</h4>
            </div>
            <div class="modal-body">
                <p>Notiﬁcar al usuario que la operación del registro fue realizada correctamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_01" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Has sido registrado correctamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_02" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Bienvenido(a) NOMBRE serás dirigido a tu página principal en 3 segundos.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_03" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Los datos han sido actualizados de manera exitosa.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_031" role="dialog">
    <br>
    <br>
    <br>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Los datos han sido actualizados de manera exitosa.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_04" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Se ha enviado un correo electrónico con su nueva contraseña. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_05" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Se te ha enviado un enlace de validación al correo electrónico proporcionado.  </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_06" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Tu valoración de NOMBRE LIBRO fue realizada con éxito. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_07" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Conﬁguración de la lista de preferencia realizada con éxito.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_08" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Lista de Preferencias ha sido creada exitosamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_09" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Lista de Preferencias ha sido eliminada exitosamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_10" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Lista de Preferencias ha sido actualizada exitosamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_11" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Operación OP al usuario TAL realizada con éxito.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_12" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Tu cuenta de Facebook ha sido asociada correctamente.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_13" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Tu solicitud ha sido un éxito, presta atención a tu correo para el e-mail de aceptación. </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="MSGA_14" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>El formulario ha sido completado con éxito.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="MSGA_15" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-has-success">
                <h4 class="modal-title">Mensaje de alerta</h4>
            </div>
            <div class="modal-body">
                <p>Se ha enviado tu comentario y/o sugerencia a Bookscom. Gracias por ayudar a mejorar la comunidad.  </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" onclick="window.location = '../';">Aceptar</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>