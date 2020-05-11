package br.com.eatweb.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cidade {
	@Id
	private long ID;
	private String nome;
	private String CEP;
	private long estadoID;
	
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCEP() {
		return CEP;
	}
	public void setCEP(String cEP) {
		CEP = cEP;
	}
	public long getEstadoID() {
		return estadoID;
	}
	public void setEstadoID(long estadoID) {
		this.estadoID = estadoID;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((CEP == null) ? 0 : CEP.hashCode());
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result + (int) (estadoID ^ (estadoID >>> 32));
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
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
		Cidade other = (Cidade) obj;
		if (CEP == null) {
			if (other.CEP != null)
				return false;
		} else if (!CEP.equals(other.CEP))
			return false;
		if (ID != other.ID)
			return false;
		if (estadoID != other.estadoID)
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Cidade [ID=" + ID + ", nome=" + nome + ", CEP=" + CEP
				+ ", estadoID=" + estadoID + "]";
	}
	
	
}
