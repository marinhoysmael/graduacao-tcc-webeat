package br.com.eatweb.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * 
 * @author ysmael
 *
 */
@Entity
public class Carrinho {

	@Id
	@GeneratedValue
	private long ID;
	
	@OneToMany
	private List<ItensDeVenda> itensCarrinho;
	
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public List<ItensDeVenda> getItensCarrinho() {
		return itensCarrinho;
	}
	public void setItensCarrinho(List<ItensDeVenda> itensCarrinho) {
		this.itensCarrinho = itensCarrinho;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result
				+ ((itensCarrinho == null) ? 0 : itensCarrinho.hashCode());
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
		Carrinho other = (Carrinho) obj;
		if (ID != other.ID)
			return false;
		if (itensCarrinho == null) {
			if (other.itensCarrinho != null)
				return false;
		} else if (!itensCarrinho.equals(other.itensCarrinho))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Carrinho [ID=" + ID + ", itensCarrinho=" + itensCarrinho + "]";
	}
	
	
}
