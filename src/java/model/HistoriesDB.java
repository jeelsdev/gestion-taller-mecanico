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
public class HistoriesDB {
    Connection con;
    
    public HistoriesDB() {
        Connextion connec = new Connextion();
        con = connec.getConnextion();
    }
    
    public List<Histories> listHistories(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        List<Histories> list = new ArrayList<>();
        
        try {
            ps = con.prepareStatement(
                    "SELECT h.id_history, v.brand, s.name, u.name_business, p.method, h.entry_date, h.output_date " +
                    "FROM histories h INNER JOIN vehicles v ON h.id_vehicle = v.id_vehicle " +
                    "INNER JOIN services s ON h.id_vehicle = s.id_service " +
                    "INNER JOIN users u ON h.id_client = u.id_user " +
                    "INNER JOIN ticket t ON h.id_ticket = t.id_ticket " +
                    "INNER JOIN payment_method p ON t.id_pay_method = p.id_pay_method;"
            
                );
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idHistory = rs.getInt("id_history");
                String brandVehicle = rs.getString("brand");
                String nameService = rs.getString("name");
                String nameUser = rs.getString("name_business");
                String methodPay = rs.getString("method");
                String entryDate = rs.getString("entry_date");
                String outputDate = rs.getString("output_date");
                System.out.println(nameService);
                Histories histories = new Histories(idHistory, brandVehicle, nameService, nameUser, methodPay, entryDate, outputDate);
                
                list.add(histories);
            }
            ps.close();
            rs.close();
            return list;
            
        }catch(SQLException e) {
            System.out.println(e.toString());
            return null;
            
        }
        
    }
    
    public Histories showHistories(int _id){
        
        PreparedStatement ps; 
        ResultSet rs;
        Histories history = null;
        Histories vehicleHistory = null;
        
        try{
            
            ps = con.prepareStatement("SELECT id_history, id_vehicle, id_service, id_client, id_ticket, entry_date, output_date FROM histories WHERE id_vehicle=?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idHistory = rs.getInt("id_history");
                int idVehicle = rs.getInt("id_vehicle");
                int idUser = rs.getInt("id_client");
                int idService = rs.getInt("id_service");
                int idTicket = rs.getInt("id_ticket");
                String entryDate = rs.getString("entry_date");
                String outputDate = rs.getString("output_date");
                
                vehicleHistory = new Histories(idHistory, idVehicle, idService, idUser, idTicket, entryDate, outputDate);
                
                                              
            }
            return vehicleHistory;
            
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
