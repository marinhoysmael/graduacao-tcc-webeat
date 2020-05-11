package br.com.eatweb.rest.resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import ServiceImpl.EnderecoServiceImpl;
import br.com.eatweb.model.Endereco;
import br.com.eatweb.service.EnderecoService;

@Path("/endereco")
public class EnderecoResource extends Resource{
	
	private EnderecoService enderecoService;
	private Gson gson;
	
	
	public void setEnderecoService(EnderecoServiceImpl enderecoService) {
		this.enderecoService = enderecoService;
	}

	public void setGson(Gson gson) {
		this.gson = gson;
	}
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public String create(String objectJson) {
		Endereco endereco = gson.fromJson(objectJson, Endereco.class);
		try {
			enderecoService.saveOrUpdate(endereco);
		} catch (Exception e) {
			return ERROR;
		}
		return SUCCES;
	}

	@GET
	@Path("/{jsonID}")
	@Produces(MediaType.APPLICATION_JSON)
	public String read(@PathParam("jsonID") String jsonID){
		
		return SUCCES;
	}

}
