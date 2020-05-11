package br.com.eatweb.service;

import java.util.List;

import br.com.eatweb.dao.DaoFactory;
import br.com.eatweb.model.Endereco;

public abstract class EnderecoService extends RegraNegocioService<Endereco>{
	
	@Override
	public void initDao(DaoFactory daoFactory) {
		// TODO Auto-generated method stub
		dao = daoFactory.getEnderecoDao();
		
	}
	
	public abstract List<Endereco> listarPorEstado(String estado);
}
