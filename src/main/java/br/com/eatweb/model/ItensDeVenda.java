package br.com.eatweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * 
 * @author ysmael
 *
 */
@Entity
public class ItensDeVenda {

	@Id
	@GeneratedValue
	private long ID;

	@OneToOne
	private Carrinho carrinho;
	
	@OneToOne
	private Produto produto;
	
	private long quantidade;
	
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public Carrinho getCarrinho() {
		return carrinho;
	}
	public void setCarrinho(Carrinho carrinho) {
		this.carrinho = carrinho;
	}
	public Produto getProduto() {
		return produto;
	}
	public void setProduto(Produto produto) {
		this.produto = produto;
	}
	public long getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(long quantidade) {
		this.quantidade = quantidade;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result
				+ ((carrinho == null) ? 0 : carrinho.hashCode());
		result = prime * result + ((produto == null) ? 0 : produto.hashCode());
		result = prime * result + (int) (quantidade ^ (quantidade >>> 32));
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItensDeVenda other = (ItensDeVenda) obj;
		if (ID != other.ID)
			return false;
		if (carrinho == null) {
			if (other.carrinho != null)
				return false;
		} else if (!carrinho.equals(other.carrinho))
			return false;
		if (produto == null) {
			if (other.produto != null)
				return false;
		} else if (!produto.equals(other.produto))
			return false;
		if (quantidade != other.quantidade)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ItensDeVenda [ID=" + ID + ", carrinho=" + carrinho
				+ ", produto=" + produto + ", quantidade=" + quantidade + "]";
	}
	
	

	
	
}
