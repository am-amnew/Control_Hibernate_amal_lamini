package controller;

import java.io.IOException;

import bean.Etudiant;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.UserDAO;

@WebServlet("/UserControllerServlet")
public class UserControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("edit".equals(action)) {
            
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                String nom = request.getParameter("nom");
                String password1 = request.getParameter("password1");
                String password2 = request.getParameter("password2");
                String email = request.getParameter("email");
                String tel = request.getParameter("tel");
                String ecole = request.getParameter("ecole");

              

                UserDAO userDAO = new UserDAO();
                Etudiant existingUser = userDAO.getEtudiantById(id);

                if (existingUser != null) {
                    existingUser.setNom(nom);
                    existingUser.setPassword1(password1);
                    existingUser.setEmail(email);
                    existingUser.setTel(tel);
                    existingUser.setEcole(ecole);

                    userDAO.updateEtudiantDetails(existingUser);

                    HttpSession session = request.getSession(true);
                    session.setAttribute("successMessage", "User edited successfully");
                    response.sendRedirect("UserListServlet"); 
                } else {
                    
                    response.sendRedirect("Error");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("Error");
            }
        } else {
            
            try {
                String nom = request.getParameter("nom");
                String password1 = request.getParameter("password1");
                String password2 = request.getParameter("password2");
                String email = request.getParameter("email");
                String tel = request.getParameter("tel");
                String ecole = request.getParameter("ecole");

              

                
                if (!password1.equals(password2)) {
                    response.sendRedirect("Error");
                    return;
                }

                UserDAO userDAO = new UserDAO();
                userDAO.addUserDetails(nom, password1, email, tel, ecole);

                HttpSession session = request.getSession(true);
                session.setAttribute("successMessage", "User added successfully");
                response.sendRedirect("UserListServlet"); 
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("Error");
            }
        }
    }
}
