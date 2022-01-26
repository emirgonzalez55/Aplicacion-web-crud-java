/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;

import java.math.BigInteger;
import java.security.MessageDigest;
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

    public boolean registrarUsuario(String nombre, String password, String password1) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            String consultauser = "SELECT nombre FROM usuarios WHERE nombre = ? ";
            sentenciaPreparada = conexion.prepareStatement(consultauser);
            sentenciaPreparada.setString(1, nombre);
            resultado = sentenciaPreparada.executeQuery();
            if (!resultado.next()) {
                    
                if (nombre != null && password != null && password.equals(password1)) {
                    String consulta = "INSERT INTO usuarios(nombre,password) VALUES(?,?)";
                    sentenciaPreparada = conexion.prepareStatement(consulta);
                    sentenciaPreparada.setString(1, nombre);
                    sentenciaPreparada.setString(2, getmd5(password));

                    int resultadoInsercion = sentenciaPreparada.executeUpdate();

                    if (resultadoInsercion > 0) {
                        registro = true;
                        System.out.println("Usuario añadido corretamente");
                    } else {
                        registro = false;
                        System.out.println("Error al registrar");

                    }

                } else {
                    System.out.println("No registrado");
                }
            } else {
                System.out.println("El usuario ya existe");

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
            sentenciaPreparada.setString(2, getmd5(password));
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
            if (marca != null && modelo != null && rendimiento != null) {
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

            } else {
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
            if (marca != null && modelo != null && rendimiento != null) {
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

            } else {
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
            if (marca != null && modelo != null && rendimiento != null) {
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

            } else {
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

    public String getmd5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] encBytes = md.digest(input.getBytes());
            BigInteger numero = new BigInteger(1, encBytes);
            String encString = numero.toString(16);
            while (encString.length() < 32) {
                encString = "0" + encString;
            }
            return encString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
