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
public class VehiclesDB {
    Connection con;
    
    public VehiclesDB() {
        Connextion connec = new Connextion();
        con = connec.getConnextion();
    }
    
    public List<Vehicles> listVehicles(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        List<Vehicles> list = new ArrayList<>();
        
        try {
            ps = con.prepareStatement("SELECT id_vehicle, name_business, type_vehicle, brand, model, plate, km, history FROM vehicles INNER JOIN users ON vehicles.id_user = users.id_user");
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idVehicle = rs.getInt("id_vehicle");
                String nameBusiness = rs.getString("name_business");
                String typeVehicle = rs.getString("type_vehicle");
                String brand = rs.getString("brand");
                String model = rs.getString("model");
                String plate = rs.getString("plate");
                double km = rs.getDouble("km");
                String history = rs.getString("history");
                
                Vehicles vehicles = new Vehicles(idVehicle, nameBusiness, typeVehicle, brand, model, plate, km, history);
                
                list.add(vehicles);
            }
            ps.close();
            rs.close();
            return list;
            
        }catch(SQLException e) {
            System.out.println(e.toString());
            return null;
            
        }
        
    }
    
    public Vehicles showVehicleEdit(int _id){
        
        PreparedStatement ps; 
        ResultSet rs;
        Vehicles vehicle = null;
        
        try{
            
            ps = con.prepareStatement("SELECT id_vehicle,type_vehicle, brand, model, km, history FROM vehicles WHERE id_vehicle=?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idVehicle = rs.getInt("id_vehicle");
                String typeVehicle = rs.getString("type_vehicle");
                String brand = rs.getString("brand");
                String model = rs.getString("model");
                double km = rs.getDouble("km");
                String history = rs.getString("history");
                
                vehicle = new Vehicles(idVehicle, typeVehicle, brand, model, km, history);
                
                                              
            }
            return vehicle;
            
        }catch(Exception e){
            System.out.println(e.toString());
            return null;
        }
        
    }
    
    public Histories showVehicle(int _id){
        
        PreparedStatement ps; 
        ResultSet rs;
        Vehicles vehicle = null;
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
    
    public boolean insertVehicle(Vehicles vehicle){
        PreparedStatement ps;
        
        try{
            
            ps = con.prepareStatement("INSERT INTO vehicles (id_user, type_vehicle, brand, model, plate, km, history) VALUES (?,?,?,?,?,?,?)");
            
            ps.setInt(1, vehicle.getIdUsuario());
            ps.setString(2, vehicle.getTypeVehicle());
            ps.setString(3, vehicle.getBrand());
            ps.setString(4, vehicle.getModel());
            ps.setString(5, vehicle.getPlate());
            ps.setDouble(6, vehicle.getKm());
            ps.setString(7, vehicle.getHistory());
            
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean updateVehicle(Vehicles vehicle){
        PreparedStatement ps;
        
        try{
            
            ps = con.prepareStatement("UPDATE vehicles SET type_vehicle=?, brand=?, model=?, plate=?, km=?, history=? WHERE id_vehicle=?");
         
            ps.setString(1, vehicle.getTypeVehicle());
            ps.setString(2, vehicle.getBrand());
            ps.setString(3, vehicle.getModel());
            ps.setString(4, vehicle.getPlate());
            ps.setDouble(5, vehicle.getKm());
            ps.setString(6, vehicle.getHistory());
            ps.setInt(7, vehicle.getIdVehicle());
            
            System.out.println(vehicle.getBrand()+ " nose");
            
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