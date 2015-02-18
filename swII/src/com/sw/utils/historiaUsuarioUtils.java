package com.sw.utils;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.sw.PMF.historiaUsuarioPMF;
import com.sw.entidades.historiaUsuario;

public class historiaUsuarioUtils {
public static void insertarHistoriaUsuario(String nombrehu, String responsablehu, String riesgohu, String prioridadhu, String esfuerzohu, String descripcionhu, String observacionhu)
{
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	historiaUsuario historiaUsuario1 = new historiaUsuario(nombrehu, responsablehu, riesgohu, prioridadhu, esfuerzohu, descripcionhu, observacionhu); 
	pmf.makePersistent(historiaUsuario1);
	
}
@SuppressWarnings("unchecked")
public static List<historiaUsuario> listarHistoriaUsuario(){
	PersistenceManager  pmf = historiaUsuarioPMF.get().getPersistenceManager();	
	final Query query1 = pmf.newQuery(historiaUsuario.class);
	return (List<historiaUsuario>) query1.execute();
}

}