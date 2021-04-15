<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.domain.Driver"%>
<%@page import="com.sanvalero.spgrupo12.dao.DriverDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>LISTADO DE CAMIONEROS</title>
    </head>
    <body>
       
        <h1>Lista de camioneros</h1>
        <%
            DriverDAO driverDAO = new DriverDAO();
            ArrayList<Driver> drivers = driverDAO.getAllDrivers();
        %>
        
        <table border="1">
        <tr>
            <th>Nombre</th>  
            <th>Apellido</th>
            <th>telefono</th>
            <th>Ver detalles</th>
            <th>Eliminar</th>            
        </tr>
        <%
            for (Driver driver : drivers) {
        %>
        <tr>
            <td><%= driver.getNombre() %></td>
            <td><%= driver.getApellidos()%></td>
            <td><%= driver.getTelefono()%></td>
            <td><a href="show-driver?dni=<%= driver.getDni() %>">Ver detalles</a></td>
            <!--<td><a href="showDriver.jsp">Ver mas</a></td>-->
            <td><a href="remove-driver?dni=<%= driver.getDni() %>">Eliminar</a></td>
        </tr> 
        <%    
            }
        %>
        </table>
        <a href="index.html"><p>Volver a inicio </p></a>
        <!-- FIXME pelicula de ejemplo (eliminar cuando se desarrolle el listado) -->
        <!--<li>Título de ejemplo <a href="remove-driver?id=45">Eliminar</a></li>-->
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
