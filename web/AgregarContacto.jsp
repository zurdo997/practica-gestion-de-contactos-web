<%-- 
    Document   : AgregarContacto
    Created on : 20-ago-2019, 15:32:16
    Author     : Desarrollo Web
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon">
        <title>Agregar</title>
    </head>
    <body style="font-family:'Nunito', sans-serif;">
        <div class="col-4">
            <form name="form1" action="Controlador">
                <input type="text" class="form-control" name="nombreContacto" placeholder="Nombre" required="required">
                <br/>
                <input type="tel" class="form-control" name="telefono" placeholder="Teléfono" required="required">
                <br/>
                <input type="email" class="form-control" name="email" placeholder="Correo electrónico" required="required">
                <br/>
                <input type="submit" class="btn btn-primary" name="accion" value="Agregar Nuevo Contacto">
            </form>
            <div class="col-6">
                <h2><%= request.getParameter("mensaje") %> fue agregado correctamente</h2>
            </div>
        </div>
    </body>
</html>
