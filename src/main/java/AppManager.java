

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.mentawai.ajax.renderer.JsonRenderer;
import org.mentawai.core.ApplicationManager;
import org.mentawai.db.SessionHandler;
import org.mentawai.filter.HibernateFilter;
import org.mentawai.filter.ValidationFilter;
import org.mentawai.transaction.HibernateTransaction;

import ServiceImpl.EnderecoServiceImpl;
import br.com.eatweb.action.AdministracaoAction;
import br.com.eatweb.action.EnderecoAction;
import br.com.eatweb.action.EstabelecimentoAction;
import br.com.eatweb.action.LoginAction;
import br.com.eatweb.action.ProdutoAction;
import br.com.eatweb.action.ProdutoCategoriaAction;
import br.com.eatweb.action.ProprietarioAction;
import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.dao.DaoFactory;
import br.com.eatweb.daoHbn.DaoFactoryHbn;
import br.com.eatweb.service.EstabelecimentoService;
import br.com.eatweb.service.LoginService;
import br.com.eatweb.service.ProdutoCategoriaService;
import br.com.eatweb.service.ProdutoService;
import br.com.eatweb.service.ProprietarioService;

public class AppManager extends ApplicationManager{
	
	
	
	@Override
	public SessionHandler createSessionHandler() {
	     
	     
		 Configuration configuration = new Configuration();
         configuration.configure("hibernate.cfg.xml");
         
         
         
         StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
         SessionFactory sessionFactory = configuration.buildSessionFactory(ssrb.build());
         
	    return new SessionHandler(sessionFactory);
	}
	
	@Override
	public void loadFilters() {
		
		filter(new ValidationFilter());
		
	      
		HibernateFilter hibernateFilter = new HibernateFilter((SessionFactory) null); // use Ioc 'sessionFactory'
        ioc("transaction", HibernateTransaction.class);
        di("session", Session.class);
        di("sessionFactory", SessionFactory.class);
        hibernateFilter.setTransactional(true);

	    addGlobalFilter(hibernateFilter);
        
	}
	
	@Override
	public void setupIoC() {
		ioc("daoFactory", DaoFactoryHbn.class);
		
		ioc("enderecoService", EnderecoServiceImpl.class);
		
		ioc(LoginService.class, LoginService.class);
		ioc(ProprietarioService.class, ProprietarioService.class);
		ioc(EstabelecimentoService.class, EstabelecimentoService.class);
		ioc(ProdutoCategoriaService.class, ProdutoCategoriaService.class);
		ioc(ProdutoService.class, ProdutoService.class);
		
		di("daoFactory", DaoFactory.class);
		di("session", Session.class);
		di("loginService", LoginService.class);
		di("proprietarioService", ProprietarioService.class);
		di("estabelecimentoService", EstabelecimentoService.class);
		di("enderecoService", EnderecoServiceImpl.class);
		di("produtoService", ProdutoService.class);
		di("produtoCategoriaService", ProdutoCategoriaService.class);
	}
	
