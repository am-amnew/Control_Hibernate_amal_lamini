package controller;

import java.io.IOException;

import bean.Note;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.NoteDAO; // Assuming you have a DAO class for handling Note entities
@WebServlet("/NoteControllerServlet")
public class NoteControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("edit".equals(action)) {
            
            try {
                int noteId = Integer.parseInt(request.getParameter("noteId"));
                String content = request.getParameter("content");
                String author = request.getParameter("author");

                

                NoteDAO noteDAO = new NoteDAO();
                Note existingNote = noteDAO.getNoteById(noteId);

                if (existingNote != null) {
                    existingNote.setContent(content);
                    existingNote.setAuthor(author);

                    noteDAO.updateNoteDetails(existingNote);

                    HttpSession session = request.getSession(true);
                    session.setAttribute("successMessage", "Note edited successfully");
                    response.sendRedirect("NoteListServlet"); 
                } else {
                    
                    response.sendRedirect("Error");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("Error");
            }
        } else {
            try {
                String content = request.getParameter("content");
                String author = request.getParameter("author");

                
                NoteDAO noteDAO = new NoteDAO();
                noteDAO.addNoteDetails(content, author);

                HttpSession session = request.getSession(true);
                session.setAttribute("successMessage", "Note added successfully");
                response.sendRedirect("NoteListServlet"); // Redirect to a servlet for listing notes
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("Error");
            }
        }
    }
}
