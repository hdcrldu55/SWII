package com.sw.utils;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import com.sw.PMF.personaPMF;
import com.sw.entidades.persona;

public class personaUtils {
public static void insertarPersona(String nombre,String apellido, String mail, String descripcion)
{
	PersistenceManager  pmf = personaPMF.get().getPersistenceManager();	
	persona persona1 = new persona(nombre, apellido, mail, descripcion); 
	pmf.makePersistent(persona1);
	
}
@SuppressWarnings("unchecked")
public static List<persona> listarPersona(){
	PersistenceManager  pmf = personaPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(persona.class);
	return (List<persona>) query1.execute();
}


@SuppressWarnings("unchecked")
public static persona eliminarCell(String nombre) {
	PersistenceManager pmf = personaPMF.get().getPersistenceManager();
	
	String query = " select * from " +
			persona.class.getName() +
			 " where nombre == '" +
			  nombre+ "'";
	List<persona> personas1 = (List<persona>)pmf.newQuery(query).execute();
	
			
	 if (personas1.size()>=1)	
		{
			persona aux = personas1.get(0);
			pmf.deletePersistent(aux);
		}
		return null;		
}

}
