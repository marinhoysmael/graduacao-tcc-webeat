package br.com.eatweb.service;

import java.io.Serializable;

import br.com.eatweb.dao.DaoFactory;


public abstract class RegraNegocioService<TypeObject> extends AbstractService<TypeObject>{
	private DaoFactory daoFactory;
	
	
	public abstract void initDao(DaoFactory daoFactory);
	
	public void setDaoFactory(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
		initDao(daoFactory);
	}
	
	public DaoFactory getDaoFactory() {
		return daoFactory;
	}
}
