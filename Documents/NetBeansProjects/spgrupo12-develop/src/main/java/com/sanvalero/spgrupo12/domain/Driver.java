package com.sanvalero.spgrupo12.domain;



public class Driver {
    
    private String dni;        
    private String nombre;
    private String apellidos;
    private String poblacion;
    private String telefono;

    public Driver(String dni, String nombre, String apellidos, String poblacion, String telefono) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.poblacion = poblacion;
        this.telefono = telefono;
    }
    
     public Driver() {
    }
    
    
    
    

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getPoblacion() {
        return poblacion;
    }

    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Driver{" + "dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", poblacion=" + poblacion + ", telefono=" + telefono + '}';
    }
   

    
}