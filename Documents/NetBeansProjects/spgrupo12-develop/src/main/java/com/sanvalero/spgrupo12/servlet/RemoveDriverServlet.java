package com.sanvalero.spgrupo12.servlet;

import com.sanvalero.spgrupo12.dao.DriverDAO;
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
@WebServlet(name = "remove-driver", urlPatterns = {"/remove-driver"})
public class RemoveDriverServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        String driver = (request.getParameter("dni"));
        DriverDAO driverDAO = new DriverDAO();
                
        driverDAO.removeDriver(driver);
        PrintWriter out = response.getWriter();
        response.sendRedirect("driver.jsp?message=driver eliminada");
        
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(RemoveDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(RemoveDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

