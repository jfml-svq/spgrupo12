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


    public int getId() {
        return idPaquete;
    }
//
//    public void setId(int id) {
//        this.id = id;
//    }

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
    
    
}
