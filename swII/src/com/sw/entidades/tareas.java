package com.sw.entidades;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
//import java.util.List;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class tareas {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long idTarea;
	@Persistent 
	private String nombreTarea;
	@Persistent 
	private String resultadoTarea;
	@Persistent 
	private String historiaTarea;
	public tareas(String nombreTarea, String resultadoTarea, String historiaTarea) {
		super();
		this.nombreTarea = nombreTarea;
		this.resultadoTarea = resultadoTarea;
		this.historiaTarea = historiaTarea;
	}
	public String getHistoriaTarea() {
		return historiaTarea;
	}
	public void setHistoriaTarea(String historiaTarea) {
		this.historiaTarea = historiaTarea;
	}
	public Long getIdTarea() {
		return idTarea;
	}
	public void setIdTarea(Long idTarea) {
		this.idTarea = idTarea;
	}
	public String getNombreTarea() {
		return nombreTarea;
	}
	public void setNombreTarea(String nombreTarea) {
		this.nombreTarea = nombreTarea;
	}
	public String getResultadoTarea() {
		return resultadoTarea;
	}
	public void setResultadoTarea(String resultadoTarea) {
		this.resultadoTarea = resultadoTarea;
	}
	
	
	
}
