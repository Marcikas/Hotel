/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kellynha
 */
public class Autenticar implements Tarefa{
    
    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        
        
        return "WEB-INF/paginas/dashboard.jsp";
    }
    
}
