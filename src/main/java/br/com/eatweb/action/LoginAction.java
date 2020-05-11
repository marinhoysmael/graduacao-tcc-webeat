package br.com.eatweb.action;

import java.lang.reflect.Type;
import java.util.List;

import org.mentawai.action.BaseLoginAction;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.EstabelecimentoSituacao;
import br.com.eatweb.model.Proprietario;
import br.com.eatweb.service.LoginService;
import br.com.eatweb.service.ProprietarioService;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class LoginAction extends BaseLoginAction{
	private LoginService loginService;
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	public String login() throws Exception{
		
		String email = input.getString("email");
		String senha = input.getString("senha");
		
		String resposta = "";// new ProprietarioService().read(email, senha);
		if(resposta.equals(Constantes.READ_ERRO)){
			output.setValue("mensagemErro", "Dados inválidos");
			return ERROR;
		}else{
			Gson gson = new Gson();
			
			Type listType = new TypeToken<List<String>>(){}.getType();
			List<String> parametros = (List<String>) gson.fromJson(resposta, listType);
			
			Proprietario proprietario = gson.fromJson(parametros.get(0), Proprietario.class); 
			Estabelecimento estabelecimento = gson.fromJson(parametros.get(1), Estabelecimento.class); 
			
			session.setAttribute("proprietario", proprietario);
			session.setAttribute("estabelecimento", estabelecimento);
			
			return SUCCESS;
		}
	}
}
