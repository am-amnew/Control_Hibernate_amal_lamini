<!-- editModule.jsp -->
<%@ page import="bean.Module" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Include necessary styles/scripts -->
    <title>Edit Module</title>
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
      src="https://i.pinimg.com/564x/b3/76/3a/b3763a9bd7b5005ce4c744fe0088d1aa.jpg"
                 alt="Citymap illustration" />
    </picture>
  </figure>
  <div class="headline">
    <h2 class="text-headline">Edit Module</h2>
    <h3 class="text-subheadline">Enriching education one module at a time. Adding knowledge to pave the way for a brighter academic journey</h2>
  </div>
  

    <form action="ModuleControllerServlet?action=edit" method="post">
    
            
        <input type="hidden" name="moduleId" value="<%= request.getParameter("moduleId") %>">
       <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Nom du Module</label>
                <br><br>  
 <input type="text" name="moduleName" value="<%= request.getParameter("moduleName") %>"><br>
  </span>
    
     <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Description du Module </label>
                <br><br>
        <input type="text" name="moduleDescription" value="<%= request.getParameter("moduleDescription") %>"><br>
        
          </span>
    
              
        <input type="submit" class="text-small-uppercase" value="Save">
    </form>
</body>
</html>
