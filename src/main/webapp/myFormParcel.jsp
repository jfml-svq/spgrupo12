<%-- 
    Document   : myFormParcel
    Created on : 14-abr-2021, 18:58:25
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.html"><p>Volver a inicio </p></a>
        <h1>Modificar destinatario paquete</h1>
        <form method="post" action="edit-destiny">
            ID
            <input type="text" name="id"/><br/> 
            Nuevo Destino:
            <input type="text" name="destiny"/><br/>            
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
</html>
