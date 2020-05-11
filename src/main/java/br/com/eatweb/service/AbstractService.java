package br.com.eatweb.service;

import java.util.List;

import br.com.eatweb.dao.GenericDao;

public class AbstractService <TypeObject> extends Service<TypeObject>{

	
	public GenericDao<TypeObject> getDao() {
        if (dao == null) {
            throw new IllegalStateException("O Dao é NULL, possivelmente não foi declarado no AppManager ou não foi implementado initDao na classe:" + this.getClass().getSuperclass().getSimpleName());
        }
        return dao;
    }
	
	
	@Override
	public void save(TypeObject typeObject) throws Exception {
		getDao().save(typeObject);
	}

	@Override
	public void update(TypeObject typeObject) throws Exception {
		getDao().update(typeObject);
	}

	@Override
	public void saveOrUpdate(TypeObject typeObject) throws Exception {
		getDao().saveOrUpdate(typeObject);
	}

	@Override
	public void delete(TypeObject typeObject) throws Exception {
		getDao().delete(typeObject);
		
	}

	@Override
	public List<TypeObject> listAll() throws Exception {
		return getDao().listAll();
	}

}
