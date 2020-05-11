package br.com.eatweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 * 
 * @author ysmael
 *
 */
@Entity
public class EstabelecimentoComentario {

	@Id
	@GeneratedValue
	private long ID;
	private String comentario;
	private int classificacao;
	
	@ManyToOne
	private Estabelecimento estabelecimento;
	@OneToOne
	private Usuario usuario;
	
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public int getClassificacao() {
		return classificacao;
	}
	public void setClassificacao(int classificacao) {
		this.classificacao = classificacao;
	}
	public Estabelecimento getEstabelecimento() {
		return estabelecimento;
	}
	public void setEstabelecimento(Estabelecimento estabelecimento) {
		this.estabelecimento = estabelecimento;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result + classificacao;
		result = prime * result
				+ ((comentario == null) ? 0 : comentario.hashCode());
		result = prime * result
				+ ((estabelecimento == null) ? 0 : estabelecimento.hashCode());
		result = prime * result + ((usuario == null) ? 0 : usuario.hashCode());
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
		EstabelecimentoComentario other = (EstabelecimentoComentario) obj;
		if (ID != other.ID)
			return false;
		if (classificacao != other.classificacao)
			return false;
		if (comentario == null) {
			if (other.comentario != null)
				return false;
		} else if (!comentario.equals(other.comentario))
			return false;
		if (estabelecimento == null) {
			if (other.estabelecimento != null)
				return false;
		} else if (!estabelecimento.equals(other.estabelecimento))
			return false;
		if (usuario == null) {
			if (other.usuario != null)
				return false;
		} else if (!usuario.equals(other.usuario))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "EstabelecimentoComentario [ID=" + ID + ", comentario="
				+ comentario + ", classificacao=" + classificacao
				+ ", estabelecimento=" + estabelecimento + ", usuario="
				+ usuario + "]";
	}
	
	
}
