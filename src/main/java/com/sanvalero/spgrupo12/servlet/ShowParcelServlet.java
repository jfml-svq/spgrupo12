package com.sanvalero.spgrupo12.servlet;

import com.sanvalero.spgrupo12.dao.DriverDAO;
import com.sanvalero.spgrupo12.dao.ParcelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet que elimina una película a la base de datos
 */
@WebServlet(name = "show-parcel", urlPatterns = {"/show-parcel"})
public class ShowParcelServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        String parcel = (request.getParameter("id"));
        ParcelDAO parcelDAO = new ParcelDAO();

        try {
            parcelDAO.getParcels(parcel);
            PrintWriter out = response.getWriter();
            response.sendRedirect("showParcel.jsp?id=" + parcel);
        } catch (SQLException sqle) {
            response.sendRedirect("showParcel.jsp?message==error");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(ShowDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(ShowDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
