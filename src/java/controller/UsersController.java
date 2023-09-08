/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Users;
import model.UsersDB;

/**
 *
 * @author User
 */
@WebServlet(name = "UsersController", urlPatterns = {"/users"})
public class UsersController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsersDB usersDB = new UsersDB();
        String action;
        RequestDispatcher dispatcher = null;
        
        action = request.getParameter("action");
        
        if(action == null || action.isEmpty()){
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Users> listUsers = usersDB.listUsers();
            request.setAttribute("listUsers", listUsers);
            
        }else if("edit".equals(action)){
            dispatcher = request.getRequestDispatcher("Users/edit.jsp");
            int id = Integer.parseInt(request.getParameter("id"));
            Users user = usersDB.showUser(id);
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
            usersDB.updateUser(updateUser);
            
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Users> listUsers = usersDB.listUsers();
            request.setAttribute("listUsers", listUsers);
        }else if("create".equals(action)){
            dispatcher = request.getRequestDispatcher("Users/create.jsp");
        }else if("insert".equals(action)){
            String nameBusiness = request.getParameter("nameBusiness");
            String documentType = request.getParameter("documentType");
            int documentNumber = Integer.parseInt(request.getParameter("documentNumber"));
            String direction = request.getParameter("direction");
            String phono = request.getParameter("phono");
            String email = request.getParameter("email");
            
            Users insertUser = new Users(nameBusiness, documentType, documentNumber, direction, phono, email);
            usersDB.insertUser(insertUser);
            
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Users> listUsers = usersDB.listUsers();
            request.setAttribute("listUsers", listUsers);
        }else if("delete".equals(action)){
            int id = Integer.parseInt(request.getParameter("idUser"));
            usersDB.deleteUser(id);
            dispatcher = request.getRequestDispatcher("Users/index.jsp");
            List<Users> listUsers = usersDB.listUsers();
            request.setAttribute("listUsers", listUsers);
        }
        
        dispatcher.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
