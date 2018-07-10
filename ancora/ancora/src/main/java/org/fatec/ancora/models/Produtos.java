package org.fatec.ancora.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name = "estoque")
	public class Produtos {
	    @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    public int id;
	    @Column(name = "produto")
	    public String produto;
	    @Column(name = "quantidade")
	    public String qtde;
	    @Column(name = "lote")
	    public String lote;
	    @Column(name = "validade")
	    public String vlde;
	    

	    public Produtos() {
	    }

	    public Produtos(String prod, String quantidade, String lote, String validade) {
	        this.produto = prod;
	        this.qtde = quantidade;
	        this.lote = lote;
	        this.vlde = validade;
	    }

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getProduto() {
			return produto;
		}

		public void setProduto(String produto) {
			this.produto = produto;
		}

		public String getQtde() {
			return qtde;
		}

		public void setQtde(String qtde) {
			this.qtde = qtde;
		}

		public String getLote() {
			return lote;
		}

		public void setLote(String lote) {
			this.lote = lote;
		}

		public String getVlde() {
			return vlde;
		}

		public void setVlde(String vlde) {
			this.vlde = vlde;
		}

	    
}
