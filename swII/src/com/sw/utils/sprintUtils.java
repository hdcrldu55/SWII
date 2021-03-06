package com.sw.utils;

import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;


import com.sw.PMF.sprintPMF;


import com.sw.entidades.sprint;

public class sprintUtils {
	public static void insertarSprint(String nombreSprint, String descripcionSprint,Date fechaInicioSprint, Date fechaFinSprint, String horaSprint, String proyectoSprint)
	{
		PersistenceManager  pmf = sprintPMF.get().getPersistenceManager();	
		sprint sprint1 = new sprint(nombreSprint, descripcionSprint, fechaInicioSprint, fechaFinSprint, horaSprint, proyectoSprint); 
		pmf.makePersistent(sprint1);
		
	}
	@SuppressWarnings("unchecked")
	
	public static List<sprint> listarSprint(){
		PersistenceManager  pmf = sprintPMF.get().getPersistenceManager();	
		final Query query1 = pmf.newQuery(sprint.class);
		return (List<sprint>) query1.execute();
	}
	
	public static List<sprint> listarSprintProyecto(String proyectoSprint){
		PersistenceManager  pmf = sprintPMF.get().getPersistenceManager();	
		String query ="select from "+ sprint.class.getName()+" where proyectoSprint == '"+proyectoSprint+"'";
		final Query query1 = pmf.newQuery(query);
		return (List<sprint>) query1.execute();
	}
	
	public static void eliminarSprint(Long id){
		PersistenceManager  pmf = sprintPMF.get().getPersistenceManager();	
		sprint sprint1 = pmf.getObjectById(sprint.class, id);
		pmf.deletePersistent(sprint1);
	}
}
