<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajouter Note</title>
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
    <h2 class="text-headline">Ajouter Note</h2>
    <h3 class="text-subheadline">Empowering minds, one grade at a time. Adding notes to illuminate the path of knowledge for each student's journey.</h2>
  </div>
  
        <form action="addNote" method="post">


  <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Contenu de la Note </label>
                <br><br>
                <input type="text" class="text-body" name="content" size="30" required />
    </span>
    
      <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Auteur de la Note </label>
                <br><br>
                <input type="text" class="text-body" name="author" size="30" required />
    </span>
    
            
              
         
            <input class="text-small-uppercase" type="submit" value="Ajouter" />
            <a href="welcome.jsp" class="text-small-uppercase custom-button" >Retour au menu</a>
            <center>
            </center>
       </form>
       
</main>
                        <a href="/TPTEST/NoteListServlet" class="text-small-uppercase custom-button" >les notes existantes </a>

</body>
</html>
