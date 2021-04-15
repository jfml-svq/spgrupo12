<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilosFormularios.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
        <link href="css/estilosDriver.css" rel="stylesheet" type="text/css"/>
            
        <title>My formDriver</title>
    </head>
    <body>
        <header>
            <div class = "zona">
                <ul>
                    <li class = "item"><a href="index.html" class="pulsador">HOMEPAGE</a></li>
                    <li class = "item"><a href="myform.jsp" class="pulsador">ADD PARCEL</a></li>
                    <li class ="item"><a href="parcel.jsp" class="pulsador">PARCELS</a></li>
                    <li class ="item"><a href="driver.jsp" class="pulsador">DRIVERS</a></li>
                </ul>
                    <img class="camion" src="images/Logo cooporativo.png" alt=""/>
            </div>   
            <div class = "busqueda">
                <h1>FIND YOUR PARCEL</h1>
                    <input type="text" id="s" value="" placeholder="ID PARCEL NUMBER"  />
                    <input class="boton" type="submit" value="GO" />
            </div>        
    </header>
        <h2>PARCEL SERVICE</h2>
        <div class="formulario">
            <h3>FORM DRIVER</h3>
            <form method="post" action="add-driver">
                <p>Identification Document:</p>
                <input class ="control" type="text" name="dni"/><br/>
                <p>Name:</p>
                <input class="control" type="text" name="nombre"/><br/>
                <p>Surname:</p>
                <input class="control" type="text" name="apellidos"/><br/>
                <p>Origin</p>
                <input class="control" type="text" name="poblacion"/><br/>
                <p>Phone number:</p>
                <input class="control" type="text" name="telefono"/><br/>            
                <input class ="output" type="submit" value="Register"/>
            </form>            
        </div>
        
        <%
            String status = request.getParameter("status");
            if (status == null)
                status = "";
                
            if (status.equals("ok")) {
                out.println("<p style='color:green'>The driver has been successfully registered</p>");
            } else if (status.equals("error")) {
                out.println("<p style='color:red'>The driver has not been registered</p>");
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
