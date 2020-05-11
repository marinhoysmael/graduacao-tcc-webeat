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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


/**
 * 
 * @author ysmael
 *
 */
@Entity
public class Estabelecimento {
	
	@Id
	@GeneratedValue
	private long ID;
	private String nome;
	private String email;
	private String telefone;
	private String celular;
	private String CNPJ;	

	@OneToOne(cascade = CascadeType.ALL)
	   @JoinColumn (name = "endereco_ID")
	private Endereco endereco;
	
	@OneToOne(cascade = CascadeType.ALL)
	   @JoinColumn (name = "proprietario_ID")
	private Proprietario proprietario;
	
	@Enumerated
	private EstabelecimentoSituacao situacao;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<Produto> produtos;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<Mesa> mesas;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<ProdutoCategoria> categorias;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<EstabelecimentoComentario> comentarios;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Proprietario getProprietario() {
		return proprietario;
	}

	public void setProprietario(Proprietario proprietario) {
		this.proprietario = proprietario;
	}

	public EstabelecimentoSituacao getSituacao() {
		return situacao;
	}

	public void setSituacao(EstabelecimentoSituacao situacao) {
		this.situacao = situacao;
	}

	public List<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

	public List<Mesa> getMesas() {
		return mesas;
	}

	public void setMesas(List<Mesa> mesas) {
		this.mesas = mesas;
	}

	public List<ProdutoCategoria> getCategorias() {
		return categorias;
	}

	public void setCategorias(List<ProdutoCategoria> categorias) {
		this.categorias = categorias;
	}

	public List<EstabelecimentoComentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(List<EstabelecimentoComentario> comentarios) {
		this.comentarios = comentarios;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((CNPJ == null) ? 0 : CNPJ.hashCode());
		result = prime * result + (int) (ID ^ (ID >>> 32));
		result = prime * result
				+ ((categorias == null) ? 0 : categorias.hashCode());
		result = prime * result + ((celular == null) ? 0 : celular.hashCode());
		result = prime * result
				+ ((comentarios == null) ? 0 : comentarios.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((endereco == null) ? 0 : endereco.hashCode());
		result = prime * result + ((mesas == null) ? 0 : mesas.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result
				+ ((produtos == null) ? 0 : produtos.hashCode());
		result = prime * result
				+ ((proprietario == null) ? 0 : proprietario.hashCode());
		result = prime * result
				+ ((situacao == null) ? 0 : situacao.hashCode());
		result = prime * result
				+ ((telefone == null) ? 0 : telefone.hashCode());
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
		Estabelecimento other = (Estabelecimento) obj;
		if (CNPJ == null) {
			if (other.CNPJ != null)
				return false;
		} else if (!CNPJ.equals(other.CNPJ))
			return false;
		if (ID != other.ID)
			return false;
		if (categorias == null) {
			if (other.categorias != null)
				return false;
		} else if (!categorias.equals(other.categorias))
			return false;
		if (celular == null) {
			if (other.celular != null)
				return false;
		} else if (!celular.equals(other.celular))
			return false;
		if (comentarios == null) {
			if (other.comentarios != null)
				return false;
		} else if (!comentarios.equals(other.comentarios))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (endereco == null) {
			if (other.endereco != null)
				return false;
		} else if (!endereco.equals(other.endereco))
			return false;
		if (mesas == null) {
			if (other.mesas != null)
				return false;
		} else if (!mesas.equals(other.mesas))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (produtos == null) {
			if (other.produtos != null)
				return false;
		} else if (!produtos.equals(other.produtos))
			return false;
		if (proprietario == null) {
			if (other.proprietario != null)
				return false;
		} else if (!proprietario.equals(other.proprietario))
			return false;
		if (situacao != other.situacao)
			return false;
		if (telefone == null) {
			if (other.telefone != null)
				return false;
		} else if (!telefone.equals(other.telefone))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Estabelecimento [ID=" + ID + ", nome=" + nome + ", email="
				+ email + ", telefone=" + telefone + ", celular=" + celular
				+ ", CNPJ=" + CNPJ + ", endereco=" + endereco
				+ ", proprietario=" + proprietario + ", situacao=" + situacao
				+ ", produtos=" + produtos + ", mesas=" + mesas
				+ ", categorias=" + categorias + ", comentarios=" + comentarios
				+ "]";
	}

	
	
	
}
