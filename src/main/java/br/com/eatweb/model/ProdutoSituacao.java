package br.com.eatweb.model;

/**
 * 
 * @author ysmael
 *
 */
public enum ProdutoSituacao {

	DISPONIVEL("Disponivel"),
	INDISPONIVEL("Indisponivel")
	;
	
	private String descricao;
	
	private ProdutoSituacao(String descricao){
		this.descricao = descricao;
	}
	
	@Override
	public String toString() {
		return descricao;
	}
}
