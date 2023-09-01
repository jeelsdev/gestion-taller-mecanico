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
import model.Histories;
import model.HistoriesDB;
import model.Services;
import model.ServicesDB;
import model.Users;
import model.UsersDB;
import model.Vehicles;
import model.VehiclesDB;

/**
 *
 * @author User
 */
@WebServlet(name = "HistoriesController", urlPatterns = {"/histories"})
public class HistoriesController extends HttpServlet {

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
        HistoriesDB historiesDB = new HistoriesDB();
        UsersDB usersDB = new UsersDB();
        ServicesDB servicesDB = new ServicesDB();
        VehiclesDB vehiclesDB = new VehiclesDB();
        String action;
        RequestDispatcher dispatcher = null;
        
        action = request.getParameter("action");
        
        if(action == null || action.isEmpty()){
            dispatcher = request.getRequestDispatcher("Histories/index.jsp");
            List<Histories> listHistories = historiesDB.listHistories();
            request.setAttribute("listHistories", listHistories);
            
        }else if("edit".equals(action)){
            dispatcher = request.getRequestDispatcher("Users/edit.jsp");
            int id = Integer.parseInt(request.getParameter("id"));
            Users user = historiesDB.showUser(id);
            System.out.println(user);
            request.setAttribute("user", user);
        }else if("update".equals(action)){
            
            int idUser = Integer.parseInt(request.getParameter("id"));
            String nameBusiness = request.getParameter("nameBusiness");
            String documentType = request.getParameter("documentType");
            int documentNumber = Integer.parseInt(request.getParameter("documentNumber"));
            String direction = request.getParameter("direction");
            String phono = request.getParameter("phono");
            
            Users updateUser = new Users(idUser, nameBusiness, documentType, documentNumber, direction, phono);
            historiesDB.updateUser(updateUser);
            
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Histories> listUsers = historiesDB.listHistories();
            request.setAttribute("listUsers", listUsers);
        }else if("create".equals(action)){
            dispatcher = request.getRequestDispatcher("Histories/create.jsp");
            List<Users> listUsers = usersDB.listUsers();
            List<Services> listServices = servicesDB.listServices();
            request.setAttribute("listUsers", listUsers);
            request.setAttribute("listServices", listServices);
            
        }else if("insert".equals(action)){
            String nameBusiness = request.getParameter("nameBusiness");
            String documentType = request.getParameter("documentType");
            int documentNumber = Integer.parseInt(request.getParameter("documentNumber"));
            String direction = request.getParameter("direction");
            String phono = request.getParameter("phono");
            String email = request.getParameter("email");
            
            Users insertUser = new Users(nameBusiness, documentType, documentNumber, direction, phono, email);
            historiesDB.insertUser(insertUser);
            
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Histories> listUsers = historiesDB.listHistories();
            request.setAttribute("listUsers", listUsers);
        }else if("delete".equals(action)){
            int id = Integer.parseInt(request.getParameter("idUser"));
            historiesDB.deleteUser(id);
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Histories> listUsers = historiesDB.listHistories();
            request.setAttribute("listUsers", listUsers);
        }else if("profile".equals(action)){
            dispatcher = request.getRequestDispatcher("Histories/historiesVehicle.jsp");
            int id = Integer.parseInt(request.getParameter("id"));
            Histories vehicleHistory = vehiclesDB.showVehicle(id);
            request.setAttribute("vehicleHistory", vehicleHistory);
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
