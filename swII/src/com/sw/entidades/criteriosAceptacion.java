package com.sw.entidades;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class criteriosAceptacion {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long idCA;
	@Persistent 
	private String descripcionCA;
	@Persistent 
	private String historiaCA;
	public criteriosAceptacion(String descripcionCA, String historiaCA) {
		super();
		this.descripcionCA = descripcionCA;
		this.historiaCA = historiaCA;
	}
	public String getHistoriaCA() {
		return historiaCA;
	}
	public void setHistoriaCA(String historiaCA) {
		this.historiaCA = historiaCA;
	}
	public Long getIdCA() {
		return idCA;
	}
	public void setIdCA(Long idCA) {
		this.idCA = idCA;
	}
	public String getDescripcionCA() {
		return descripcionCA;
	}
	public void setDescripcionCA(String descripcionCA) {
		this.descripcionCA = descripcionCA;
	}
	
	
}
