package com.sw.utils;


import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.historiaUsuarioPMF;
import com.sw.PMF.teamPMF;

import com.sw.entidades.tareas;
import com.sw.entidades.team;
import com.sw.servlet.ActualizarTeam;

public class teamUtils {
public static void insertarTeam(String nombrete, String descripcionte, String proyectote)
{
	PersistenceManager  pmf = teamPMF.get().getPersistenceManager();	
	team team1 = new team(nombrete, descripcionte, proyectote); 
	pmf.makePersistent(team1);
	
}
@SuppressWarnings("unchecked")
public static List<team> listarTeam(){
	PersistenceManager  pmf = teamPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(team.class);
	return (List<team>) query1.execute();
}

public static List<team> listarTeamProyecto(String proyectote){
	PersistenceManager  pmf = teamPMF.get().getPersistenceManager();	
	String query ="select from "+team.class.getName()+" where proyectoT == '"+proyectote+"'";
	final Query query1 = pmf.newQuery(query);
	return (List<team>) query1.execute();
	
}

public static void eliminarTeam(Long id){
	PersistenceManager  pmf = teamPMF.get().getPersistenceManager();	
	team team1 = pmf.getObjectById(team.class, id);
	pmf.deletePersistent(team1);
}

@SuppressWarnings("unchecked") 
public static ActualizarTeam actualizarTeam(String nombrete, String descripcionte) { 
			
	 PersistenceManager pmf = teamPMF.get().getPersistenceManager(); 
			
		 final	String query = " select from " +
			team.class.getName() +
			" where nombreTeam == '" +
			nombrete+ "'" ;				
			List<team> team1 = (List<team>)pmf.newQuery(query).execute(); 
			if(team1.size()>=1) {
				team his = team1.get(0);
				his.setNombreTeam(nombrete);
				his.setDescripcionTeam(descripcionte);
			}
			
	       return null;
}
}
