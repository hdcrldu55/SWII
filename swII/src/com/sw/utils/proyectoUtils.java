package com.sw.utils;


import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;


import com.sw.PMF.proyectoPMF;
import com.sw.entidades.proyecto;

//import com.sw.PMF.personaPMF;
//import com.sw.entidades.persona;

public class proyectoUtils {
public static void insertarProyecto(String nombreProyecto, String descripcionProyecto,Date fechaProyecto)
{
	PersistenceManager  pmf = proyectoPMF.get().getPersistenceManager();	
	proyecto proyecto1 = new proyecto(nombreProyecto, descripcionProyecto, fechaProyecto); 
	pmf.makePersistent(proyecto1);
	
}
@SuppressWarnings("unchecked")
public static List<proyecto> listarProyecto(){
	PersistenceManager  pmf = proyectoPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(proyecto.class);
	return (List<proyecto>) query1.execute();
}
}

