<%@ page import="java.util.List" %>
<%@ page import="bean.Note" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Liste des notes</title>
    <style>
    .logo-container {
    position: fixed;
    top: 10px; /* Adjust the top position as needed */
    left: 10px; /* Adjust the left position as needed */
    z-index: 1000; /* Ensure the logo appears above other content */
}

.logo {
    width: 100px; /* Adjust the width as needed */
    height: auto;
}
   .text-small-uppercase.custom-button {
        display: block;
        width: 150px; /* Set the width according to your design */
        margin: 0 auto; /* Center the link horizontally */
                height: 30px; /* Set the width according to your design */
        
        text-align: center; /* Center the text within the link */
        padding: 10px; /* Add padding for better aesthetics */
        text-decoration: none;
        background-color: #4CAF50; /* Add your desired background color */
        color: white; /* Set text color */
        border-radius: 5px; /* Add rounded corners if desired */
    }
.custom-button {
    background: #f37b56;
        bottom: 2.75rem;
        right: 2.55rem;
        height: 2.75rem;
        padding: 0 3rem;
        position: absolute;
}

.custom-button:hover,
.custom-button:focus {
    background: #f79577;
    outline: none;
}

.style3 {
	display: inline-block;
    text-decoration: none;
    font-family: Tahoma, Geneva, sans-serif;
    background-color: #be4848;
    padding: 15px 25px 15px 25px;
	color: #ffffff;
    font-weight: bold;
    font-size: 12px;
}
.style3:hover {
	background-color: #4871be;
    transition: all 0.5s linear;
}
    </style>
</head>
<body >
<div class="logo-container">
    <img src="logo.png" alt="Logo" class="logo">
</div>
<div class="container" >
    <h1>Liste des notes</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Contenu de la note</th>
                <th>Auteur de la note</th>
                <th>Edit note</th>
                                <th>Delete note</th>
                
            </tr>
        </thead>
        <tbody>
            <%
            List<Note> noteList = (List<Note>) request.getAttribute("noteList");
            for (Note note : noteList) {
            %>
                <tr>
                    <td><%= note.getNoteId() %></td>
                    <td><%= note.getContent() %></td>
                    <td><%= note.getAuthor() %></td>
     <td><a class="style3" style="background-color:blue;" href="EditNoteServlet?noteId=<%= note.getNoteId() %>">Edit</a></td>
                         <td><a class="style3" href="DeleteNoteServlet?noteId=<%= note.getNoteId() %>">Delete</a>
 
                    </tr>
</td>
                    
            <% } %>
        </tbody>
    </table>
                <a href="welcome.jsp" class="text-small-uppercase custom-button" ><h1 style="font-size:15px">Retour au menu</h1></a>
    
</div>
</body>
</html>
