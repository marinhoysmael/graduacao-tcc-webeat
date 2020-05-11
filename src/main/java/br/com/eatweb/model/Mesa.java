package br.com.eatweb.model;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Mesa {

	@Id
	@GeneratedValue
	private long ID;
	private int numero;
	
	@Enumerated
	private MesaSituacao situacao;
	
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public MesaSituacao getSituacao() {
		return situacao;
	}
	public void setSituacao(MesaSituacao situacao) {
		this.situacao = situacao;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result + numero;
		result = prime * result
				+ ((situacao == null) ? 0 : situacao.hashCode());
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
		Mesa other = (Mesa) obj;
		if (ID != other.ID)
			return false;
		if (numero != other.numero)
			return false;
		if (situacao != other.situacao)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Mesa [ID=" + ID + ", numero=" + numero + ", situacao="
				+ situacao + "]";
	}
	
	
}
