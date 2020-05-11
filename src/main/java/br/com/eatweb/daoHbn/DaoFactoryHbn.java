package br.com.eatweb.daoHbn;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.eatweb.dao.DaoFactory;
import br.com.eatweb.dao.GenericDao;
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

public class DaoFactoryHbn implements DaoFactory{
	private Session session;
	
	public void setSession(Session session) {
		this.session = session;
	}
	
	public Session getSession() {
		return session;
	}
	
	
	@Override
	public GenericDao<Carrinho> getCarrinhoDao() {
		return new GenericDaoHbn<Carrinho>(session, Carrinho.class);
	}

	@Override
	public GenericDao<Cidade> getCidadeDao() {
		return new GenericDaoHbn<Cidade>(session, Cidade.class);
	}

	@Override
	public GenericDao<Comanda> getComandaDao() {
		return new GenericDaoHbn<Comanda>(session, Comanda.class);
	}

	@Override
	public GenericDao<Endereco> getEnderecoDao() {
		return new GenericDaoHbn<Endereco>(session, Endereco.class);
	}

	@Override
	public GenericDao<Estabelecimento> getEstabelecimentoDao() {
		return new GenericDaoHbn<Estabelecimento>(session, Estabelecimento.class);
	}

	@Override
	public GenericDao<EstabelecimentoComentario> getEstabelecimentoComentarioDao() {
		return new GenericDaoHbn<EstabelecimentoComentario>(session, EstabelecimentoComentario.class);
	}

	@Override
	public GenericDao<Estado> getEstadoDao() {
		return new GenericDaoHbn<Estado>(session, Estado.class);
	}

	@Override
	public GenericDao<ItensDeVenda> getItensDeVendaDao() {
		return new GenericDaoHbn<ItensDeVenda>(session, ItensDeVenda.class);
	}

	@Override
	public GenericDao<Mensagem> getMensagemDao() {
		return new GenericDaoHbn<Mensagem>(session, Mensagem.class);
	}

	@Override
	public GenericDao<Mesa> getMesaDao() {
		return new GenericDaoHbn<Mesa>(session, Mesa.class);
	}

	@Override
	public GenericDao<Produto> getProdutoDao() {
		return new GenericDaoHbn<Produto>(session, Produto.class);
	}

	@Override
	public GenericDao<ProdutoCategoria> getProdutoCategoriaDao() {
		return new GenericDaoHbn<ProdutoCategoria>(session, ProdutoCategoria.class);
	}

	@Override
	public GenericDao<ProdutoComentario> getProdutoComentarioDao() {
		return new GenericDaoHbn<ProdutoComentario>(session, ProdutoComentario.class);
	}

	@Override
	public GenericDao<Proprietario> getProprietarioDao() {
		return new GenericDaoHbn<Proprietario>(session, Proprietario.class);
	}

	@Override
	public GenericDao<Usuario> getUsuarioDao() {
		return new GenericDaoHbn<Usuario>(session, Usuario.class);
	}

}
