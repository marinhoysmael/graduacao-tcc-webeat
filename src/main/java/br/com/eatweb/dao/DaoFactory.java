package br.com.eatweb.dao;

import java.io.Serializable;

import br.com.eatweb.model.Carrinho;
import br.com.eatweb.model.Cidade;
import br.com.eatweb.model.Comanda;
import br.com.eatweb.model.Endereco;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.EstabelecimentoComentario;
import br.com.eatweb.model.Estado;
import br.com.eatweb.model.ItensDeVenda;
import br.com.eatweb.model.Mensagem;
import br.com.eatweb.model.Mesa;
import br.com.eatweb.model.Produto;
import br.com.eatweb.model.ProdutoCategoria;
import br.com.eatweb.model.ProdutoComentario;
import br.com.eatweb.model.Proprietario;
import br.com.eatweb.model.Usuario;

public interface DaoFactory {

	public GenericDao<Carrinho> getCarrinhoDao();
	
	public GenericDao<Cidade> getCidadeDao();
	
	public GenericDao<Comanda> getComandaDao();

	public GenericDao<Endereco> getEnderecoDao();
	
	public GenericDao<Estabelecimento> getEstabelecimentoDao();
	
	public GenericDao<EstabelecimentoComentario> getEstabelecimentoComentarioDao();
	
	public GenericDao<Estado> getEstadoDao();
	
	public GenericDao<ItensDeVenda> getItensDeVendaDao();
	
	public GenericDao<Mensagem> getMensagemDao();
	
	public GenericDao<Mesa> getMesaDao();
	
	public GenericDao<Produto> getProdutoDao();
	
	public GenericDao<ProdutoCategoria> getProdutoCategoriaDao();
	
	public GenericDao<ProdutoComentario> getProdutoComentarioDao();
	
	public GenericDao<Proprietario> getProprietarioDao();
	
	public GenericDao<Usuario> getUsuarioDao();
}
