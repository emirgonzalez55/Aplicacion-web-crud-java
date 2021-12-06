/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Emir Gonzalez
 */
public class MetodosSQL {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada;
    private ResultSet resultado;

    public boolean registrarUsuario(String nombre, String password) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            if(nombre != null && password != null ){
            String consulta = "INSERT INTO usuarios(nombre,password) VALUES(?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, nombre);
            sentenciaPreparada.setString(2, password);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true;
                System.out.println("Usuario añadido corretamente");
            } else {
                registro = false;
                System.out.println("Error al registrar");

            }
            
            }else {
                System.out.println("No registrado");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("Valor registro;" + registro);
        return registro;
    }

    public boolean buscarUsuarioInicioSesion(String nombre, String password) {
        boolean iniciarSesion = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT nombre, password FROM usuarios WHERE nombre = ? AND password = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, nombre);
            sentenciaPreparada.setString(2, password);
            resultado = sentenciaPreparada.executeQuery();
            if (resultado.next()) {
                iniciarSesion = true;

            } else {
                iniciarSesion = false;

            }
            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("Inciar secion=" + iniciarSesion);
        return iniciarSesion;
    }

    public String buscarNombre(String usuario) {
        String nombre = null;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT nombre FROM usuarios WHERE nombre = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            resultado = sentenciaPreparada.executeQuery();
            if (resultado.next()) {
                nombre = resultado.getString("nombre");
            } else {
                nombre = null;
            }
            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);

            }
        }
        System.out.println("Nombre =" + nombre);
        return nombre;
    }

    public boolean addcpunew(String marca, String modelo, String rendimiento) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            if(marca != null && modelo != null && rendimiento != null){
            String consulta = "INSERT INTO procesadores(marca,modelo,rendimiento) VALUES(?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, marca);
            sentenciaPreparada.setString(2, modelo);
            sentenciaPreparada.setString(3, rendimiento);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true;
                System.out.println("Procesador añadido corretamente");
            } else {
                registro = false;
                System.out.println("Error al guardar");

            }
            
            }else {
                System.out.println("No guardado");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("Valor registro;" + registro);
        return registro;
    }

    public boolean addgpunew(String marca, String modelo, String rendimiento) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            if(marca != null && modelo != null && rendimiento != null){
            String consulta = "INSERT INTO graficas (marca,modelo,rendimiento) VALUES(?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, marca);
            sentenciaPreparada.setString(2, modelo);
            sentenciaPreparada.setString(3, rendimiento);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true;
                System.out.println("Grafica añadida corretamente");
            } else {
                registro = false;
                System.out.println("Error al guardar");

            }
            
            }else {
                System.out.println("No guardado");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("Valor registro;" + registro);
        return registro;
    }

    public boolean addchipsetsnew(String marca, String modelo, String rendimiento) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            if(marca != null && modelo != null && rendimiento != null){
            String consulta = "INSERT INTO chipsets (marca,modelo,rendimiento) VALUES(?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, marca);
            sentenciaPreparada.setString(2, modelo);
            sentenciaPreparada.setString(3, rendimiento);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true;
                System.out.println("Chipset añadido corretamente");
            } else {
                registro = false;
                System.out.println("Error al registrar");

            }
            
            }else {
                System.out.println("No guardado");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }

        System.out.println("Valor registro;" + registro);
        return registro;   
    }
    
}
