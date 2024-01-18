<%@ page import="java.util.List" %>
<%@ page import="bean.Etudiant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">
    <title>Liste des étudiants</title>
            <style>
    .logo-container {
    position: fixed;
    top: 10px; /* Adjust the top position as needed */
    left: 10px; /* Adjust the left position as needed */
    z-index: 1000; /* Ensure the logo appears above other content */
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

.logo {
    width: 100px; /* Adjust the width as needed */
    height: auto;
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
<body>

<div class="logo-container">
    <img src="logo.png" alt="Logo" class="logo">
</div>
<div class="container">
    <h1>Liste des étudiants</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Email</th>
                                <th>tel</th>
                                <th>ecole</th>
                
                                <th>Edit</th>
                                                <th>delete</th>

            </tr>
        </thead>
        <tbody>
            <%
            List<Etudiant> userList = (List<Etudiant>) request.getAttribute("userList");
                                    for (Etudiant user : userList) {
            %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getNom() %></td>
                    <td><%= user.getEmail() %></td>
                                        <td><%= user.getTel() %></td>
                    
                                       <td><%= user.getEcole() %></td>
                   
                    <td><a class="style3" style="background-color:blue;" href="EditEtudiantServlet?id=<%= user.getId() %>">Edit</a></td>
                    <td><a class="style3" href="DeleteEtudiantServlet?id=<%= user.getId() %>">Delete</a></td>

                </tr>
            <% } %>
        </tbody>
    </table>
                    <a href="welcome.jsp" class="text-small-uppercase custom-button" ><h1 style="font-size:15px">Retour au menu</h1></a>
    
    </div>
</body>
</html>
