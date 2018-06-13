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
@Table(name="Gerente")
@PrimaryKeyJoinColumn(name="idGerente", referencedColumnName="idFuncionario")
public class Gerente extends Funcionario{
   
}
