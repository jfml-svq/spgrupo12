<%@page import="com.sanvalero.spgrupo12.domain.Driver"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sanvalero.spgrupo12.dao.DriverDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilosDriverList.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DRIVERS DETAILS</title>
    </head>
    <body>
        <header>
                <div class = "zona">
                    <ul>
                        <li class = "item"><a href="index.html" class="pulsador">HOMEPAGE</a></li>
                        <li class = "item"><a href="myform.jsp" class="pulsador">FORM PARCEL</a></li>
                        <li class = "item"><a href="myformDriver.jsp" class="pulsador">FORM DRIVER</a></li>
                        <li class ="item"><a href="parcel.jsp" class="pulsador">PARCELS</a></li>
                        <li class ="item"><a href="driver.jsp" class="pulsador">DRIVERS</a></li>
                    </ul>
                </div>   
                <div class = "busqueda">
                    <h1>FIND YOUR PARCEL</h1>
                        <input type="text" id="s" value="" placeholder="ID PARCEL NUMBER"  />
                        <input class="boton" type="submit" value="GO" />
                </div>
        </header>
        <h2>DRIVER SERVICE</h2>

        <% String dni = request.getParameter("dni"); %>
        <%  
            DriverDAO driverDAO = new DriverDAO();
            ArrayList<Driver> drivers = driverDAO.getDrivers(dni);
        %>
        <h3>LIST OF DRIVERS DETAILS</h3>
        <table border='2'>
        <tr>
            <th>Identification Document:</th>
            <th>Name</th>  
            <th>Surname</th>
            <th>City</th>
            <th>Phone number</th> 
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
