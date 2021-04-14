
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        <a href="index.html"><p>Volver a inicio </p></a>
        <% String dni = request.getParameter("dni"); %>
        <h1>Modificar telefono camionero</h1>
        <form method="post" action="edit-phone">
            DNI
            <input type="text" name="dni"/><br/> 
            Nuevo Telefono:
            <input type="text" name="telefono"/><br/>            
            <input type="submit" value="Registrar"/>
        </form>
        
        <%
            // Muestra el mensaje (si lo hay)
            String message = request.getParameter("message");
            if (message != null) {
        %>
            <p style='color:green'><%= message %></p>
        <%        
            }
        %>
    </body>
    </body>
</html>
