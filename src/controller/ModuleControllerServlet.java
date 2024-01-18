// ModuleControllerServlet.java
package controller;

import java.io.IOException;
import bean.Module;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import dao.ModuleDAO;

@WebServlet("/ModuleControllerServlet")
public class ModuleControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("edit".equals(action)) {
            
            try {
                int moduleId = Integer.parseInt(request.getParameter("moduleId"));
                String moduleName = request.getParameter("moduleName");
                String moduleDescription = request.getParameter("moduleDescription");

               

                ModuleDAO moduleDAO = new ModuleDAO();
                Module existingModule = moduleDAO.getModuleById(moduleId);

                if (existingModule != null) {
                    existingModule.setModuleName(moduleName);
                    existingModule.setModuleDescription(moduleDescription);

                    moduleDAO.updateModuleDetails(existingModule);

                    HttpSession session = request.getSession(true);
                    session.setAttribute("successMessage", "Module edited successfully");
                    response.sendRedirect("ModuleListServlet"); // Redirect to a servlet for listing modules
                } else {
                    
                    response.sendRedirect("Error");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("Error");
            }
        } else {
            
            try {
                String moduleName = request.getParameter("moduleName");
                String moduleDescription = request.getParameter("moduleDescription");

               

                ModuleDAO moduleDAO = new ModuleDAO();
                moduleDAO.addModuleDetails(moduleName, moduleDescription);

                HttpSession session = request.getSession(true);
                session.setAttribute("successMessage", "Module added successfully");
                response.sendRedirect("ModuleListServlet"); // Redirect to a servlet for listing modules
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("Error");
            }
        }
    }
}
