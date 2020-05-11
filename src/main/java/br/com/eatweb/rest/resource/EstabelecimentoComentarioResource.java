package br.com.eatweb.rest.resource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.eatweb.model.EstabelecimentoComentario;
import br.com.eatweb.service.EstabelecimentoComentarioService;

import com.google.gson.Gson;

/**
 * 
 * @author ysmael
 *
 */
@Path("/estabelecimentoComentario")
public class EstabelecimentoComentarioResource extends Resource{
	
	Gson gson = new Gson();
	
	public String create(String objectJson) {
		
		return null;
	}

	public String read(String jsonID) {
		long ID = gson.fromJson(jsonID, Long.class);
		return null;
	}

	public String update(String objectJson) {
		
		return null;
	}

	public String delet(String objectJson) {
		
		return null;
	}
	
	@GET
	@Path("{estabelecimentoID}/list")
	@Produces(MediaType.APPLICATION_JSON)
	public String list(@PathParam("estabelecimentoID") String estabelecimentoId){
		
		return null;
		
	}
}
