package br.com.eatweb.rest.resource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.service.ProprietarioService;

@Path("/proprietario")
public class ProprietarioResource implements Resource{

	ProprietarioService service = new ProprietarioService();
	Gson gson = new Gson();
	
	@Override
	public String create(String objectJson) {
		// TODO Auto-generated method stub
		return Constantes.CREATE_ERRO;
	}
	@Override
	public String read(String jsonID) {
		// TODO Auto-generated method stub
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
	@Path("{estabelecimentoID}/list")
	@Produces(MediaType.APPLICATION_JSON)
	public String list(){
		return "";
	}
}
