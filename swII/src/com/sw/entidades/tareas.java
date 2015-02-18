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
	public tareas(String nombreTarea, String resultadoTarea) {
		super();
		this.nombreTarea = nombreTarea;
		this.resultadoTarea = resultadoTarea;
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
