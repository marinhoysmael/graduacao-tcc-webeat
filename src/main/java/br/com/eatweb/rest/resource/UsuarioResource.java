package br.com.eatweb.rest.resource;

import javax.ws.rs.Path;

import br.com.eatweb.model.Usuario;
import br.com.eatweb.service.EnderecoService;
import br.com.eatweb.service.Service;
import br.com.eatweb.service.UsuarioService;

import com.google.gson.Gson;

import ServiceImpl.EnderecoServiceImpl;

/**
 * Classe responsável por fazer a comunicação request/response com os clientes
 * @author ysmael
 *
 */
@Path("/usuario")
public class UsuarioResource extends Resource {

	private EnderecoService enderecoService;
	
	public void setEnderecoService(EnderecoServiceImpl enderecoService) {
		this.enderecoService = enderecoService;
	}
	
	
	
	Gson gson = new Gson();
	
	public String create(String objectJson) {
		Usuario usuario = gson.fromJson(objectJson, Usuario.class);
		return null;
	}
	
	public String read(String jsonID) {
		long ID = Long.parseLong(jsonID);
		try {
			return gson.toJson(enderecoService.listAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public String update(String objectJson) {
		Usuario usuario = gson.fromJson(objectJson, Usuario.class);
		return null;
	}
	
	public String delet(String objectJson) {
		Usuario usuario = gson.fromJson(objectJson, Usuario.class);
		return null;
	}

	
}
