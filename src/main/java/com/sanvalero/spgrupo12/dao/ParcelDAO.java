package com.sanvalero.spgrupo12.dao;

import com.sanvalero.spgrupo12.domain.Parcel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "spgrupo12", "spgrupo12");
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
    
    public void addParcel(Parcel paquete) throws SQLException {
       
        
        String sql = "INSERT INTO PAQUETE ( DESCRIPCION, DESTINATARIO, ORIGEN, EXPRES) "
                + "VALUES (?, ?, ?, ?)";
        
        
        PreparedStatement sentencia = connection.prepareStatement(sql);
        
        sentencia.setString(1, paquete.getDescripcion());
        sentencia.setString(2, paquete.getDestinatario());
        sentencia.setString(3, paquete.getOrigen());
        sentencia.setString(4, "0");
        
        sentencia.executeUpdate();
    }

    public ArrayList<Parcel> getAllParcels() throws SQLException {

        String sql = "SELECT IDPAQUETE, DESCRIPCION, DESTINATARIO, ORIGEN FROM PAQUETE";
        
        ArrayList<Parcel> parcels = new ArrayList<>();
        
        PreparedStatement sentencia = connection.prepareStatement(sql);
        ResultSet resultado = sentencia.executeQuery();
        while (resultado.next()) {
            Parcel newParcels = new Parcel();
            newParcels.setId(resultado.getInt(1));
            newParcels.setDescripcion(resultado.getString(2));
            newParcels.setDestinatario(resultado.getString(3));
            newParcels.setOrigen(resultado.getString(4));
            parcels.add(newParcels);
        }
        return parcels;
    }
    
    /**
     * Elimina un paquete
     * @param id El id de la pelicula a eliminar
     */
    public void removeParcel(String id) throws SQLException {
         
        String sql = "DELETE FROM PAQUETE WHERE IDPAQUETE =  ?";

        PreparedStatement sentencia = connection.prepareStatement(sql);
        sentencia.setString(1, id);
        sentencia.executeUpdate();
    }
    
    
    /**
     * Modifica la información de un paquete
     * @param parcel El paquete con la información a modificar
     */
    public void modifyParcel(Parcel parcel) {
        
    }
}