	@Override
	public void loadActions() {
		/*
		 * LOGINACTION
		 * ==========================================
		 */
		action(LoginAction.class, "login")
			.on(SUCCESS, redir(AdministracaoAction.class, "index"))
			.on(ERROR, fwd("/login.jsp"));
		/*
		 * ESTABELECIMENTOACTION
		 * ==========================================
		 */
		
		//CADASTRO		
		action(EstabelecimentoAction.class, "cadastro")
			.on(Constantes.PRORIETARIO_CADASTRO, fwd("jsp/Proprietario/formulario.jsp"))
			.on(Constantes.ESTABELECIMENTO_CADASTRO, fwd("jsp/Estabelecimento/formulario.jsp"))
			.on(Constantes.ENDERECO_CADASTRO, fwd("jsp/Endereco/formulario.jsp"))
			.on(Constantes.IMAGEM_ESTABELECIMENTO_CADASTRO, fwd("jsp/Estabelecimento/imageUpload.jsp"))
			.on(SUCCESS, fwd("jsp/Mensagem/cadastroSuccess.jsp"))
			.on(ERROR, chain(EstabelecimentoAction.class, "cadastro"));
		
		//ADICIONAR PROPRIETARIO A SESSAO CADASTRO
		action(EstabelecimentoAction.class, "setProprietario")
			.on(SUCCESS, redir("jsp/Estabelecimento/formulario.jsp"))
			.on(ERROR, chain(EstabelecimentoAction.class, "cadastro"));

		//ADICIONAR ESTABELECIMENTO A SESSAO CADASTRO
		action(EstabelecimentoAction.class, "setEstabelecimento")
			.on(SUCCESS, redir("jsp/Endereco/formulario.jsp"))
			.on(ERROR, chain(EstabelecimentoAction.class, "cadastro"));

		//ADICIONAR ENDERECO A SESSAO CADASTRO
		action(EstabelecimentoAction.class, "setEndereco")
			.on(SUCCESS, redir("jsp/Estabelecimento/imageUpload.jsp"))
			.on(ERROR, chain(EstabelecimentoAction.class, "cadastro"));
		
		//SALVAR ESTABELECIMENTO 
		action(EstabelecimentoAction.class, "salvar")
			.fileUpload()
			.on(SUCCESS, fwd("jsp/Estabelecimento/cadastroSuccess.jsp"))
			.on(ERROR, fwd("jsp/Estabelecimento/cadastroErro.jsp"));
		
		action(EstabelecimentoAction.class, "confirmarEmail")
			.on(SUCCESS, fwd("login.jsp"))
			.on(ERROR, fwd("index.jsp"));
		
		/*
		 * PROPRIETARIO
		 * ==========================================
		 */
		action(ProprietarioAction.class, "salvar")
			.on(SUCCESS, fwd("jsp/Estabelecimento/endereco.jsp"))
			.on(ERROR, chain(ProprietarioAction.class, "cadastro"));
		
		/*
		 * ENDERECO
		 * ==========================================
		 */
		action(EnderecoAction.class, "estados")
			.on(SUCCESS, ajax(new JsonRenderer()));
		
		action(EnderecoAction.class, "cidades")
			.on(SUCCESS, ajax(new JsonRenderer()));
		
		/*
		 * ADMINISTRACAO
		 * ==========================================
		 */
		action(AdministracaoAction.class, "index")
			.on(SUCCESS, fwd("admin/index.jsp"))
			.on(ERROR, fwd("/login.jsp"));
	
		
		/*
		 * PRODUTO
		 * ==========================================
		 */
		action(ProdutoAction.class, "painel")
			.on(SUCCESS, fwd("jsp/Produto/painel.jsp"))
			.on(ERROR, redir("jsp/Mensagem/500.html"))
			.on(EXCEPTION, redir("jsp/Mensagem/500.html"));
		
		action(ProdutoAction.class, "cadastro")
			.on(SUCCESS, redir("jsp/Produto/formulario.jsp"))
			.on(ERROR, redir("jsp/Mensagem/500.html"));
		
		action(ProdutoAction.class, "salvar")
			.on(SUCCESS, redir(ProdutoAction.class,"painel"))
			.on(ERROR, chain(ProdutoAction.class, "painel"));
	
		/*
		 * Produto Categoria
		 * ==========================================
		 */
		action(ProdutoCategoriaAction.class, "painel")
			.on(SUCCESS, fwd("jsp/ProdutoCategoria/painel.jsp"))
			.on(ERROR, redir("jsp/Mensagem/500.html"))
			.on(EXCEPTION, redir("jsp/Mensagem/500.html"));
		
		action(ProdutoCategoriaAction.class, "listar")
			.on(AJAX, ajax(new JsonRenderer()));

		action(ProdutoCategoriaAction.class, "salvar")
			.on(SUCCESS, redir(ProdutoCategoriaAction.class, "painel"))
			.on(ERROR, chain(ProdutoCategoriaAction.class, "painel"));
	}
	
	
}
