package br.com.eatweb.action;

import org.mentawai.core.BaseAction;
import org.mentawai.validation.Validatable;
import org.mentawai.validation.Validator;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.ProdutoCategoria;
import br.com.eatweb.service.ProdutoCategoriaService;

public class ProdutoCategoriaAction extends BaseAction implements Validatable{
	
	
	private ProdutoCategoriaService produtoCategoriaService;
	
	public ProdutoCategoriaAction(ProdutoCategoriaService produtoCategoriaService) {
		this.produtoCategoriaService = produtoCategoriaService;
	}
	
	public String painel(){
		Estabelecimento estabelecimento = (Estabelecimento) session.getAttribute("estabelecimento");
		if(estabelecimento != null){
//			output.setValue("listProdutoCategorias", produtoCategoriaService.listar(estabelecimento.getID()));
		}else{
			return EXCEPTION;
		}
		return SUCCESS;
	}
	
	public String cadastro(){
		return SUCCESS;
	}
	
	public String salvar(){

		long estabelecimentoID = input.getLong("estabelecimentoID");
		
		ProdutoCategoria categoria = new ProdutoCategoria();
		input.inject(categoria);
		
		categoria.setEstabelecimento(new Estabelecimento());
		categoria.getEstabelecimento().setID(estabelecimentoID);
		
//		if(produtoCategoriaService.create(categoria).equals(Constantes.CREATE_SUCCESS)){
//			output.setValue("estabelecimentoID", estabelecimentoID);
//			return SUCCESS;
//		}else{
			return ERROR;
//		}
	}
	
	public String listar(){
		String typeResponse = input().getString("type");
		if(typeResponse != null && typeResponse.equals("ajax")){
			
			return AJAX;
		}else{
			return SUCCESS;
		}
	}

	@Override
	public void prepareValidator(Validator val, String method) {
		if(method != null && method.equals("salvar") && isPost()){
			val.requiredFields("(obrigatório)", "nome", "descricao");
		}
	}

}
