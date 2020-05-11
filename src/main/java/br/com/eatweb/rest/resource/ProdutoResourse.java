package br.com.eatweb.rest.resource;

import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.eatweb.model.Produto;
import br.com.eatweb.service.ProdutoService;

import com.google.gson.Gson;

@Path("/produto")
public class ProdutoResourse implements Resource{

	ProdutoService service = new ProdutoService();
	Gson gson = new Gson();
	
	@Override
	public String create(String objectJson) {

		return null;
	}

	@Override
	public String read(String jsonID) {

		return null;
	}

	@Override
	public String update(String objectJson) {

		return null;
	}

	@Override
	public String delet(String objectJson) {

		return null;
	}

	@GET
	@Path("{estabelecimentoID}/list")
	@Produces(MediaType.APPLICATION_JSON)
	public String list(@PathParam("estabelecimentoID") String estabelecimentoId){
		
		long ID = Long.parseLong(estabelecimentoId);
//		ArrayList<Produto> list = (ArrayList<Produto>) service.listar(ID);

		return null;
		
	}

}
