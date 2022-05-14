package com.grupo11.GestionRecursosTecnologicos.entities;

import java.util.Date;

public class CentroDeInvestigacion {
    private String nombre;
    private String sigla;
    private String direccion;
    private String edificio;
    private String piso;
    private String coordenadas;
    private String telefonosContacto;
    private String correoElectronico;
    private String numeroResolucionCreacion;
    private Date fechaResolucionCreacion;
    private String reglamento;
    private String caracteristicasGenerales;
    private Date fechaAlta;
    private Long tiempoAntelacionReserva;
    private Date fechaBaja;
    private String motivoBaja;

    public CentroDeInvestigacion(String nombre) {
        this.nombre = nombre;
    }

    public CentroDeInvestigacion(String nombre, String sigla, String direccion, String edificio, String piso, String coordenadas, String telefonosContacto, String correoElectronico, String numeroResolucionCreacion, Date fechaResolucionCreacion, String reglamento, String caracteristicasGenerales, Date fechaAlta, Long tiempoAntelacionReserva, Date fechaBaja, String motivoBaja) {
        this.nombre = nombre;
        this.sigla = sigla;
        this.direccion = direccion;
        this.edificio = edificio;
        this.piso = piso;
        this.coordenadas = coordenadas;
        this.telefonosContacto = telefonosContacto;
        this.correoElectronico = correoElectronico;
        this.numeroResolucionCreacion = numeroResolucionCreacion;
        this.fechaResolucionCreacion = fechaResolucionCreacion;
        this.reglamento = reglamento;
        this.caracteristicasGenerales = caracteristicasGenerales;
        this.fechaAlta = fechaAlta;
        this.tiempoAntelacionReserva = tiempoAntelacionReserva;
        this.fechaBaja = fechaBaja;
        this.motivoBaja = motivoBaja;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEdificio() {
        return edificio;
    }

    public void setEdificio(String edificio) {
        this.edificio = edificio;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public String getCoordenadas() {
        return coordenadas;
    }

    public void setCoordenadas(String coordenadas) {
        this.coordenadas = coordenadas;
    }

    public String getTelefonosContacto() {
        return telefonosContacto;
    }

    public void setTelefonosContacto(String telefonosContacto) {
        this.telefonosContacto = telefonosContacto;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getNumeroResolucionCreacion() {
        return numeroResolucionCreacion;
    }

    public void setNumeroResolucionCreacion(String numeroResolucionCreacion) {
        this.numeroResolucionCreacion = numeroResolucionCreacion;
    }

    public Date getFechaResolucionCreacion() {
        return fechaResolucionCreacion;
    }

    public void setFechaResolucionCreacion(Date fechaResolucionCreacion) {
        this.fechaResolucionCreacion = fechaResolucionCreacion;
    }

    public String getReglamento() {
        return reglamento;
    }

    public void setReglamento(String reglamento) {
        this.reglamento = reglamento;
    }

    public String getCaracteristicasGenerales() {
        return caracteristicasGenerales;
    }

    public void setCaracteristicasGenerales(String caracteristicasGenerales) {
        this.caracteristicasGenerales = caracteristicasGenerales;
    }

    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    public Long getTiempoAntelacionReserva() {
        return tiempoAntelacionReserva;
    }

    public void setTiempoAntelacionReserva(Long tiempoAntelacionReserva) {
        this.tiempoAntelacionReserva = tiempoAntelacionReserva;
    }

    public Date getFechaBaja() {
        return fechaBaja;
    }

    public void setFechaBaja(Date fechaBaja) {
        this.fechaBaja = fechaBaja;
    }

    public String getMotivoBaja() {
        return motivoBaja;
    }

    public void setMotivoBaja(String motivoBaja) {
        this.motivoBaja = motivoBaja;
    }
}
