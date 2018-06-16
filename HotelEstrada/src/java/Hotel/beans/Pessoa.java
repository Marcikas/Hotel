/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.beans;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Marciano
 */
@Entity
@Table(name="Pessoa")
@Inheritance(strategy = InheritanceType.JOINED)
public class Pessoa implements Serializable {   
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)    
    private Long idPessoa = 0l;
    
    private String nome;
    private String cpf; 
    private String endereco;
    @Temporal(TemporalType.DATE)
    private Date dataNascimento;
    
    public Long getId() {
        return idPessoa;
    }

    public void setId(Long idPessoa) {
        this.idPessoa = idPessoa;
    }    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }
    
    
}
