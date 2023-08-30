/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Services;
import model.ServicesDB;

/**
 *
 * @author User
 */
@WebServlet(name = "ServicesController", urlPatterns = {"/services"})
public class ServicesController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServicesDB servicesDB = new ServicesDB();
        String action;
        RequestDispatcher dispatcher = null;
        
        action = request.getParameter("action");
        
        if(action == null || action.isEmpty()){
            dispatcher = request.getRequestDispatcher("Services/index.jsp");
            List<Services> listServices = servicesDB.listServices();
            request.setAttribute("listServices", listServices);
            
        }else if("create".equals(action)){
            dispatcher = request.getRequestDispatcher("Services/create.jsp");
        }else if("insert".equals(action)){
            String nameService = request.getParameter("nameService");
            
            Services insertService = new Services(nameService);
            servicesDB.insertService(insertService);
            
            dispatcher = request.getRequestDispatcher("Services/index.jsp");
            List<Services> listServices = servicesDB.listServices();
            request.setAttribute("listServices", listServices);
        }else if("delete".equals(action)){
            int id = Integer.parseInt(request.getParameter("idService"));
            servicesDB.deleteService(id);
            dispatcher = request.getRequestDispatcher("Services/index.jsp");
            List<Services> listServices = servicesDB.listServices();
            request.setAttribute("listServices", listServices);
        }
        
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
