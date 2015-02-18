package com.sw.utils;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.tareasPMF;
import com.sw.entidades.tareas;


public class tareasUtils {
public static void insertarTareas(String nombret,String resultadot)
{
	PersistenceManager  pmf = tareasPMF.get().getPersistenceManager();	
	tareas tareas1 = new tareas(nombret, resultadot); 
	pmf.makePersistent(tareas1);
	
}
@SuppressWarnings("unchecked")
public static List<tareas> listarTareas(){
	PersistenceManager  pmf = tareasPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(tareas.class);
	return (List<tareas>) query1.execute();
}

}