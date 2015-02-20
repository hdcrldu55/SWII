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
	@Persistent 
	private String horaSprint;
	@Persistent 
	private String proyectoSprint;
	
	public sprint(String nombreSprint, String descripcionSprint,
			Date fechaInicioSprint, Date fechaFinSprint, String horaSprint, String proyectoSprint) {
		super();
		this.nombreSprint = nombreSprint;
		this.descripcionSprint = descripcionSprint;
		this.fechaInicioSprint = fechaInicioSprint;
		this.fechaFinSprint = fechaFinSprint;
		this.horaSprint = horaSprint;
		this.proyectoSprint = proyectoSprint;
	}
	public String getProyectoSprint() {
		return proyectoSprint;
	}
	public void setProyectoSprint(String proyectoSprint) {
		this.proyectoSprint = proyectoSprint;
	}
	public String getHoraSprint() {
		return horaSprint;
	}
	public void setHoraSprint(String horaSprint) {
		this.horaSprint = horaSprint;
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
