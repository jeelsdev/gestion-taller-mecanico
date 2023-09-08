/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author User
 */
public class AutenticationModel {
    
    private int idAdmin;
    private String nameAdmin;
    private String passwordAdmin;
    
    public AutenticationModel(){
        
    }

    public AutenticationModel(int idAdmin, String nameAdmin, String passwordAdmin) {
        this.idAdmin = idAdmin;
        this.nameAdmin = nameAdmin;
        this.passwordAdmin = passwordAdmin;
    }

    public AutenticationModel(int idAdmin, String nameAdmin) {
        this.idAdmin = idAdmin;
        this.nameAdmin = nameAdmin;
    }
    
    

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getNameAdmin() {
        return nameAdmin;
    }

    public void setNameAdmin(String nameAdmin) {
        this.nameAdmin = nameAdmin;
    }

    public String getPasswordAdmin() {
        return passwordAdmin;
    }

    public void setPasswordAdmin(String passwordAdmin) {
        this.passwordAdmin = passwordAdmin;
    }
    
    
    
}
