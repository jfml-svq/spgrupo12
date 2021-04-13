
package com.sanvalero.spgrupo12.dao;

import com.sanvalero.spgrupo12.domain.Parcel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class ParcelDAO {

    private final String DRIVER = "oracle.jdbc.driver.OracleDriver";
    private final String URL_CONEXION = "jdbc:oracle:thin@localhost:1521:practica";
    private final String USUARIO = "PRUEBA";
    private final String CONTRASENA = "PRUEBA";
    
    private Connection connection;
    
    
    public ParcelDAO() {
        connect();
    }
    
    /**
     * Conecta con la base de datos
     */
    public void connect() {
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
     * @param Parcel El paquete con la información que se quiere registrar
     * @throws SQLException 
     */
    public void addParcel(Parcel Parcel) throws SQLException {
        String sql = "INSERT INTO paquete (Descripcion, Destinatario, Origen, expres) VALUES (?, ?, ?, ?)";
        
        PreparedStatement sentencia = connection.prepareStatement(sql);
        //sentencia.setInt(1, Parcel.getId());//
        sentencia.setString(1, Parcel.getDescripcion());
        sentencia.setString(2, Parcel.getDestinatario());
        sentencia.setString(3, Parcel.getOrigen());
        sentencia.setString(4, Parcel.getExpress());
        sentencia.executeUpdate();
    }
    
    /**
     * Obtiene la lista de paquetes de la base de datos
     * @return Una colección con las peliculas
     */
    public ArrayList<Parcel> getAllParcel() throws SQLException {        
        return new ArrayList<>();
    }
    
    /**
     * Elimina un paquete
     * @param id El id de la pelicula a eliminar
     */
    public void removeParcel(int id) {
        
    }
    
    /**
     * Modifica la información de un paquete
     * @param parcel El paquete con la información a modificar
     */
    public void modifyParcel(Parcel parcel) {
        
    }
}
