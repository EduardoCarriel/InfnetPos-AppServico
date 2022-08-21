package br.edu.infnet.appprofissional.model.domain;

import java.util.Objects;

import br.edu.infnet.appprofissional.interfaces.IPrinter;

public abstract class Servico implements IPrinter {
	public enum EnumTipoCobranca {
		QUANTIDADE("Quantidade"),
		HORA("Hora"),
		DIA("Dia"),
		MES("Mês"),
		ANO("Ano");
		
		private String value;
		
		EnumTipoCobranca(final String value) {
			this.value = value;
		}
		
		public String getValue() {
	        return value;
	    }
		
		@Override
	    public String toString() {
	        return this.getValue();
	    }
	}
	
	private int id;
	private int codigo;
	private String descricao;
	protected EnumTipoCobranca tipoCobranca;
	private float valor;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public EnumTipoCobranca getTipoCobranca() {
		return tipoCobranca;
	}

	public void setTipoCobranca(EnumTipoCobranca tipoCobranca) {
		this.tipoCobranca = tipoCobranca;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}
	
	abstract float calcularServico(Integer quantidadeContratada);
	
	@Override
	public String toString() {
		return id + ";" + codigo + ";" + descricao + ";" + tipoCobranca + ";" + valor;
	}

	@Override
	public int hashCode() {
		return Objects.hash(codigo);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		Servico other = (Servico) obj;
		return codigo == other.codigo;
	}
}
