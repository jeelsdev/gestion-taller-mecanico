package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connextion {
    public Connection getConnextion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_machanical_workshop?serverTimezone=UTC", "root", "");
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
