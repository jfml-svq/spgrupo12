package com.sanvalero.spgrupo12.dao;

import com.sanvalero.spgrupo12.domain.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DriverDAO {

    private final String DRIVER = "oracle.jdbc.driver.OracleDriver";
    private final String URL_CONEXION = "jdbc:oracle:thin:@localhost:1521:xe";
    private final String USUARIO = "spgrupo12";
    private final String CONTRASENA = "spgrupo12";

    private Connection connection;

    public DriverDAO() throws SQLException {
        connect();
    }

    /**
     * Conecta con la base de datos
     */
    public void connect() throws SQLException {
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(URL_CONEXION, USUARIO, CONTRASENA);
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
    }

    /**
     * Desconecta de la base de datos
     */
    public void disconnect() {
        try {
            connection.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
    }

    /**
     * Añade un paquete a la base de datos
     *
     * @param Parcel El paquete con la información que se quiere registrar
     * @throws SQLException
     */
    public void addDriver(Driver conductor) throws SQLException {

        String sql = "INSERT INTO CAMIONERO ( DNI, NOMBRE, APELLIDOS, POBLACION , TELEFONO) "
                + "VALUES (?, ?, ?, ?,?)";

        PreparedStatement sentencia = connection.prepareStatement(sql);

        sentencia.setString(1, conductor.getDni());
        sentencia.setString(2, conductor.getNombre());
        sentencia.setString(3, conductor.getApellidos());
        sentencia.setString(4, conductor.getPoblacion());
        sentencia.setString(5, conductor.getTelefono());

        sentencia.executeUpdate();
    }

    public ArrayList<Driver> getAllDrivers() throws SQLException {

        String sql = "SELECT DNI, NOMBRE, APELLIDOS, POBLACION, TELEFONO FROM CAMIONERO";

        ArrayList<Driver> drivers = new ArrayList<>();

        PreparedStatement sentencia = connection.prepareStatement(sql);
        ResultSet resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Driver newDrivers = new Driver();
            newDrivers.setDni(resultado.getString(1));
            newDrivers.setNombre(resultado.getString(2));
            newDrivers.setApellidos(resultado.getString(3));
            newDrivers.setPoblacion(resultado.getString(4));
            newDrivers.setTelefono(resultado.getString(5));

            drivers.add(newDrivers);
        }
        return drivers;
    }
    
    public ArrayList<Driver> getDrivers(String dni) throws SQLException {

        String sql = "SELECT DNI, NOMBRE, APELLIDOS, POBLACION, TELEFONO FROM CAMIONERO WHERE DNI = ?";

        ArrayList<Driver> drivers = new ArrayList<>();

        PreparedStatement sentencia = connection.prepareStatement(sql);
        sentencia.setString(1, dni);
        ResultSet resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Driver newDrivers = new Driver();
            newDrivers.setDni(resultado.getString(1));
            newDrivers.setNombre(resultado.getString(2));
            newDrivers.setApellidos(resultado.getString(3));
            newDrivers.setPoblacion(resultado.getString(4));
            newDrivers.setTelefono(resultado.getString(5));

            drivers.add(newDrivers);
        }
       return drivers;
    }
    
    
    
   
    
    

    /**
     * Elimina un paquete
     *
     * @param id El id de la pelicula a eliminar
     */
    public void removeDriver(String dni) throws SQLException {

        String sql = "DELETE FROM CAMIONERO WHERE DNI =  ?";

        PreparedStatement sentencia = connection.prepareStatement(sql);
        sentencia.setString(1, dni);
        sentencia.executeUpdate();
    }

    /**
     * Modifica la información de un paquete
     *
     * @param parcel El paquete con la información a modificar
     */
    public void modifyParcel(Driver driver) {

    }

}
