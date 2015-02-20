package com.sw.utils;


import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.criteriosAceptacionPMF;
import com.sw.PMF.historiaUsuarioPMF;
import com.sw.entidades.criteriosAceptacion;
import com.sw.entidades.historiaUsuario;


public class criteriosAceptacionUtils {
public static void insertarcriteriosAceptacion(String descripcion, String historiaCA)
{
	PersistenceManager  pmf = criteriosAceptacionPMF.get().getPersistenceManager();	
	criteriosAceptacion criteriosAceptacion1 = new criteriosAceptacion(descripcion, historiaCA); 
	pmf.makePersistent(criteriosAceptacion1);
	
}
@SuppressWarnings("unchecked")
public static List<criteriosAceptacion> listarCriteriosAceptacion(){
	PersistenceManager  pmf = criteriosAceptacionPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(criteriosAceptacion.class);
	return (List<criteriosAceptacion>) query1.execute();
}

public static List<criteriosAceptacion> listarCriteriosAceptacionHistoria(String historiaCA){
	PersistenceManager  pmf = criteriosAceptacionPMF.get().getPersistenceManager();	
	String query = "select from "+criteriosAceptacion.class.getName()+" where historiaCA == '"+historiaCA+"'";
	final Query query1 = pmf.newQuery(query);
	return (List<criteriosAceptacion>) query1.execute();
}

public static void eliminarCriteriosAceptacion(Long id){
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	criteriosAceptacion criteriosAceptacion1 = pmf.getObjectById(criteriosAceptacion.class, id);
	pmf.deletePersistent(criteriosAceptacion1);
}
}