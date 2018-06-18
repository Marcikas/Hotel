/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Marciano
 */
@Entity
public class Hospedagem implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idHospedagem;
    
    private double valorTotal;
    
    @OneToOne
    @JoinColumn(name="idReserva", nullable = false)
    private Reserva reserva;
    
    @OneToMany
    private List<Produto> consumo;
    
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date dataEntrada;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date dataSaida;
    

    public Long getIdHospedagem() {
        return idHospedagem;
    }

    public void setIdHospedagem(Long idHospedagem) {
        this.idHospedagem = idHospedagem;
    }

    public Reserva getReserva() {
        return reserva;
    }

    public void setReserva(Reserva reserva) {
        this.reserva = reserva;
    }

    public List<Produto> getConsumo() {
        return consumo;
    }

    public void setConsumo(List<Produto> consumo) {
        this.consumo = consumo;
    }

    public Date getDataEntrada() {
        return dataEntrada;
    }

    public void setDataEntrada(Date dataEntrada) {
        this.dataEntrada = dataEntrada;
    }

    public Date getDataSaida() {
        return dataSaida;
    }

    public void setDataSaida(Date dataSaida) {
        this.dataSaida = dataSaida;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }
    
    
}
