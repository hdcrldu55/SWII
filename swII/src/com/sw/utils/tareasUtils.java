package com.sw.utils;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.historiaUsuarioPMF;
import com.sw.PMF.tareasPMF;
import com.sw.entidades.historiaUsuario;
import com.sw.entidades.tareas;


public class tareasUtils {
public static void insertarTareas(String nombret,String resultadot, String historiat)
{
	PersistenceManager  pmf = tareasPMF.get().getPersistenceManager();	
	tareas tareas1 = new tareas(nombret, resultadot, historiat); 
	pmf.makePersistent(tareas1);
	
}
@SuppressWarnings("unchecked")
public static List<tareas> listarTareas(){
	PersistenceManager  pmf = tareasPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(tareas.class);
	return (List<tareas>) query1.execute();
}

public static List<tareas> listarTareasHistoria(String historiat){
	PersistenceManager  pmf = tareasPMF.get().getPersistenceManager();	
	String query ="select from "+tareas.class.getName()+" where historiaTarea == '"+historiat+"'";
	final Query query1 = pmf.newQuery(query);
	return (List<tareas>) query1.execute();
}

public static void eliminarTareas(Long id){
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	tareas tareas1 = pmf.getObjectById(tareas.class, id);
	pmf.deletePersistent(tareas1);
}
}