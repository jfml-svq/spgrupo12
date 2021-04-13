package com.sanvalero.spgrupo12.servlet;

import com.sanvalero.spgrupo12.dao.ParcelDAO;
import com.sanvalero.spgrupo12.domain.Parcel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet que obtiene la lista completa de peliculas de la base de datos
 */
@WebServlet(name = "parcels", urlPatterns = {"/parcels"})
public class GetParcelsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("<p>Listado de paquetes (con servlet)</p>");
        ParcelDAO parcelDAO = new ParcelDAO();
        try {
            ArrayList<Parcel> parcels = parcelDAO.getAllParcel();
            out.println("<ul>");
            for (Parcel parcel : parcels) {
                out.println("<li>" + parcel.getDescripcion() + " <a href='remove-parcel?id=" + parcel.getId() + "'>Eliminar</a></li>");
            }
            // FIXME pelicula de ejemplo (eliminar cuando se desarrolle el listado)
            out.println("<li>Parcel de ejemplo</li> <a href='remove-parcel?id=23'>Eliminar</a></li>");
            out.println("</ul>");

            // Muestra el mensaje (si lo hay)
            String message = request.getParameter("message");
            if (!message.equals("")) {
                out.println("<p style='color:green'>" + message + "</p>");
            }
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
}
