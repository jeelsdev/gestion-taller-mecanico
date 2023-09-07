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
import javax.servlet.http.HttpSession;
import model.AutenticationDB;
import model.AutenticationModel;
import model.Histories;

/**
 *
 * @author User
 */
@WebServlet(name = "DashboardController", urlPatterns = {"/dashboard"})
public class DashboardController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action;
        RequestDispatcher dispatcher = null;

        action = request.getParameter("action");
        try {
            if (action != null) {
                switch (action) {
                    case "verify":
                        verify(request, response);
                        break;
                    case "close":
                        close(request, response);
                        break;
                    default:
                        response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {
            try {
                this.getServletConfig().getServletContext().getRequestDispatcher("message-error.jsp").forward(request, response);
            } catch (Exception ex) {
                System.out.println("Error. " + e.getMessage());
            }
        }

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

    private void verify(HttpServletRequest request, HttpServletResponse response) throws Exception{

        HttpSession session;

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

        if (responses == 1) {
            session = request.getSession();
            session.setAttribute("admin", autentication);
            
            request.setAttribute("responses", responses);
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        } else{
            request.setAttribute("responses", responses);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

    private void close(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session = request.getSession();
        
        session.setAttribute("usuario", null);
        
        session.invalidate();
        response.sendRedirect("index.jsp");
    }

}
