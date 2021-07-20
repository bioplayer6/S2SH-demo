package com.zonghe.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory sf=null;
	private HibernateUtil() {
		
	}
	static {
		Configuration cfg=new Configuration();
		cfg.configure();
		sf=cfg.buildSessionFactory();
	}
	public static SessionFactory getSessionFactory() {
		return sf;
	}
	public static Session getSession() {
		return sf.openSession();
	}

}




