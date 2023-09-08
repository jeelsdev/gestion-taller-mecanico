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
public class AutenticationDB {
    
    Connection con;
    PreparedStatement ps; 
    ResultSet rs;
    List<AutenticationModel> list = new ArrayList<>();

    
    public AutenticationDB(){
        Connextion connec = new Connextion();
        con = connec.getConnextion();
    }
    
    public List<AutenticationModel> showUser(AutenticationModel au){
        try{
            
            ps = con.prepareStatement("SELECT id_admin, username FROM admins WHERE username=?");
            ps.setString(1, au.getNameAdmin());
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idUser = rs.getInt("id_admin");
                String username = rs.getString("username");
                
                AutenticationModel modela = new AutenticationModel(idUser, username);
                
                list.add(modela);
            }
            
            return list;
            
        }catch(Exception e){
            System.out.println(e.toString());
            return null;
        }finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    /* Ignored */
                }
            }
        }
    }
    
    
}
