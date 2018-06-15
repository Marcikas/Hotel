/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.beans;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


/**
 *
 * @author Marciano
 */

@Entity
@Table(name="Hospede")
@PrimaryKeyJoinColumn(name="idHospede", referencedColumnName="idPessoa")
public class Hospede extends Pessoa{
    private String observacao;    
    
    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
    
}
