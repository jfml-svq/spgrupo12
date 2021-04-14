package com.sanvalero.spgrupo12.servlet;

import com.sanvalero.spgrupo12.dao.ParcelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet que elimina una película a la base de datos
 */
@WebServlet(name = "remove-parcel", urlPatterns = {"/remove-parcel"})
public class RemoveParcelServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String parcel = (request.getParameter("id"));
        ParcelDAO parcelDAO = new ParcelDAO();
                
        try {
            parcelDAO.removeParcel(parcel);
            
            PrintWriter out = response.getWriter();
            response.sendRedirect("parcel.jsp?message=Pelicula eliminada");
        } catch (SQLException sqle) {
            response.sendRedirect("parcel.jsp?message==error");
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
