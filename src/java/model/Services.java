/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author User
 */
public class Services {
    
    int idService;
    String name;

    public Services(int idService,String name) {
        this.name = name;
        this.idService = idService;
    }

    public Services(String name) {
        this.name = name;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int id_serivices) {
        this.idService = id_serivices;
    }
    
    
    
}
