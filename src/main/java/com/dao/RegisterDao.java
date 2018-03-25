package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import com.idao.IRegisterDao;
import com.pojos.AdminReg;

public class RegisterDao implements IRegisterDao {

	public void details(AdminReg admin) {
		Session session2 = getSession();
		session2.save(admin);
		Transaction transaction = session2.beginTransaction();
		transaction.commit();
		session2.close();

	}

	private Session getSession() {
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory factory = configure.buildSessionFactory();
		Session session = factory.openSession();
		return session;

	}
}
