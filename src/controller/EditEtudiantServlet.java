package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import bean.Etudiant;
import dao.UserDAO;

@WebServlet("/EditEtudiantServlet")
public class EditEtudiantServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int id = Integer.parseInt(request.getParameter("id"));

           
            UserDAO etudiantDAO = new UserDAO();
            Etudiant etudiant = etudiantDAO.getEtudiantById(id);

            request.setAttribute("etudiant", etudiant);
            request.getRequestDispatcher("editEtudiant.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Error");
        }
    }
}