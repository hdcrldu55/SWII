package com.sw.entidades;

import javax.jdo.annotations.*;
//import java.util.List;

@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class persona {
@PrimaryKey
@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
private Long idPersona;
@Persistent 
private String nombrePersona;
@Persistent 
private String apellidoPersona;
@Persistent 
private String mailPersona;
@Persistent 
private String descripcionPersona;
@Persistent 
private String teamPersona;
//    @Persistent  
//    @Order(extensions = @Extension(vendorName="datanucleus", key="list-ordering", value="nombreProyecto"))
    //private List< proyecto> proyect;

public persona(String nombrePersona, String apellidoPersona,
		String mailPersona, String descripcionPersona, String teamPersona) {
	super();
	this.nombrePersona = nombrePersona;
	this.apellidoPersona = apellidoPersona;
	this.mailPersona = mailPersona;
	this.descripcionPersona = descripcionPersona;
	this.teamPersona = teamPersona;
}
public String getTeamPersona() {
	return teamPersona;
}
public void setTeamPersona(String teamPersona) {
	this.teamPersona = teamPersona;
}
public Long getIdPersona() {
	return idPersona;
}
public void setIdPersona(Long idPersona) {    
	this.idPersona = idPersona;
}
public String getNombrePersona() {
	return nombrePersona;
}
public void setNombrePersona(String nombrePersona) {
	this.nombrePersona = nombrePersona;
}
public String getApellidoPersona() {
	return apellidoPersona;
}
public void setApellidoPersona(String apellidoPersona) {
	this.apellidoPersona = apellidoPersona;
}
public String getMailPersona() {
	return mailPersona;
}
public void setMailPersona(String mailPersona) {
	this.mailPersona = mailPersona;
}
public String getDescripcionPersona() {
	return descripcionPersona;
}
public void setDescripcionPersona(String descripcionPersona) {
	this.descripcionPersona = descripcionPersona;
}	
}
