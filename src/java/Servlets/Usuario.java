package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.UsuarioBean;
import model.dao.UsuarioDAO;

@WebServlet(name = "Usuario", urlPatterns = {"/Usuario"})
public class Usuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String funcao = request.getParameter("funcao");

            UsuarioDAO user = new UsuarioDAO();

            if (funcao.equals("cadastrar")) {

                String nome = request.getParameter("nome");
                String senha = request.getParameter("senha");
                String RA = request.getParameter("RA");
                String curso = request.getParameter("curso");
                String campus = request.getParameter("campus");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                user.cadastrar(new UsuarioBean(request.getParameter("nome"), request.getParameter("senha"), request.getParameter("RA"), request.getParameter("curso"), request.getParameter("campus"), request.getParameter("email"), request.getParameter("telefone")));
                response.sendRedirect("login.jsp");
            }
            user.buscarTodos();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
