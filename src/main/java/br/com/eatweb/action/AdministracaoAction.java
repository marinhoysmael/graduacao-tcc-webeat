package br.com.eatweb.action;

import org.mentawai.core.BaseAction;

import ServiceImpl.EnderecoServiceImpl;
import br.com.eatweb.constantes.Constantes;
import br.com.eatweb.model.Endereco;
import br.com.eatweb.model.Estabelecimento;
import br.com.eatweb.model.Proprietario;
import br.com.eatweb.service.EnderecoService;

public class AdministracaoAction extends BaseAction {
	private EnderecoService enderecoService;

	public void setEnderecoService(EnderecoServiceImpl enderecoService) {
		this.enderecoService = enderecoService;
	}
	
	public AdministracaoAction(){
		
	}
	
	public AdministracaoAction(EnderecoServiceImpl enderecoService){
		this.enderecoService = enderecoService;
	}
	
	public String index(){
//		Proprietario proprietario = (Proprietario) session.getAttribute("proprietario");
//		Estabelecimento estabelecimento = (Estabelecimento) session.getAttribute("estabelecimento");
//		if(proprietario != null && estabelecimento != null){
//			output.setValue("proprietario", proprietario);
//			output.setValue("estabelecimento", estabelecimento);
//			return SUCCESS;
//		}else{
//			return ERROR;
//		}
		
		try {
			Endereco endereco = new Endereco();
			endereco.setBairro("YSMAEL 1");
			endereco.setCep("YSMAEL 1");
			endereco.setCidade("YSMAEL 1");
			endereco.setComplemento("YSMAEL 1");
			endereco.setEstado("YSMAEL 1");
			endereco.setLogradouro("YSMAEL 1");
			endereco.setNumero("Y 1");
			endereco.setReferencia("YSMAEL 1");
			
			enderecoService.save(endereco);
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>"+enderecoService.listAll().size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
