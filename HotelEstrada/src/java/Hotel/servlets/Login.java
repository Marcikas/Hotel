/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Apartamento;
import Hotel.beans.Estacionamento;
import Hotel.beans.Funcionario;
import Hotel.beans.Hospede;
import Hotel.dao.FuncionarioDAO;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kellynha
 */
public class Login implements Tarefa{
    
    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        Funcionario f = null;        
        
        try {
            f = new FuncionarioDAO().autentica(email, senha);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        if(f == null){
            return "WEB-INF/paginas/erro.jsp";
        }
        
        List<Apartamento> apt = null;
        List<Hospede> hospede = null;
        List<Estacionamento> est = null;
        
        try {
            apt = new GenericDAO<Apartamento>(Apartamento.class).getTodos();
            hospede = new GenericDAO<Hospede>(Hospede.class).getTodos();
            est = new GenericDAO<Estacionamento>(Estacionamento.class).getTodos();
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        // atribuindo valores de sessão
        HttpSession session = req.getSession();
        session.setAttribute("funcionarioLogado", f);
        session.setAttribute("apartamento", apt);
        session.setAttribute("hospede", hospede);
        session.setAttribute("estacionamento", est);
        return "WEB-INF/paginas/dashboard.jsp";
    }    
    
    // Faz o logout e destroi a sessão ativa
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false); 
        request.getSession().invalidate();
        return "index.html";
    }
}
