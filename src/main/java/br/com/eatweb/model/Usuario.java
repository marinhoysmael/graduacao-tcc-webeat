package br.com.eatweb.model;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 
 * @author ysmael
 *
 */
@Entity
public class Usuario {

	@Id
	@GeneratedValue
	private long ID;
	private String nome;
	private String celular;
	private String email;
	private String GCMID;
	
	@Enumerated
	private UsuarioSituacao situacao;

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

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGCMID() {
		return GCMID;
	}

	public void setGCMID(String gCMID) {
		GCMID = gCMID;
	}

	public UsuarioSituacao getSituacao() {
		return situacao;
	}

	public void setSituacao(UsuarioSituacao situacao) {
		this.situacao = situacao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((GCMID == null) ? 0 : GCMID.hashCode());
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result + ((celular == null) ? 0 : celular.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
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
		Usuario other = (Usuario) obj;
		if (GCMID == null) {
			if (other.GCMID != null)
				return false;
		} else if (!GCMID.equals(other.GCMID))
			return false;
		if (ID != other.ID)
			return false;
		if (celular == null) {
			if (other.celular != null)
				return false;
		} else if (!celular.equals(other.celular))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (situacao != other.situacao)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Usuario [ID=" + ID + ", nome=" + nome + ", celular=" + celular
				+ ", email=" + email + ", GCMID=" + GCMID + ", situacao="
				+ situacao + "]";
	}
	
	
	
	
}
