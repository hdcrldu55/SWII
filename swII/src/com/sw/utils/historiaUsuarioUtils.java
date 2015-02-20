package com.sw.utils;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QEncoderStream;
import com.sw.PMF.historiaUsuarioPMF;
import com.sw.entidades.historiaUsuario;

public class historiaUsuarioUtils {
public static void insertarHistoriaUsuario(String nombrehu, String responsablehu, String riesgohu, String prioridadhu, String esfuerzohu, String descripcionhu, String observacionhu, String proyectohu)
{
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	historiaUsuario historiaUsuario1 = new historiaUsuario(nombrehu, responsablehu, riesgohu, prioridadhu, esfuerzohu, descripcionhu, observacionhu, proyectohu); 
	pmf.makePersistent(historiaUsuario1);
	
}
@SuppressWarnings("unchecked")
public static List<historiaUsuario> listarHistoriaUsuario(){
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(historiaUsuario.class);
	return (List<historiaUsuario>) query1.execute();
}

public static List<historiaUsuario> listarHistoriaUsuarioProyecto(String proyectoHU){
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	String query ="select from "+historiaUsuario.class.getName()+" where proyectoHU == '"+proyectoHU+"'";
	final Query query1 = pmf.newQuery(query);
	return (List<historiaUsuario>) query1.execute();
}

public static void eliminarHistoriaUsuario(Long id){
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	historiaUsuario historiaUsuario1 = pmf.getObjectById(historiaUsuario.class, id);
	pmf.deletePersistent(historiaUsuario1);
}

}