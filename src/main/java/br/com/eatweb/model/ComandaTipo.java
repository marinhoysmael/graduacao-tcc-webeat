package br.com.eatweb.model;

public enum ComandaTipo {
	
	TRADICIONAL("Tradicional"),
	DELIVERY("Delivery")
	;
	
	private String descricao;
	
	private ComandaTipo(String descricao){
		this.descricao = descricao;
	}
	
	@Override
	public String toString() {
		return descricao;
	}
}
