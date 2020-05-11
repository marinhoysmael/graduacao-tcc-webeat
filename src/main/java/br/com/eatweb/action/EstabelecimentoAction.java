package br.com.eatweb.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.commons.codec.binary.Base64;
import org.h2.engine.Session;
import org.mentawai.core.BaseAction;
import org.mentawai.validation.Validatable;
import org.mentawai.validation.Validator;

import com.google.gson.Gson;

import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Endereco;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.Estado;
import br.com.eatweb.model.Proprietario;
import br.com.eatweb.service.EnderecoService;
import br.com.eatweb.service.EstabelecimentoService;
import br.com.eatweb.util.ConverteTo;

public class EstabelecimentoAction extends BaseAction implements Validatable{

	private EstabelecimentoService estabelecimentoService;
	
	
	public EstabelecimentoAction(EstabelecimentoService estabelecimentoService) {
		this.estabelecimentoService = estabelecimentoService;
	}

	public String cadastro() throws IOException{
		if(session.getAttribute("proprietario") != null){
			Estabelecimento estabelecimento = (Estabelecimento) session.getAttribute("estabelecimento");
			if(estabelecimento != null){
				if(estabelecimento.getEndereco() == null){
					return Constantes.ENDERECO_CADASTRO;					
				}else{
					if(session.getAttribute("imagem") == null){
						return Constantes.IMAGEM_ESTABELECIMENTO_CADASTRO;
					}else{
						return SUCCESS;
					}
				}
			}else{
				return Constantes.ESTABELECIMENTO_CADASTRO;
			}
		}else{
			return Constantes.PRORIETARIO_CADASTRO;			
		}
	}

	public String salvar() throws IOException{
		
		Estabelecimento estabelecimento = (Estabelecimento) session.getAttribute("estabelecimento");
		
		if(estabelecimento != null){
			if(estabelecimento.getProprietario() == null){
				Proprietario proprietario = (Proprietario) session.getAttribute("proprietario");
				if(proprietario == null){
					session.reset();
					throw new IOException();
				}else{
					estabelecimento.setProprietario(proprietario);
				}				
			}
			if(estabelecimento.getEndereco() == null){
				Endereco endereco = (Endereco) session.getAttribute("endereco");
				if(endereco == null){
					session.reset();
					throw new IOException();
				}else{
					estabelecimento.setEndereco(endereco);
				}	
			}
			
			String imagem =  ""+input.getValue("imagem");
			
		
			session.setAttribute("imagem", imagem);
			
			String resposta = ""; // estabelecimentoService.create(estabelecimento, imagem);
			
			output.setValue("email", estabelecimento.getProprietario().getEmail());
			
			if(resposta.equals(Constantes.CREATE_SUCCESS)){			
				return SUCCESS;
			}else{
				session.reset();
				return ERROR;
			}
		}else{
			session.reset();
			throw new IOException();
		}
	}

	public String setProprietario() throws IOException{
		Proprietario proprietario = new Proprietario();
		
		input.inject(proprietario);
		
		session.setAttribute("proprietario", proprietario);

		return SUCCESS;
	}
	
	public String setEstabelecimento() throws IOException{
		Estabelecimento estabelecimento = new Estabelecimento();
		
		input.inject(estabelecimento);
		
		session.setAttribute("estabelecimento", estabelecimento);
		
		return SUCCESS;
	}

	public String setEndereco() throws IOException{
		Endereco endereco = new Endereco();
		
		input.inject(endereco);
		
		Estabelecimento estabelecimento = (Estabelecimento)session.getAttribute("estabelecimento");
		
		if(estabelecimento != null){
			estabelecimento.setEndereco(endereco);
		}
		session.setAttribute("endereco", endereco);
		
		
		return SUCCESS;
	}
	
	public String confirmarEmail(){
		
		String idString = ""+input.getValue("cod");
				
		String resposta = "";// estabelecimentoService.confirmarEstabelecimento(idString);
		
		if(resposta.equals(Constantes.UPDATE_SUCCESS))	
			return SUCCESS;
		else
			return ERROR;
	}
	@Override
	public void prepareValidator(Validator val, String method) {
		
		if (method != null && method.equals("salvar") && isPost()) {
			
		}else if(method != null && method.equals("setProprietario") && isPost()){
			val.requiredFields("(obrigatório)", "nome", "email", "CPF", "senha", "senhaConfirm");
			
		}else if(method != null && method.equals("setEstabelecimento") && isPost()){
			val.requiredFields("(obrigatório)", "nome", "email", "telefone");
		}else if(method != null && method.equals("setEndereco") && isPost()){
			val.requiredFields("(obrigatório)", "logradouro", "bairro", "estado", "cidade");
		}
	}
}
