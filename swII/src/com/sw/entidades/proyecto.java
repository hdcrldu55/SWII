package com.sw.entidades;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


	@PersistenceCapable (identityType=IdentityType.APPLICATION)
	public class proyecto {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long idProyecto;
	@Persistent 
	private String nombreProyecto;
	@Persistent 
	private String descripcionProyecto;
	@Persistent 
	private Date fechaProyecto;
	
	//@Persistent 
	//private persona pers;
	
	public proyecto(String nombreProyecto, String descripcionProyecto,
			Date fechaProyecto) {
		super();
		this.nombreProyecto = nombreProyecto;
		this.descripcionProyecto = descripcionProyecto;
		this.fechaProyecto = fechaProyecto;
	}
	public Long getIdProyecto() {
		return idProyecto;
	}
	public void setIdProyecto(Long idProyecto) {
		this.idProyecto = idProyecto;
	}
	public String getNombreProyecto() {
		return nombreProyecto;
	}
	public void setNombreProyecto(String nombreProyecto) {
		this.nombreProyecto = nombreProyecto;
	}
	public String getDescripcionProyecto() {
		return descripcionProyecto;
	}
	public void setDescripcionProyecto(String descripcionProyecto) {
		this.descripcionProyecto = descripcionProyecto;
	}
	public Date getFechaProyecto() {
		return fechaProyecto;
	}
	public void setFechaProyecto(Date fechaProyecto) {
		this.fechaProyecto = fechaProyecto;
	}

	
	
	}
