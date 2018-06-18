/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.beans;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Marciano
 */
@Entity
public class Produto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id   
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idProduto;
    private String nomeProduto;
    private double valorProduto;
    
    public Long getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(Long id) {
        this.idProduto = id;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public double getValorProduto() {
        return valorProduto;
    }

    public void setValorProduto(double valorProduto) {
        this.valorProduto = valorProduto;
    }

    
}
