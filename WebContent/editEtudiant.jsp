

<%@ page import="bean.Etudiant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Etudiant</title>
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
      src="https://i.pinimg.com/564x/c7/e8/e4/c7e8e482d8fda880f6a0e55da9662f19.jpg"
                 alt="Citymap illustration" />
    </picture>
  </figure>
  <div class="headline">
    <h2 class="text-headline">Edit etudiant</h2>
    <h3 class="text-subheadline">Fostering growth, one student at a time. Adding individuals to the canvas of knowledge, shaping futures with each new student added.</h2>
  </div>
  
        <form action="UserControllerServlet?action=edit" method="post">
        
            <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
             <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Nom</label>
                <br> <br>
                
            <input type="text" name="nom" class="text-body" value="<%= request.getParameter("nom") %>"><br>
                     
               </span>
       <br>
       
    <span>
      <label for="email" class="text-small-uppercase">Email</label>
                      <br>  <br>        
            <input type="text" name="email" class="text-body" value="<%= request.getParameter("email") %>"><br>
            
			           
               </span>
       
       
    <span>
      <label for="email" class="text-small-uppercase">Tel</label>
                      <br>   <br>
            <input type="text" name="tel"  class="text-body"value="<%= request.getParameter("tel") %>"><br>
            
            <span>
      <label for="email" class="text-small-uppercase">Ecole</label>
                      <br> <br>
                      <input type="text" name="ecole" class="text-body" value="<%= request.getParameter("ecole") %>"><br>
                        </span>
    
            <input class="text-small-uppercase" type="submit" value="Save">
        </form>
    </div>
</body>
</html>
