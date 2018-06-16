/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Funcionario;
import Hotel.dao.FuncionarioDAO;
import java.sql.SQLException;
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
        
        HttpSession session = req.getSession();
        session.setAttribute("funcionarioLogado", f);
        return "WEB-INF/paginas/dashboard.jsp";
    }
    
}
