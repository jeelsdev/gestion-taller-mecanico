/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import config.Connextion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class UsersDB {
    Connection con;
    
    public UsersDB() {
        Connextion connec = new Connextion();
        con = connec.getConnextion();
    }
    
    public List<Users> listUsers(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        List<Users> list = new ArrayList<>();
        
        try {
            ps = con.prepareStatement("SELECT id_user, name_business, document_type, document_number, direction, phono, email FROM users");
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idUser = rs.getInt("id_user");
                String nameBusiness = rs.getString("name_business");
                String documentType = rs.getString("document_type");
                int documentNumber = rs.getInt("document_number");
                String direction = rs.getString("direction");
                String phono = rs.getString("phono");
                String email = rs.getString("email");
                
                Users user = new Users(idUser, nameBusiness, documentType, documentNumber, direction, phono, email);
                
                list.add(user);
            }
            ps.close();
            rs.close();
            return list;
            
        }catch(SQLException e) {
            System.out.println(e.toString());
            return null;
            
        }
        
    }
    
    public Users showUser(int _id){
        
        PreparedStatement ps; 
        ResultSet rs;
        Users user = null;
        
        try{
            
            ps = con.prepareStatement("SELECT id_user, name_business, document_type, document_number, direction, phono, email FROM users WHERE id_user=?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idUser = rs.getInt("id_user");
                String nameBusiness = rs.getString("name_business");
                String documentType = rs.getString("document_type");
                int documentNumber = rs.getInt("document_number");
                String direction = rs.getString("direction");
                String phono = rs.getString("phono");
                String email = rs.getString("email");
                
                user = new Users(idUser, nameBusiness, documentType, documentNumber, direction, phono, email);
                
                                              
            }
            return user;
            
        }catch(Exception e){
            System.out.println(e.toString());
            return null;
        }
        
    }
    
    public boolean insertUser(Users user){
        PreparedStatement ps;
        
        try{
            
            ps = con.prepareStatement("INSERT INTO users (name_business, document_type, document_number, direction, phono, email) VALUES (?,?,?,?,?,?)");
            
            ps.setString(1, user.getNameBusiness());
            ps.setString(2, user.getDocumentType());
            ps.setInt(3, user.getDocumentNumber());
            ps.setString(4, user.getDirection());
            ps.setString(5, user.getPhono());
            ps.setString(6, user.getEmail());
            
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean updateUser(Users user){
        PreparedStatement ps;
        
        try{
            
            ps = con.prepareStatement("UPDATE users SET name_business=?, document_type=?, document_number=?, direction=?, phono=? WHERE id_user=?");
         
            ps.setString(1, user.getNameBusiness());
            ps.setString(2, user.getDocumentType());
            ps.setInt(3, user.getDocumentNumber());
            ps.setString(4, user.getDirection());
            ps.setString(5, user.getPhono());
            ps.setInt(6, user.getIdUser());
            
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean deleteUser(int _id){
        PreparedStatement ps;
        
        try{
            ps = con.prepareStatement("DELETE FROM users WHERE id_user=?");
            ps.setInt(1, _id);
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    
    
    
}
