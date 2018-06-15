/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Gerente;
import Hotel.beans.Hospede;
import Hotel.beans.Recepcionista;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marciano
 */
public class NovaPessoa implements Tarefa {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        String tipo = req.getParameter("tipo");       
        
        switch(tipo){
            case "hospede":
                Hospede h = new Hospede();
                h.setNome(req.getParameter("nome"));
                h.setCpf(req.getParameter("cpf"));
                h.setObservacao(req.getParameter("preferencia"));
                try {
                    new GenericDAO(Hospede.class).adiciona(h);
                }  catch (SQLException ex) {
                    Logger.getLogger(NovaPessoa.class.getName()).log(Level.SEVERE, null, ex);
                }
                req.setAttribute("pessoa", h);
                return "/WEB-INF/paginas/adicionado.jsp";                
            case "gerente":
                Gerente g = new Gerente();
                g.setNome(req.getParameter("nome"));
                g.setCpf(req.getParameter("cpf"));
                g.setNivelAcesso(1);
                g.setSalario(5000);
                try {
                    new GenericDAO(Gerente.class).adiciona(g);
                }  catch (SQLException ex) {
                    Logger.getLogger(NovaPessoa.class.getName()).log(Level.SEVERE, null, ex);
                }
                req.setAttribute("pessoa", g);
                return "/WEB-INF/paginas/adicionado.jsp";
            case "recepcionista":
                Recepcionista r = new Recepcionista();
                r.setNome(req.getParameter("nome"));
                r.setCpf(req.getParameter("cpf"));
                r.setNivelAcesso(2);
                r.setSalario(1000);
                try {
                    new GenericDAO(Recepcionista.class).adiciona(r);
                }  catch (SQLException ex) {
                    Logger.getLogger(NovaPessoa.class.getName()).log(Level.SEVERE, null, ex);
                }
                req.setAttribute("pessoa", r);
                return "/WEB-INF/paginas/adicionado.jsp";    
        }        
        return "/WEB-INF/paginas/erro.jsp";
    }
}
