<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.domain.Parcel"%>
<%@page import="com.sanvalero.spgrupo12.dao.ParcelDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de peliculas</title>
    </head>
    <body>
        <h1>Lista de peliculas (con JSP)</h1>
        <%
            ParcelDAO parcelDAO = new ParcelDAO();
            ArrayList<Parcel> parcels = parcelDAO.getAllParcels();
        %>
        <ul>
        <%
            for (Parcel parcel : parcels) {
        %>
        <li><%= parcel.getId() %> <a href="remove-parcel?id=<%= parcel.getId() %>">Eliminar</a></li>
        <%    
            }
        %>
        </ul>
        <!-- FIXME pelicula de ejemplo (eliminar cuando se desarrolle el listado) -->
        <li>Título de ejemplo <a href="remove-parcel?id=45">Eliminar</a></li>
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
