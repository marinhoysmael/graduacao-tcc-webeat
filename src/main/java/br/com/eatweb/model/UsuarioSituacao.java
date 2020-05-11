package br.com.eatweb.model;

/**
 * 
 * @author ysmael
 *
 */
public enum UsuarioSituacao {

	ATIVO("Ativo"),
	INATIVO("Inativo")
	;
	
	private String descricao;
	
	private UsuarioSituacao(String descricao){
		this.descricao = descricao;
	}
	
	@Override
	public String toString() {
		return descricao;
	}
}
