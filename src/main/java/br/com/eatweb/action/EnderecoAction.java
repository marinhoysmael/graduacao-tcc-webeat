package br.com.eatweb.action;

import org.mentawai.core.BaseAction;

import ServiceImpl.EnderecoServiceImpl;
import br.com.eatweb.service.EnderecoService;

public class EnderecoAction extends BaseAction{

	private EnderecoService enderecoService;
	
	
	public EnderecoAction(EnderecoServiceImpl enderecoService) {
		this.enderecoService = enderecoService;
	}

	public String estados(){
		output.setValue("estados","TESTE");
		

		return SUCCESS;
	}
	
	public String cidades(){
		long ID = input.getLong("ID");
		return SUCCESS;
	}
}
