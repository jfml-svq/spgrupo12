<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.domain.Paquete"%>
<%@page import="com.sanvalero.spgrupo12.dao.PaqueteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de paquete</title>
    </head>
    <body>
        <h1>Lista de paquetes (con JSP)</h1>
        <%
            PaqueteDAO paqueteDAO = new PaqueteDAO();
            ArrayList<Paquete> paquetes = paqueteDAO.getAllPackages();
        %>
        <ul>
        <%
            for (Paquete movie : paquetes) {
        %>
        <li><%= paquetes.getId() %> <a href="remove-movie?id=<%= movie.getId() %>">Eliminar</a></li>
        <%    
            }
        %>
        </ul>
        <!-- FIXME pelicula de ejemplo (eliminar cuando se desarrolle el listado) -->
        <li>Título de ejemplo <a href="remove-movie?id=45">Eliminar</a></li>
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
