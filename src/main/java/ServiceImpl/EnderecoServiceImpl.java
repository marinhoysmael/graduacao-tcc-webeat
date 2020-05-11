package ServiceImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import br.com.eatweb.daoHbn.GenericDaoHbn;
import br.com.eatweb.model.Endereco;
import br.com.eatweb.service.EnderecoService;

public class EnderecoServiceImpl extends EnderecoService{

	@Override
	public List<Endereco> listarPorEstado(String estado) {
		GenericDaoHbn<Endereco> daoHbn = (GenericDaoHbn<Endereco>) dao;
		
		Criteria criteria = daoHbn.createCriteria();
		
		if(estado != null && !estado.equals(""))
			criteria.add(Restrictions.like("estado", "%"+estado+"%"));
		
		return criteria.list();
	}
	
}
