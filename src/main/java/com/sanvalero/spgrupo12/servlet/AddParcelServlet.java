package com.sanvalero.spgrupo12.servlet;

import com.sanvalero.spgrupo12.dao.ParcelDAO;
import com.sanvalero.spgrupo12.domain.Parcel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet que añade una película a la base de datos
 */
@WebServlet(name = "add-parcel", urlPatterns = {"/add-parcel"})
public class AddParcelServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        //int id = Integer.parseInt(request.getParameter("id"));// EL ID LO DEVUELVE LA BASE DE DATOS YA QUE LO GENERA ELLA
        String descripcion = request.getParameter("descripcion");
        String destinatario = request.getParameter("destinatario");
        String origen = request.getParameter("origen");
        String express = request.getParameter("express");
        
        Parcel parcel = new Parcel(descripcion, destinatario, origen, express);
        ParcelDAO parcelDAO = new ParcelDAO();
        try {
            parcelDAO.addParcel(parcel);
            
            PrintWriter out = response.getWriter();
            response.sendRedirect("myform.jsp?status=ok");
        } catch (SQLException sqle) {
            response.sendRedirect("myform.jsp?status=error");
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
