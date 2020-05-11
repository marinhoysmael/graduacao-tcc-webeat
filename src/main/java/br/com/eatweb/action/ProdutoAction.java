package br.com.eatweb.action;

import java.util.ArrayList;

import org.mentawai.core.BaseAction;
import org.mentawai.validation.Validatable;
import org.mentawai.validation.Validator;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.Produto;
import br.com.eatweb.model.ProdutoCategoria;
import br.com.eatweb.model.ProdutoSituacao;
import br.com.eatweb.service.ProdutoCategoriaService;
import br.com.eatweb.service.ProdutoService;

public class ProdutoAction extends BaseAction implements Validatable{

	private ProdutoService produtoService;
	
	public ProdutoAction(ProdutoService produtoService) {
		this.produtoService = produtoService;
	}
	
	public String painel(){
		Estabelecimento estabelecimento = (Estabelecimento) session.getAttribute("estabelecimento");
		if(estabelecimento != null){
			output.setValue("listSituacao", ProdutoSituacao.values());
//			output.setValue("listCategorias", new ProdutoCategoriaService().listar(estabelecimento.getID()));
			
//			output.setValue("listProdutos", produtoService.listar(estabelecimento.getID()));
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String cadastro(){
		return SUCCESS;
	}
	
	public String salvar(){
		
		long estabelecimentoID = input.getLong("estabelecimentoID");
		
		if(estabelecimentoID > 0){
			
			Produto produto = new Produto();
			
			input.inject(produto);
			
			produto.setSituacao(ProdutoSituacao.valueOf(input.getString("situacao").toUpperCase()));
			
			long [] categoriaIDs =  input.getLongs("categorias[]");
			
			ArrayList<ProdutoCategoria> categorias = new ArrayList<ProdutoCategoria>();
			for(long ID : categoriaIDs){
				ProdutoCategoria categoria = new ProdutoCategoria();
				categoria.setID(ID);
				categorias.add(categoria);
			}
			
			produto.setCategorias(categorias);
			
			Estabelecimento estabelecimento = new Estabelecimento();
			estabelecimento.setID(estabelecimentoID);
			produto.setEstabelecimento(estabelecimento);
			
			String imagem = input.getString("imagem");
			
//			if(produtoService.create(produto, imagem).equals(Constantes.CREATE_SUCCESS)){
				return SUCCESS;
//			}else{
//				return ERROR;
//			}
		}else{
			return ERROR;
		}
	}

	@Override
	public void prepareValidator(Validator val, String method) {
		if(method != null && method.equals("salvar") && isPost()){
			val.requiredFields("(obrigatório)", "nome", "valor", "descricao", "categorias[]");
		}
	}
}

