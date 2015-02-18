package com.sw.entidades;
import javax.jdo.annotations.*;

@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class historiaUsuario {

	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long idHusuario;
	@Persistent 
	private String nombreHU;
	@Persistent 
	private String responsableHU;
	@Persistent 
	private String riesgoHU;
	@Persistent 
	private String prioridadHU ;
	@Persistent 
	private String esfuerzoHU;
	@Persistent 
	private String descripcionHU;
	@Persistent 
	private String observacionHU;
	@Persistent 
	private String tiempoHU;
	public historiaUsuario(String nombreHU, String responsableHU,
			String riesgoHU, String prioridadHU, String esfuerzoHU,
			String descripcionHU, String observacionHU,String tiempoHU) {
		super();
		this.nombreHU = nombreHU;
		this.responsableHU = responsableHU;
		this.riesgoHU = riesgoHU;
		this.prioridadHU = prioridadHU;
		this.esfuerzoHU = esfuerzoHU;
		this.descripcionHU = descripcionHU;
		this.observacionHU = observacionHU;
		this.tiempoHU = tiempoHU;
	}
	
	public String getTiempoHU() {
		return tiempoHU;
	}

	public void setTiempoHU(String tiempoHU) {
		this.tiempoHU = tiempoHU;
	}

	public Long getIdHusuario() {
		return idHusuario;
	}
	public void setIdHusuario(Long idHusuario) {
		this.idHusuario = idHusuario;
	}
	public String getNombreHU() {
		return nombreHU;
	}
	public void setNombreHU(String nombreHU) {
		this.nombreHU = nombreHU;
	}
	public String getResponsableHU() {
		return responsableHU;
	}
	public void setResponsableHU(String responsableHU) {
		this.responsableHU = responsableHU;
	}
	public String getRiesgoHU() {
		return riesgoHU;
	}
	public void setRiesgoHU(String riesgoHU) {
		this.riesgoHU = riesgoHU;
	}
	public String getPrioridadHU() {
		return prioridadHU;
	}
	public void setPrioridadHU(String prioridadHU) {
		this.prioridadHU = prioridadHU;
	}
	public String getEsfuerzoHU() {
		return esfuerzoHU;
	}
	public void setEsfuerzoHU(String esfuerzoHU) {
		this.esfuerzoHU = esfuerzoHU;
	}
	public String getDescripcionHU() {
		return descripcionHU;
	}
	public void setDescripcionHU(String descripcionHU) {
		this.descripcionHU = descripcionHU;
	}
	public String getObservacionHU() {
		return observacionHU;
	}
	public void setObservacionHU(String observacionHU) {
		this.observacionHU = observacionHU;
	}

	
}
