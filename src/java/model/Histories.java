/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author User
 */
public class Histories {
    int idHistory;
    int idVehicle;
    int idService;
    int idClient;
    int idTicket;
    String entryDate;
    String outputDate;
    LocalDate entry;
    LocalDate output;
    String description;
    double amount;
    
    String brandVehicle;
    String nameService;
    String nameUser;
    String methodPay;


    public Histories(){
        
    }

    public Histories(int idHistory, int idVehicle, int idService, int idClient, int idTicket, String entryDate, String outputDate) {
        this.idHistory = idHistory;
        this.idVehicle = idVehicle;
        this.idService = idService;
        this.idClient = idClient;
        this.idTicket = idTicket;
        this.entryDate = entryDate;
        this.outputDate = outputDate;
    }

    public Histories(int idVehicle, int idService, int idClient, String entryDate, String outputDate) {
        this.idVehicle = idVehicle;
        this.idService = idService;
        this.idClient = idClient;
        this.entryDate = entryDate;
        this.outputDate = outputDate;
    }

    public Histories(int idHistory, String brandVehicle, String nameService, String nameUser, String methodPay, String entryDate, String outputDate) {
        this.idHistory = idHistory;
        this.brandVehicle = brandVehicle;
        this.nameService = nameService;
        this.nameUser = nameUser;
        this.methodPay = methodPay;
        this.entryDate = entryDate;
        this.outputDate = outputDate;
    }

    public Histories(int idVehicle, int idService, int idClient, int idTicket, LocalDate entryDate, LocalDate outputDate, String description, double amount) {
        this.idVehicle = idVehicle;
        this.idService = idService;
        this.idClient = idClient;
        this.idTicket = idTicket;
        this.entry = entryDate;
        this.output = outputDate;
        this.description = description;
        this.amount = amount;
    }
    
    
    
    
    

    public int getIdHistory() {
        return idHistory;
    }

    public void setIdHistory(int idHistory) {
        this.idHistory = idHistory;
    }

    public int getIdVehicle() {
        return idVehicle;
    }

    public void setIdVehicle(int idVehicle) {
        this.idVehicle = idVehicle;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public int getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public String getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public String getOutputDate() {
        return outputDate;
    }

    public void setOutputDate(String outputDate) {
        this.outputDate = outputDate;
    }
    public String getBrandVehicle() {
        return brandVehicle;
    }

    public void setBrandVehicle(String brandVehicle) {
        this.brandVehicle = brandVehicle;
    }

    public String getNameService() {
        return nameService;
    }

    public void setNameService(String nameService) {
        this.nameService = nameService;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public String getMethodPay() {
        return methodPay;
    }

    public void setMethodPay(String methodPay) {
        this.methodPay = methodPay;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public LocalDate getEntry() {
        return entry;
    }

    public void setEntry(LocalDate entry) {
        this.entry = entry;
    }

    public LocalDate getOutput() {
        return output;
    }

    public void setOutput(LocalDate output) {
        this.output = output;
    }
    
    
    
    
    
}
