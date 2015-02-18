package com.sw.PMF;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public final class teamPMF {
	 //Variable encargada de controlar las peticiones
	 private static final PersistenceManagerFactory instance =
	   JDOHelper.getPersistenceManagerFactory("transactions-optional");
	 //Para que no puedan instanciar la clase
	 private teamPMF(){}
	 //Retorna la instancia encargada de controlar las peticiones
	 public static PersistenceManagerFactory get(){
	    return instance;
	 }
}