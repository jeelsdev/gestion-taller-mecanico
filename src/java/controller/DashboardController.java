/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.LoginDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AutenticationDB;
import model.AutenticationModel;
import model.Histories;

/**
 *
 * @author User
 */
@WebServlet(name = "DashboardController", urlPatterns = {"/dashboard"})
public class DashboardController extends HttpServlet {

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
        
        String action;
        RequestDispatcher dispatcher = null;
        
        action = request.getParameter("action");
        
        if(action == null || action.isEmpty()){
            AutenticationModel autentication = new AutenticationModel();
            LoginDAO loginDAO = new LoginDAO();
            String submit = request.getParameter("submit");
            AutenticationDB autenticationDB = new AutenticationDB();
            int responses = 0;
            
                    String nameUser = request.getParameter("username");
                    String password = request.getParameter("password");
                    autentication.setNameAdmin(nameUser);
                    autentication.setPasswordAdmin(password);
                    responses = loginDAO.validateLogin(autentication);
                    System.out.println(responses);
                    
                    if(responses != 0){
                        dispatcher = request.getRequestDispatcher("dashboard.jsp");
                        List<AutenticationModel> user = autenticationDB.showUser(autentication);
                        request.setAttribute("user", user);
                        System.out.println(user);
                    }else{
                        dispatcher = request.getRequestDispatcher("/");
                        request.setAttribute("responses", responses);
                    }
              
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
