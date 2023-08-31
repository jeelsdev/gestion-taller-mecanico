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
public class ServicesDB {
    
    Connection con;
    
    public ServicesDB() {
        Connextion connec = new Connextion();
        con = connec.getConnextion();
    }
    
    public List<Services> listServices(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        List<Services> list = new ArrayList<>();
        
        try {
            ps = con.prepareStatement("SELECT id_service, name FROM services");
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idService = rs.getInt("id_service");
                String name = rs.getString("name");
                
                Services services = new Services(idService, name);
                
                list.add(services);
            }
            ps.close();
            rs.close();
            return list;
            
        }catch(SQLException e) {
            System.out.println(e.toString());
            return null;
            
        }
        
    }
    
    public boolean insertService(Services service){
        PreparedStatement ps;
        
        try{
            
            ps = con.prepareStatement("INSERT INTO services (name) VALUES (?)");
            
            ps.setString(1, service.getName());
            
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    
    public boolean deleteService(int _id){
        PreparedStatement ps;
        
        try{
            ps = con.prepareStatement("DELETE FROM services WHERE id_service=?");
            ps.setInt(1, _id);
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
}
