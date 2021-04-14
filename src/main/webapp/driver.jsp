<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.domain.Driver"%>
<%@page import="com.sanvalero.spgrupo12.dao.DriverDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Listado de peliculas</title>
    </head>
    <body>
        <a href="index.html"><p>Volver a inicio </p></a>
        <h1>Lista de camioneros (con JSP)</h1>
        <%
            DriverDAO driverDAO = new DriverDAO();
            ArrayList<Driver> drivers = driverDAO.getAllDrivers();
        %>
        
        <table border="1">
        <tr>
            <th>Nombre</th>  
            <th>Apellido</th>
            <th>telefono</th>            
        </tr>
        <%
            for (Driver driver : drivers) {
        %>
        <tr>
            <td><%= driver.getNombre() %></td>
            <td><%= driver.getApellidos()%></td>
            <td><%= driver.getTelefono()%></td>
            <td><a href="remove-parcel?id=<%= driver.getDni() %>">Eliminar</a></li></td>
        </tr> 
        <%    
            }
        %>
        </table>
        <a href="index.html"><p>Volver a inicio </p></a>
        <!-- FIXME pelicula de ejemplo (eliminar cuando se desarrolle el listado) -->
        <li>Título de ejemplo <a href="remove-driver?id=45">Eliminar</a></li>
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
