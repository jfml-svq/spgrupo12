
<%@page import="com.sanvalero.spgrupo12.domain.Parcel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.dao.ParcelDAO"%>
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
        <h1>Lista de detalles paquetes (con JSP)</h1>
        <% String id = request.getParameter("id"); %>
        <%  
            ParcelDAO parcelDAO = new ParcelDAO();
            ArrayList<Parcel> parcels = parcelDAO.getParcels(id);
        %>
        <table border="1">
        <tr>
            <th>Numero Pedido</th> 
            <th>Descripcion</th>  
            <th>Destinatario</th>
            <th>Origen</th>
            <th>Envio urgente</th> 
        </tr>
        <%
            for (Parcel parcel : parcels) {
        %>
        <tr>
            <td><%= parcel.getId()%></td>
            <td><%= parcel.getDescripcion()%></td>
            <td><%= parcel.getDestinatario()%></td>            
            <td><%= parcel.getOrigen()%></td>
            <td><%= parcel.getExpress()%></td>
            <td><a href="myFormParcel.jsp">Editar Destino</a></td>             
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
