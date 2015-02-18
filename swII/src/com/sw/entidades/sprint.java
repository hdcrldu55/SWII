package com.sw.entidades;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class sprint {

	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long idSprint;
	@Persistent 
	private String nombreSprint;
	@Persistent 
	private String descripcionSprint;
	@Persistent 
	private Date fechaInicioSprint;
	@Persistent 
	private Date fechaFinSprint;
	public sprint(String nombreSprint, String descripcionSprint,
			Date fechaInicioSprint, Date fechaFinSprint) {
		super();
		this.nombreSprint = nombreSprint;
		this.descripcionSprint = descripcionSprint;
		this.fechaInicioSprint = fechaInicioSprint;
		this.fechaFinSprint = fechaFinSprint;
	}
	public Long getIdSprint() {
		return idSprint;
	}
	public void setIdSprint(Long idSprint) {
		this.idSprint = idSprint;
	}
	public String getNombreSprint() {
		return nombreSprint;
	}
	public void setNombreSprint(String nombreSprint) {
		this.nombreSprint = nombreSprint;
	}
	public String getDescripcionSprint() {
		return descripcionSprint;
	}
	public void setDescripcionSprint(String descripcionSprint) {
		this.descripcionSprint = descripcionSprint;
	}
	public Date getFechaInicioSprint() {
		return fechaInicioSprint;
	}
	public void setFechaInicioSprint(Date fechaInicioSprint) {
		this.fechaInicioSprint = fechaInicioSprint;
	}
	public Date getFechaFinSprint() {
		return fechaFinSprint;
	}
	public void setFechaFinSprint(Date fechaFinSprint) {
		this.fechaFinSprint = fechaFinSprint;
	}
	
	
}
