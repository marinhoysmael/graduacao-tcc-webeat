package br.com.eatweb.rest.resource;

import java.io.File;
import java.lang.reflect.Type;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.service.EstabelecimentoService;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Path("/estabelecimento")
public class EstabelecimentoResourse implements Resource{

	private EstabelecimentoService service = new EstabelecimentoService();
	private Gson gson = new Gson();
	
	@Override
	public String create(String objectJson) {
		Type listType = new TypeToken<List<String>>(){}.getType();
		List<String> parametros = (List<String>) gson.fromJson(objectJson, listType);
		
		return null;
	}

	@Override
	public String read(String jsonID) {
		long ID = Long.parseLong(jsonID);
		return null;
	}

	@Override
	public String update(String objectJson) {
		return null;
	}

	@Override
	public String delet(String objectJson) {
		System.err.println("CHEGANDO: "+objectJson);
		return null;
	}
	
	@GET
	@Path("/image/{estabelecimentoID}.png")
	@Produces("image/png")
	public File getImage(@PathParam("estabelecimentoID") String estabelecimentoID){
		
		File file = new File(System.getenv(Constantes.DIRETORIO_ARQUIVOS) + "/estabelecimento-" + estabelecimentoID+".png");
		
		return file;		
	}
	
	
	@GET
	@Path("/list")
	@Produces("application/json")
	public String list(){
		
		return null;
		
	}

}
