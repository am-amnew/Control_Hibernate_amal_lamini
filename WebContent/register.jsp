<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajouter étudiant</title>
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
     
      <img       src="https://i.pinimg.com/564x/ce/3b/5a/ce3b5ac194ea7fd2c62d6a1bce7df298.jpg"
                 alt="Citymap illustration" />
    </picture>
  </figure>
  <div class="headline">
    <h2 class="text-headline">Ajouter étudiant</h2>
    <h3 class="text-subheadline">Fostering growth, one student at a time. Adding individuals to the canvas of knowledge, shaping futures with each new student added.</h2>
  </div>
  
	<form action="register" method="post">
		 <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Nom</label>
                <br> <br>
                
                      <input class="text-body" id="username" name="nom" type="text" required>

				
			  </span>
    <span>
      <label for="email" class="text-small-uppercase">Password</label>
                      <br><br>
      <input type="password" class="text-body" name="password1" size="30" />
      
       </span>
       
       
    <span>
      <label for="email" class="text-small-uppercase">Confirm Password</label>
                      <br><br>
                      <input type="password" class="text-body" name="password2" size="30" />
                      
                      
               </span>
       <br>
       
    <span>
      <label for="email" class="text-small-uppercase">Email</label>
                      <br>  <br>        
			<input class="text-body" type="text" name="email" size="30" />
			
			
			           
               </span>
       
       
    <span>
      <label for="email" class="text-small-uppercase">Tel</label>
                      <br>   <br>
                  <input class="text-body" type="text" name="tel" size="30" />    
                      
              </span>
       
       
    <span>
      <label for="email" class="text-small-uppercase">Ecole</label>
                      <br> <br>
                 <input type="text" class="text-body" name="ecole" size="30" />     
            
			
		
		<input class="text-small-uppercase" type="submit" value="Ajouter" />
		            <a href="welcome.jsp" class="text-small-uppercase custom-button">Retour au menu</a>

	</form>
</main>
                        <a href="/TPTEST/UserListServlet" class="text-small-uppercase custom-button" >les etudiants existants </a>

</body>

</html>