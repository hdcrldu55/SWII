package com.sw.PMF;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public class sprintPMF {
	 private static final PersistenceManagerFactory instance =
			   JDOHelper.getPersistenceManagerFactory("transactions-optional");
			 //Para que no puedan instanciar la clase
			 private sprintPMF(){}
			 //Retorna la instancia encargada de controlar las peticiones
			 public static PersistenceManagerFactory get(){
			    return instance;
			 }
}
