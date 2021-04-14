package com.sanvalero.spgrupo12.servlet;

import com.sanvalero.spgrupo12.dao.DriverDAO;
import com.sanvalero.spgrupo12.domain.Driver;
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
 * Servlet que añade una película a la base de datos
 */
@WebServlet(name = "add-driver", urlPatterns = {"/add-driver"})
public class AddDriverServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        //int id = Integer.parseInt(request.getParameter("id"));// EL ID LO DEVUELVE LA BASE DE DATOS YA QUE LO GENERA ELLA
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String poblacion = request.getParameter("poblacion");
        String telefono = request.getParameter("telefono");
        
        //int telefono = Integer.parseInt(request.getParameter("telefono"));//
        
        Driver driver = new Driver(dni, nombre, apellidos, poblacion, telefono);
        DriverDAO driverDAO = new DriverDAO();
        try {
            driverDAO.addDriver(driver);
            
            PrintWriter out = response.getWriter();
            response.sendRedirect("myform.jsp?status=ok");
        } catch (SQLException sqle) {
            response.sendRedirect("myform.jsp?status=error");
        }
    }
    
    
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(AddDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(AddDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}