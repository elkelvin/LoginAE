<%-- 
    Document   : index
    Created on : 23/08/2017, 01:45:26 AM
    Author     : Kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/formulario.css" rel="stylesheet" type="text/css">
        <title>Mi primera aplicación</title>
    </head>
    <body>
        <form action="Login" method="post">
            <div>
                <label for="Usuario">Usuario:</label>
                <input type="text" name="user" placeholder="Usuario"/>
            </div>            
            <div>
                <label for="Password">Password:</label>
                <input type="password" name="password" placeholder="Contraseña"/>
            </div>              
            <div><button type="submit" >Aceptar</button></div>
        </form>
    </body>
</html>
