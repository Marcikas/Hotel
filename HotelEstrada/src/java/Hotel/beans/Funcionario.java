/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.beans;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author Marciano
 */
@Entity
@Table(name="Funcionario")
@Inheritance(strategy = InheritanceType.JOINED)
@PrimaryKeyJoinColumn(name="idFuncionario", referencedColumnName="idPessoa")
public class Funcionario extends Pessoa{
   private double salario;
   private int nivelAcesso;

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public int getNivelAcesso() {
        return nivelAcesso;
    }

    public void setNivelAcesso(int nivelAcesso) {
        this.nivelAcesso = nivelAcesso;
    }

   
}
