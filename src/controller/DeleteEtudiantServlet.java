package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.UserDAO;

@WebServlet("/DeleteEtudiantServlet")
public class DeleteEtudiantServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            
            
            UserDAO etudiantDAO = new UserDAO();
            etudiantDAO.deleteEtudiantById(id);
            
            HttpSession session = request.getSession(true);
            session.setAttribute("successMessage", "Etudiant deleted successfully");
            
            response.sendRedirect("UserListServlet"); 
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Error");
        }
    }
}
