<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.domain.Parcel"%>
<%@page import="com.sanvalero.spgrupo12.dao.ParcelDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilosFormularios.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
        <title>PARCELS LIST</title>
    </head>
    <body>
        <header>
            <div class = "zona">
                <ul>
                    <li class = "item"><a href="myform.jsp" class="pulsador">FORM PARCEL</a></li>
                    <li class = "item"><a href="myformDriver.jsp" class="pulsador">FORM DRIVER</a></li>
                    <li class ="item"><a href="parcel.jsp" class="pulsador">PARCELS</a></li>
                    <li class ="item"><a href="driver.jsp" class="pulsador">DRIVERS</a></li>
                </ul>
                    <img class="camion" src="images/Logo cooporativo.png" alt=""/>
            </div>
            <div class = "busqueda">
                <h1>FIND YOUR PARCEL</h1>
                <form method="post" action="search-parcel"> 
                    <input type="text" name="seguimiento" placeholder="ID PARCEL NUMBER"/>
                    <input class="boton" type="submit"  value="GO"/>
                </form>   
            </div>
        </header>  
        <div class ="titulo">
        <h2>PARCEL SERVICE</h2>
        </div>
        <%
            ParcelDAO paqueteDAO = new ParcelDAO();
            ArrayList<Parcel> parcels = paqueteDAO.getAllParcels();
        %>
        <h3>PARCELS LIST</h3>
        <table class="formulario_2">
        <tr>
            <th>Parcel number</th>
            <th>Addresse</th>  
            <th>Origin</th>
            <th>Show details</th>
            <th>Delete</th>            
        </tr>
        
        <%
            for (Parcel parcel : parcels) {
        %>
        <tr>
            <td><%= parcel.getId() %></td>
            <td><%= parcel.getDestinatario() %></td>
            <td><%= parcel.getOrigen()%></td>            
            <td><a href="show-parcel?id=<%= parcel.getId() %>">Show details</a></td>
            <td><a href="remove-parcel?id=<%= parcel.getId() %>">Delete</a></td>
        </tr>  
        <% 
            }
        %>
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
        </table>
        <footer>
            <div class="redes-sociales">
                <h4>OUR SOCIAL MEDIA:</h4>
                <ul>
                    <li class="redes"><a href=""><img src="images/facebook.png" alt=""></a></li>
                    <li class="redes"><a href=""><img src="images/instagram.png" alt=""></a></li>
                    <li class="redes"><a href=""><img src="images/youtube.png" alt=""></a></li>
                    <li class="redes"><a href=""><img src="images/gorjeo.png" alt=""></a></li>
                </ul>
            </div>
        </footer>         
    </body>
</html>
