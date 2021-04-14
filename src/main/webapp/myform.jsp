<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My form</title>
    </head>
    <body>
        <a href="index.html"><p>Volver a inicio </p></a>
        <h1>Ejemplo de formulario web</h1>
        <form method="post" action="add-parcel">
            
            Descripcion:
            <input type="text" name="descripcion"/><br/>
            Destinatario
            <input type="text" name="destinatario"/><br/>
            Origen
            <input type="text" name="origen"/><br/>
            Expres:
            <input type="text" name="express"/><br/>            
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
