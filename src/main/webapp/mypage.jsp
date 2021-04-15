<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilosFormularios.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
        <title>My Page</title>
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
        <h2>PARCEL SERVICE</h2>
        <h3>My page</h3>
        <%
            String message = "Hello";
            out.println("<p>Esto aparece como contenido de la web</p>");
        %>    
        <p><%=message%></p>
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
