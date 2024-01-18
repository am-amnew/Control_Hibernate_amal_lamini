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
    </style>
</head>
<body>
<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>

<main>
  <figure>
    <picture>
     
      <img       
      src="https://i.pinimg.com/564x/ce/3b/5a/ce3b5ac194ea7fd2c62d6a1bce7df298.jpg"
                 alt="Citymap illustration" />
    </picture>
  </figure>
  <div class="headline">
    <h2 class="text-headline">Ajouter étudiant</h2>
    <h3 class="text-subheadline">The Restaurant Newsletter</h2>
  </div>
  <form>
    <span>
                <label for="username" class="text-small-uppercase" id="usernameLabel">Username</label>
                <br><br>
      <input class="text-body" id="username" name="username" type="text" required>
    </span>
    <span>
      <label for="email" class="text-small-uppercase">Email</label>
                      <br><br>
      
      <input class="text-body" id="email" name="email" type="email" required>
    </span>
    
    <span>
      <label for="city" class="text-small-uppercase">City</label>
                      <br><br>
      
      <input class="text-body" id="city" name="city" type="text" required>
    </span>
    <input class="text-small-uppercase" id="submit" type="submit" value="Subscribe now">
  </form>
</main>
</body>
