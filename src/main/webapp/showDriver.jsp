
<%@page import="com.sanvalero.spgrupo12.domain.Driver"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.dao.DriverDAO"%>
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
        <h1>Lista de camioneros (con JSP)</h1>
        <% String dni = request.getParameter("dni"); %>
        <%  
            DriverDAO driverDAO = new DriverDAO();
            ArrayList<Driver> drivers = driverDAO.getDrivers(dni);
        %>
        <table border="1">
        <tr>
            <th>DNI</th> 
            <th>Nombre</th>  
            <th>Apellido</th>
            <th>Poblacion</th>
            <th>telefono</th> 
        </tr>
        <%
            for (Driver driver : drivers) {
        %>
        <tr>
            <td><%= driver.getDni()%></td>
            <td><%= driver.getNombre() %></td>
            <td><%= driver.getApellidos()%></td>            
            <td><%= driver.getPoblacion()%></td>
            <td><%= driver.getTelefono()%></td>
            <td><a href="myFormPhone.jsp">Editar Telefono</a></td>            
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
    </body>
</html>
