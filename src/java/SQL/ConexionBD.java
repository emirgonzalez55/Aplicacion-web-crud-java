/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Emir Gonzalez
 */
public class ConexionBD {
    
    private static String url = "jdbc:mysql://localhost:3306/bd";
    private static String usuario="root";
    private static String pass="1234";
    
//    private static Connection conexion;
//    private static PreparedStatement sentenciaPreparada;
//    private static ResultSet resultado;
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url,usuario,pass);
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error" + e);
        }
        
        return conexion;
    }
    
//    public static void main (String[] args){
//        
//        try {
//            conexion = conectar();
//            String consulta = "INSERT INTO usuarios(nombre,password) VALUES ('admin', '1234')";
//            sentenciaPreparada = conexion.prepareStatement(consulta);
//            int i = sentenciaPreparada.executeUpdate();
//            
//            if(i > 0){
//                System.err.println("Se guadaron los datos");
//            }else{
//                System.err.println("No se guardaron los los daros"); 
//            }
//            conexion.close();
//                
//        } catch (SQLException e) {
//            System.out.println("Eroor" + e);
//        }
//    } 

    public Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
