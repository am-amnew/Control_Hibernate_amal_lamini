package controller;



import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import bean.Module;
import dao.ModuleDAO;

@WebServlet("/EditModuleServlet")
public class EditModuleServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
     try {
         int moduleId = Integer.parseInt(request.getParameter("moduleId"));
         
        
         ModuleDAO moduleDAO = new ModuleDAO();
         Module module = moduleDAO.getModuleById(moduleId);
         
         request.setAttribute("module", module);
         request.getRequestDispatcher("editModule.jsp").forward(request, response);
     } catch (Exception e) {
         e.printStackTrace();
         response.sendRedirect("Error");
     }
 }
}

