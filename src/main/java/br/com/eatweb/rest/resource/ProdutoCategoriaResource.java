package br.com.eatweb.rest.resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.ProdutoCategoria;
import br.com.eatweb.service.ProdutoCategoriaService;
import br.com.eatweb.service.Service;

import com.google.gson.Gson;

@Path("/produtoCategoria")
public class ProdutoCategoriaResource implements Resource{

//	Service service = new ProdutoCategoriaService();
	Gson gson = new Gson();
	
	@Override
	public String create(String objectJson) {
		// TODO Auto-generated method stub
		return Constantes.CREATE_ERRO;
	}
	@Override
	public String read(String jsonID) {
		long ID = gson.fromJson(jsonID, Long.class);
		return null;
	}
	@Override
	public String update(String objectJson) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String delet(String objectJson) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@GET
	@Path("/{estabelecimentoID}/list")
	@Produces("application/json")
	@Consumes("application/json")
	public String list(@PathParam("estabelecimentoID") String estabelecimentoID){
		long ID = gson.fromJson(estabelecimentoID, long.class);
		return null;
	}
}
