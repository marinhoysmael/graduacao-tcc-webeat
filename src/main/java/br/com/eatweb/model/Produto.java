package br.com.eatweb.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 * 
 * @author ysmael
 *
 */
@Entity
public class Produto {

	@Id
	@GeneratedValue
	private long ID;
	
	private String nome;
	private String descricao;
	private double valor;
	
	@ManyToOne
	private Estabelecimento estabelecimento;
	
	@Enumerated
	private ProdutoSituacao situacao;
	
	@ManyToMany
    @JoinTable(joinColumns = @JoinColumn(name = "Produto_ID"), inverseJoinColumns = @JoinColumn(name = "categorias_ID"))
	private List<ProdutoCategoria> categorias;

	@OneToMany(cascade=CascadeType.ALL)
	private List<ProdutoComentario> comentarios;

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

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public Estabelecimento getEstabelecimento() {
		return estabelecimento;
	}

	public void setEstabelecimento(Estabelecimento estabelecimento) {
		this.estabelecimento = estabelecimento;
	}

	public ProdutoSituacao getSituacao() {
		return situacao;
	}

	public void setSituacao(ProdutoSituacao situacao) {
		this.situacao = situacao;
	}

	public List<ProdutoCategoria> getCategorias() {
		return categorias;
	}

	public void setCategorias(List<ProdutoCategoria> categorias) {
		this.categorias = categorias;
	}

	public List<ProdutoComentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(List<ProdutoComentario> comentarios) {
		this.comentarios = comentarios;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result
				+ ((categorias == null) ? 0 : categorias.hashCode());
		result = prime * result
				+ ((comentarios == null) ? 0 : comentarios.hashCode());
		result = prime * result
				+ ((descricao == null) ? 0 : descricao.hashCode());
		result = prime * result
				+ ((estabelecimento == null) ? 0 : estabelecimento.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result
				+ ((situacao == null) ? 0 : situacao.hashCode());
		long temp;
		temp = Double.doubleToLongBits(valor);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Produto other = (Produto) obj;
		if (ID != other.ID)
			return false;
		if (categorias == null) {
			if (other.categorias != null)
				return false;
		} else if (!categorias.equals(other.categorias))
			return false;
		if (comentarios == null) {
			if (other.comentarios != null)
				return false;
		} else if (!comentarios.equals(other.comentarios))
			return false;
		if (descricao == null) {
			if (other.descricao != null)
				return false;
		} else if (!descricao.equals(other.descricao))
			return false;
		if (estabelecimento == null) {
			if (other.estabelecimento != null)
				return false;
		} else if (!estabelecimento.equals(other.estabelecimento))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (situacao != other.situacao)
			return false;
		if (Double.doubleToLongBits(valor) != Double
				.doubleToLongBits(other.valor))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Produto [ID=" + ID + ", nome=" + nome + ", descricao="
				+ descricao + ", valor=" + valor + ", estabelecimento="
				+ estabelecimento + ", situacao=" + situacao + ", categorias="
				+ categorias + ", comentarios=" + comentarios + "]";
	}
	
	
}
