package br.com.eatweb.model;

/**
 * 
 * @author ysmael
 *
 */
public enum EstabelecimentoSituacao {
	OK("Ok"),
	DADOS_INCOMPLETOS("Dados incompletos"),
	ABERTO("Aberto"),
	NAO_CONFIRMADO("Não confirmado"),
	FECHADO("Fechado")
	;
	
	private String descricao;
	
	private EstabelecimentoSituacao(String descricao){
		this.descricao = descricao;
	}
	
	@Override
	public String toString() {
		return descricao;
	}
	
}
