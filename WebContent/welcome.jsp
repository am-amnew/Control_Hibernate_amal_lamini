
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Web Page</title>
    <!-- Linking to the CSS file -->
    <link rel="stylesheet" href="c.css">
        <style>
    .logo-container {
    position: fixed;
    top: 8px; /* Adjust the top position as needed */
    left: 10px; /* Adjust the left position as needed */
    z-index: 1000; /* Ensure the logo appears above other content */
}

.logo {
    width: 100px; /* Adjust the width as needed */
    height: auto;
}

.logo-text {
          position: absolute;
            /* Adjust the top and left values as needed */
            top: 50%;
            left: 120px;
            transform: translateY(-60%);
            font-size: 16px;
            color: yellow;
        }
    </style>
</head>
<div class="logo-container">
    <img src="logo.png" alt="Logo" class="logo">
        <span class="logo-text">INSPIRING MINDS, MANAGING GRADES</span>
    
</div>
<section>
    <article>
        <ul class="panels">
         <li class="panel">
                <a href="about.jsp">
                    <span>
                        About us 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510 513">
                <g fill="none" fill-rule="evenodd">
                 
                </g>
              </svg>
            </span>
                </a>
                <img src="logo.png" alt="image of hot air balloons" />
            </li>
            <li class="panel">
                <a href="register.jsp">
                    <span>
                        Etudiant 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 442">
                <g fill="none" fill-rule="evenodd">
                 
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/7b/cc/cc/7bcccc53d869fe0d6ef4002b6eb9e9d1.jpg" alt="image of lions" />
            </li>
            <li class="panel">
                <a href="addModule.jsp">
                    <span>
                        Module 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 452">
                <g fill="none" fill-rule="evenodd">
                  <g fill-rule="nonzero" class="fill">
                    
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/62/d6/4a/62d64af8162ecd7cc10ea1c1bb2bd9c3.jpg" alt="Marthin Luther King" />
            </li>
            <li class="panel">
                <a href="addNote.jsp">
                    <span>
                        Note 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 449 480">
                <g fill="none" fill-rule="evenodd">
                  
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/61/9b/65/619b6586fcc891431d5dfb54f9437e1f.jpg" alt="image of spaceship" />
            </li>
           
        </ul>
        <h1>
         
            <span class="gradient-text letter">G</span>
            <span class="gradient-text letter">R</span>
            <span class="gradient-text letter">A</span>
            <span class="gradient-text letter">D</span>
            <span class="gradient-text letter">E</span>
                        <span class="gradient-text letter"> </span>
            
            <span class="gradient-text letter">M</span>
            <span class="gradient-text letter">A</span>
            <span class="gradient-text letter">S</span>
            <span class="gradient-text letter">T</span>
            <span class="gradient-text letter">E</span>
            <span class="gradient-text letter">R</span>
            



        </h1>

        <span class="geo-square">
        <img src="logo.png" alt="image of butterfly, graphic purpose only" />
        </span>
    </article>
</section>
</html>
