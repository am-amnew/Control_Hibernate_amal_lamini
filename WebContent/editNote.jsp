<%@ page import="bean.Note" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Note</title>
<link rel="stylesheet" type="text/css" href="C2.css">
<style>
        /* Add your existing CSS styles here */

        /* Style to separate label and input */
        .input-container {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px; /* Adjust as needed */
        }

        .text-small-uppercase {
            margin-bottom: 5px; /* Adjust as needed */
        }
        
    </style>
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
    </style>
</head>
<body>

<div class="logo-container">
    <img src="logo.png" alt="Logo" class="logo">
</div>
<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>

<main>
  <figure>
    <picture>
     
      <img       
      src="https://i.pinimg.com/564x/90/db/6d/90db6d91f96baaed42ea7d5064ce2cc8.jpg"
                 alt="Citymap illustration" />
    </picture>
  </figure>
  <div class="headline">
    <h2 class="text-headline">Edit Note</h2>
    <h3 class="text-subheadline">Empowering minds, one grade at a time. Adding notes to illuminate the path of knowledge for each student's journey.</h2>
  </div>
  
<form action="NoteControllerServlet?action=edit" method="post">

        <input type="hidden" name="noteId" value="<%= request.getParameter("noteId") %>">
        
  <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Contenu de la Note </label>
                <br><br>
         <input type="text" name="content" class="text-body"  value="<%= request.getParameter("content") %>"><br>
        
         </span>
    
      <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Auteur de la Note </label>
                <br><br>
                
        <input type="text" name="author" class="text-body"  value="<%= request.getParameter("author") %>"><br>
        </span>
    
            
         
        <input class="text-small-uppercase" type="submit" value="Save">
        
       </form>
       
</main>
</body>
</html>
