package com.sw.utils;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.historiaUsuarioPMF;
import com.sw.PMF.personaPMF;
import com.sw.entidades.historiaUsuario;
import com.sw.entidades.persona;


public class personaUtils {
public static void insertarPersona(String nombre,String apellido, String mail, String descripcion, String team)
{
	PersistenceManager  pmf = personaPMF.get().getPersistenceManager();	
	persona persona1 = new persona(nombre, apellido, mail, descripcion, team); 
	pmf.makePersistent(persona1);
	
}
@SuppressWarnings("unchecked")
public static List<persona> listarPersona(){
	PersistenceManager  pmf = personaPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(persona.class);
	return (List<persona>) query1.execute();
}

public static List<persona> listarPersonaTeam(String teamID){
	PersistenceManager  pmf = personaPMF.get().getPersistenceManager();	
	String query ="select from "+persona.class.getName()+" where teamPersona == '"+teamID+"'";
	final Query query1 = pmf.newQuery(query);
	return (List<persona>) query1.execute();
}

public static void eliminarPersona(Long id){
	PersistenceManager  pmf = personaPMF.get().getPersistenceManager();	
	persona persona1 = pmf.getObjectById(persona.class, id);
	pmf.deletePersistent(persona1);
}


}
