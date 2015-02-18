package com.sw.utils;


import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.teamPMF;

import com.sw.entidades.team;
import com.sw.servlet.ActualizarTeam;

public class teamUtils {
public static void insertarTeam(String nombrete, String descripcionte)
{
	PersistenceManager  pmf = teamPMF.get().getPersistenceManager();	
	team team1 = new team(nombrete, descripcionte); 
	pmf.makePersistent(team1);
	
}
@SuppressWarnings("unchecked")
public static List<team> listarTeam(){
	PersistenceManager  pmf = teamPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(team.class);
	return (List<team>) query1.execute();
}
/*
@SuppressWarnings("unchecked")
public static List<team> listarTeam1(String nombrete){
 final PersistenceManager pm = teamPMF.get().getPersistenceManager();
 String query = " select from " +
 team.class.getName() +
 " where nombreTeam == '" +
 nombrete + "'";
 List<team> team1 = (List<team>)pm.newQuery(query).execute();
 return(team1);
}*/


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
