package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class Connextion {
    public Connection getConnextion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_machanical_workshop?serverTimezone=UTC", "root", "");
            
            return conexion;
        }catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }
}
