package com.sanvalero.spgrupo12.domain;

/**
 * Una película
 */
public class Parcel {
    
    private int idPaquete;         // LO GENERA LA BASE DE DATOS Y SOLO HACE FALTA QUE LO DEVUELVA
    private String descripcion;
    private String destinatario;
    private String origen;
    private String express;
   
    public Parcel(String descripcion, String destinatario, String origen, String express) {
        
        //this.id = id;//
        this.descripcion = descripcion;
        this.destinatario = destinatario;
        this.origen = origen;
        this.express = express;
    }

    public Parcel(){}
    
    public Parcel(String descripcion, String destinatario, String origen) {
        this.descripcion = descripcion;
        this.destinatario = destinatario;
        this.origen = origen;
    }


    public int getId() {
        return idPaquete;
    }

   public void setId(int idPaquete) {
       this.idPaquete = idPaquete;
   }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDestinatario() {
        return destinatario;
    }

    public void setDestinatario(String Destinatario) {
        this.destinatario = Destinatario;
    }

    public String getOrigen() {
        return origen;
    }

    public void setOrigen(String origen) {
        this.origen = origen;
    }

    public String getExpress() {
        return express;
    }

    public void setExpress(String express) {
        this.express = express;
    }

    @Override
    public String toString() {
        return "Parcel{" + "idPaquete=" + idPaquete + ", descripcion=" + descripcion + ", destinatario=" + destinatario + ", origen=" + origen + ", express=" + express + '}';
    }

    public void setIdPaquete(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
