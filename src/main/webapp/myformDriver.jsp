<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            
        <title>My formDriver</title>
    </head>
    <body>
        <a href="index.html"><p>Volver a inicio </p></a>
        <h1>Ejemplo de formulario Conductor</h1>
        <form method="post" action="add-driver">
            Dni:
            <input type="text" name="dni"/><br/>
            Nombre:
            <input type="text" name="nombre"/><br/>
            Apellidos:
            <input type="text" name="apellidos"/><br/>
            Población:
            <input type="text" name="poblacion"/><br/>
            Telefono:
            <input type="text" name="telefono"/><br/>            
            <input type="submit" value="Registrar"/>
        </form>
        
        <%
            String status = request.getParameter("status");
            if (status == null)
                status = "";
                
            if (status.equals("ok")) {
                out.println("<p style='color:green'>La pelicula se ha registrado con éxito</p>");
            } else if (status.equals("error")) {
                out.println("<p style='color:red'>No se ha podido registrar la pelicula</p>");
            }
        %>
    </body>
</html>
