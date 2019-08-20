<%-- 
    Document   : index
    Created on : 20-ago-2019, 14:01:09
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
        <title>Gestión de Contactos</title>
    </head>
    <body style="font-family:'Nunito', sans-serif;">
        <div class="login-form" style="width: 340px; margin: 50px auto">
            <form action="Controlador" method="post">
                <h2 class="text-center">Inicie Sesión</h2>       
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Nombre de usuario" name="nombreUsuario" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Contraseña" name="contra" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block" name="accion" value="Iniciar Sesion">Iniciar Sesión</button>
                </div>     
            </form>
        </div>
    </body>
</html>
