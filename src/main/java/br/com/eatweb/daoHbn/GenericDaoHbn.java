package br.com.eatweb.daoHbn;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import br.com.eatweb.dao.GenericDao;

public final class GenericDaoHbn <TypeObject> implements GenericDao<TypeObject>{

	private Session session;
	private Class<TypeObject> persistentClass;
	
	
	public GenericDaoHbn(Session session, Class<TypeObject> persistentClass){
		this.session = session;
		this.persistentClass = persistentClass;
	}

	//==========================================
	// Métodos do Hibernate
	//==========================================
	public Class<TypeObject> getPersistentClass() {
		return persistentClass;
	}
	
	public void setPersistentClass(Class<TypeObject> persistentClass) {
		this.persistentClass = persistentClass;
	}

	public Session getSession() {
		return session;
	}


	public void setSession(Session session) {
		this.session = session;
	}



	
	public Criteria createCriteria() throws HibernateException   {	
		return session.createCriteria(persistentClass);
	}
	
	public String getClassName(){
		return persistentClass.getSimpleName();
	}
	
	//==========================================
	//Implementação do GenericDao
	//==========================================
	
	@Override
	public boolean save(TypeObject typeObject)throws HibernateException{
		session.save(typeObject);
		return true;
	}
	
	@Override
	public void saveOrUpdate(TypeObject typeObject) throws Exception {
		session.saveOrUpdate(typeObject);
	}
	
	@Override
	public void update(TypeObject typeObject) throws Exception {
		session.update(typeObject);
	}
	
	@Override
	public void delete(TypeObject typeObject) throws Exception {
		session.delete(typeObject);
	}
	
	@Override
	public List<TypeObject> listAll() throws Exception {
		return  this.createCriteria().list();
	}
	
}
