<html>
<body>
<img src="cid:logo" />
<div align="center">
    <br>
    Hola ${pusuario}
    <br>
    <b>Buen día  ${pnombre}</b><br><br>
    Usted ha solicitado unirse a la red social más grande de lectores <b><l>Bookscom</l></b>.<br><br>
    Para continuar con su registro por favor dé click en el siguiente enlace que lo llevará al siguiente paso.
    <br><g:createLink controller='usuario' action="validar" absolute="true"/>${"?token="+token}
    <br>
    <br>
    <br>
</div>
<font size="1">Este correo electrónico contiene información legal confidencial y privilegiada. Si Usted no es el destinatario a quien se desea enviar este mensaje, tendrá prohibido darlo a conocer a persona alguna, así como a reproducirlo o copiarlo. Si recibe este mensaje por error, favor de notificarlo al remitente de inmediato y desecharlo de su sistema.</font>

</body>
</html>
