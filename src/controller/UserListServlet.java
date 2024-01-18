package controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import bean.Etudiant;
import dao.UserDAO;

@WebServlet("/userList")
public class UserListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        List<Etudiant> userList = userDAO.getAllUsers();

        request.setAttribute("userList", userList);
        request.getRequestDispatcher("userList.jsp").forward(request, response);
    }
}
