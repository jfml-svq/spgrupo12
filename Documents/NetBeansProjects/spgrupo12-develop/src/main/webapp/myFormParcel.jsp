<%-- 
    Document   : myFormParcel
    Created on : 14-abr-2021, 18:58:25
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilosDestinatario.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div class = "zona">
                <ul>
                    <li class = "item"><a href="index.html"class=""pulsador>HOMEPAGE</a></li>
                    <li class = "item"><a href="myform.jsp"class="pulsador">FORM PARCEL</a></li>
                    <li class = "item"><a href="myformDriver.jsp"class="pulsador">FORM DRIVER</a></li>
                    <li class ="item"><a href="parcel.jsp"class="pulsador">PARCELS</a></li>
                    <li class ="item"><a href="driver.jsp"class="pulsador">DRIVERS</a></li>
                </ul>
            </div>   
            <div class = "busqueda">
                <h1>FIND YOUR PARCEL</h1>
                    <input type="text" id="s" value="" placeholder="ID PARCEL NUMBER"  />
                    <input class="boton" type="submit" value="GO" />
            </div>
    </header>   
    <h2>PARCEL SERVICE</h2>
        <div class ="formulario">
        <h3>CHANGE PARCEL ADDRESSEE:</h3>
        <form method="post" action="edit-destiny">
            <p>ID:</p>
            <input class ="control" type="text" name="id"/><br/> 
            <p>New addresse:</p>
            <input class="control" type="text" name="destiny"/><br/>            
            <input class="output" type="submit" value="Register"/>
        </form>
        </div>
        
        <%
            // Muestra el mensaje (si lo hay)
            String message = request.getParameter("message");
            if (message != null) {
        %>
            <p style='color:green'><%= message %></p>
        <%        
            }
        %>
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