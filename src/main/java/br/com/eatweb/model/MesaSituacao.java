package br.com.eatweb.model;

/**
 * 
 * @author ysmael
 *
 */
public enum MesaSituacao {

	DISPONIVEL("Disponíve"),
	INDISPONIVEL("Indisponíve")
	;
	
	private String descricao;
	
	private MesaSituacao(String descricao){
		this.descricao = descricao;
	}
	
	@Override
	public String toString() {
		return descricao;
	}
}
