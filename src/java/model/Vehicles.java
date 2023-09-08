/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author User
 */
public class Vehicles {
    
    int idVehicle;
    int idUsuario;
    String nameBusiness;
    String typeVehicle;
    String brand;
    String model;
    String plate;
    double km;
    String history;

    public Vehicles(int idVehicle, int idUsuario, String typeVehicle, String brand, String model, String plate, double km, String history) {
        this.idVehicle = idVehicle;
        this.idUsuario = idUsuario;
        this.typeVehicle = typeVehicle;
        this.brand = brand;
        this.model = model;
        this.plate = plate;
        this.km = km;
        this.history = history;
    }

    public Vehicles(int idVehicle, String nameBusiness, String typeVehicle, String brand, String model, String plate, double km, String history) {
        this.idVehicle = idVehicle;
        this.nameBusiness = nameBusiness;
        this.typeVehicle = typeVehicle;
        this.brand = brand;
        this.model = model;
        this.plate = plate;
        this.km = km;
        this.history = history;
    }

    public Vehicles(int idUsuario, String typeVehicle, String brand, String model, String plate, double km, String history) {
        this.idUsuario = idUsuario;
        this.typeVehicle = typeVehicle;
        this.brand = brand;
        this.model = model;
        this.plate = plate;
        this.km = km;
        this.history = history;
    }

    public Vehicles(int idVehicle,String typeVehicle, String brand, String model, double km, String history) {
        this.idVehicle = idVehicle;
        this.typeVehicle = typeVehicle;
        this.brand = brand;
        this.model = model;
        this.km = km;
        this.history = history;
    }
    
    
    

    public String getNameBusiness() {
        return nameBusiness;
    }

    public void setNameBusiness(String nameBusiness) {
        this.nameBusiness = nameBusiness;
    }
    

    public int getIdVehicle() {
        return idVehicle;
    }

    public void setIdVehicle(int idVehicle) {
        this.idVehicle = idVehicle;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getTypeVehicle() {
        return typeVehicle;
    }

    public void setTypeVehicle(String typeVehicle) {
        this.typeVehicle = typeVehicle;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getPlate() {
        return plate;
    }

    public void setPlate(String plate) {
        this.plate = plate;
    }

    public double getKm() {
        return km;
    }

    public void setKm(double km) {
        this.km = km;
    }

    public String getHistory() {
        return history;
    }

    public void setHistory(String history) {
        this.history = history;
    }
    
    
    
}
