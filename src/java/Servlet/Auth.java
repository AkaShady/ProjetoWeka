package Servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import weka.control.UsuarioController;
//import javax.servlet.http.HttpSession;

/**
 *
 * @author mayco
 */

        
@WebServlet(name = "Auth",urlPatterns = {"/Auth"})
public class Auth extends HttpServlet {
int cont = 0;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //HttpSession session = request.getSession();
        UsuarioController usuarioControl = new UsuarioController();
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        boolean status = usuarioControl.checklogin(login, senha);
        boolean ativo = true;
        
        if (cont >= 3) {
            usuarioControl.alterarAtividade(login);
            cont = 0;
        }
        
        if (status == true && usuarioControl.checkativo(login, ativo)) {
            request.getRequestDispatcher("Page2.jsp").forward(request, response);
            System.out.println(""+cont);
        } else {
            cont++;
            request.setAttribute("Resp", "");
            response.sendRedirect("index.jsp");
            System.out.println("ERRRRRROOOO");
            System.out.println(""+cont);
        }
        /*if (usuarioControl.checkativo(login, ativo)) {
            System.out.println("Ta funfando porra");
        } else {
            System.out.println("O porra");
        }*/
        
        /*if(usuario.equals("admin") && senha.equals("123456"))
            request.getRequestDispatcher("Page2.jsp").forward(request, response);
        else{
            request.setAttribute("Resp", "");
            response.sendRedirect("index.jsp");
        }*/
    }

    
}
