package com.sw.entidades;
import javax.jdo.annotations.*;
//import java.util.List;

@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class team {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long idTeam;
	@Persistent 
	private String nombreTeam;
	@Persistent 
	private String descripcionTeam;
	@Persistent 
	private String proyectoT;
	public team(String nombreTeam, String descripcionTeam, String proyectoT) {
		super();
		this.nombreTeam = nombreTeam;
		this.descripcionTeam = descripcionTeam;
		this.proyectoT = proyectoT;
	}
	public String getProyectoHU() {
		return proyectoT;
	}
	public void setProyectoHU(String proyectoT) {
		this.proyectoT = proyectoT;
	}
	public Long getIdTeam() {
		return idTeam;
	}
	public void setIdTeam(Long idTeam) {
		this.idTeam = idTeam;
	}
	public String getNombreTeam() {
		return nombreTeam;
	}
	public void setNombreTeam(String nombreTeam) {
		this.nombreTeam = nombreTeam;
	}
	public String getDescripcionTeam() {
		return descripcionTeam;
	}
	public void setDescripcionTeam(String descripcionTeam) {
		this.descripcionTeam = descripcionTeam;
	}
	
	
}
