package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connextion {
    public Connection getConnextion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://100.66.11.205:3306/mechanical-workshop?serverTimezone=UTC", "root", "OPXtyb23199");
            //Connection conexion = DriverManager.getConnection("jdbc:mysql://bghbeqw5xiyxve0vvbs8-mysql.services.clever-cloud.com:3306/bghbeqw5xiyxve0vvbs8", "uypkizie0yqjj6hf", "EAewIMRVrQmV3HjwFpxt");
            //Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/machanical-workshop?serverTimezone=UTC", "root", "");
            System.out.println("successful connection!!");
            return conexion;
        }catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }
    
    public static void proccessException(SQLException e){
        System.out.println("ERROR: " + e.getMessage());
        System.out.println("CODE: " + e.getErrorCode());
        System.out.println("STATE: " + e.getSQLState());
    }
}
