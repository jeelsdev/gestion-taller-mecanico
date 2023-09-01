/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import config.Connextion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.AutenticationModel;
import model.Vehicles;

/**
 *
 * @author User
 */
public class LoginDAO {
    int response = 0;
    Connection con;
    String sql = "";
    PreparedStatement ps; 
    ResultSet rs;
    
    public LoginDAO(){
        Connextion connec = new Connextion();
        con = connec.getConnextion();
    }
    
    public int validateLogin(AutenticationModel au){
        try{
            
            ps = con.prepareStatement("SELECT COUNT(id_admin) as counts FROM admins WHERE username=? AND password=?");
            System.out.println(au.getNameAdmin());
            ps.setString(1, au.getNameAdmin());
            ps.setString(2, au.getPasswordAdmin());
            rs = ps.executeQuery();
            
            while(rs.next()){
                response = rs.getInt("counts");                            
            }
            
            return response;
            
        }catch(Exception e){
            System.out.println(e.toString());
            return response;
        }
    }
    
}
