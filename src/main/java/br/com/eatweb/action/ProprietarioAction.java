package br.com.eatweb.action;

import org.mentawai.core.BaseAction;

import br.com.eatweb.model.Proprietario;
import br.com.eatweb.service.ProprietarioService;

public class ProprietarioAction extends BaseAction{
	private ProprietarioService proprietarioService;
	
	public void setProprietarioService(ProprietarioService proprietarioService) {
		this.proprietarioService = proprietarioService;
	}
	
	
	public ProprietarioAction(ProprietarioService proprietarioService) {
		this.proprietarioService = proprietarioService;
	}


	public String salvar(){
		Proprietario proprietario = new Proprietario();
		
		input.inject(proprietario);
		
//		String proprietarioID = proprietarioService.create(proprietario);
		
//		output.setValue("proprietarioID", proprietarioID);
		
		return SUCCESS;
	}
}
