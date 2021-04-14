<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.domain.Parcel"%>
<%@page import="com.sanvalero.spgrupo12.dao.ParcelDAO"%>
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
            ParcelDAO paqueteDAO = new ParcelDAO();
            ArrayList<Parcel> parcels = paqueteDAO.getAllParcels();
        %>
        
        <table border="1">
        <tr>
            <th>Numero Pedido</th>
            <th>Destinatario</th>  
            <th>Origen</th>
            <th>Eliminar</th>            
        </tr>    
        <%
            for (Parcel parcel : parcels) {
        %>
        <tr>
            <td><%= parcel.getId() %></td>
            <td><%= parcel.getDestinatario() %></td>
            <td><%= parcel.getOrigen()%></td>
            <td><a href="remove-parcel?id=<%= parcel.getId() %>">Eliminar</a></li></td>
        </tr>  
        <% 
            }
        %>
        </table>
        <a href="index.html"><p>Volver a inicio </p></a>
        <!-- FIXME pelicula de ejemplo (eliminar cuando se desarrolle el listado) 
        <li>Título de ejemplo <a href="remove-movie?id=45">Eliminar</a></li>-->
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
