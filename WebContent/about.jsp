
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Web Page</title>
    <!-- Linking to the CSS file -->
    <link rel="stylesheet" href="c3.css">
</head>
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
<style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,700,800');
    .link {
        display: block;
        text-align: center;
        color: #777;
        text-decoration: none;
        padding: 10px;
    }
    
    .movie_card {
        position: relative;
        display: block;
        width: 1500px;
        height: 670px;
        margin: 80px auto;
        overflow: hidden;
        border-radius: 10px;
        transition: all 0.6s;
        box-shadow: 0px 0px 120px -25px rgba(250, 238, 71, 0.5);
    }
    
    .movie_card:hover {
        transform: scale(1.02);
        box-shadow: 0px 0px 80px -25px rgba(0, 0, 0, 0.5);
        transition: all 0.4s;
    }
    
    .movie_card .info_section {
        position: relative;
        width: 100%;
        height: 100%;
        background-blend-mode: multiply;
        z-index: 2;
        border-radius: 10px;
    }
    
    .movie_card .info_section .movie_header {
        position: relative;
        padding: 25px;
        height: 40%;
    }
    
    .movie_card .info_section .movie_header h1 {
        color: black;
        font-weight: 400;
    }
    
    .movie_card .info_section .movie_header h4 {
        color: #555;
        font-weight: 400;
    }
    
    .movie_card .info_section .movie_header .minutes {
        display: inline-block;
        margin-top: 15px;
        color: #555;
        padding: 5px;
        border-radius: 5px;
        border: 1px solid rgba(0, 0, 0, 0.05);
    }
    
    .movie_card .info_section .movie_header .type {
        display: inline-block;
        color: #959595;
        margin-left: 10px;
    }
    
    .movie_card .info_section .movie_header .locandina {
        position: relative;
        float: left;
        margin-right: 20px;
        height: 120px;
        box-shadow: 0 0 20px -10px rgba(0, 0, 0, 0.5);
    }
    
    .movie_card .info_section .movie_desc {
        padding: 25px;
        height: 50%;
    }
    
    .movie_card .info_section .movie_desc .text {
        color: #545454;
    }
    
    .movie_card .info_section .movie_social {
        height: 10%;
        padding-left: 15px;
        padding-bottom: 20px;
    }
    
    .movie_card .info_section .movie_social ul {
        list-style: none;
        padding: 0;
    }
    
    .movie_card .info_section .movie_social ul li {
        display: inline-block;
        color: rgba(0, 0, 0, 0.3);
        transition: color 0.3s;
        transition-delay: 0.15s;
        margin: 0 10px;
    }
    
    .movie_card .info_section .movie_social ul li:hover {
        transition: color 0.3s;
        color: rgba(0, 0, 0, 0.7);
    }
    
    .movie_card .info_section .movie_social ul li i {
        font-size: 19px;
        cursor: pointer;
    }
    
    .movie_card .blur_back {
        position: absolute;
        top: 0;
        z-index: 1;
        height: 100%;
        right: 0;
        background-size: cover;
        border-radius: 11px;
    }
    
    @media screen and (min-width: 768px) {
        .movie_header {
            width: 65%;
        }
        .movie_desc {
            width: 50%;
        }
        .info_section {
            background: linear-gradient(to right, #e5e6e6 50%, transparent 100%);
        }
        .blur_back {
            width: 80%;
            background-position: -100% 10% !important;
        }
    }
    
    @media screen and (max-width: 768px) {
        .movie_card {
            width: 95%;
            margin: 70px auto;
            min-height: 350px;
            height: auto;
        }
        .blur_back {
            width: 100%;
            background-position: 50% 50% !important;
        }
        .movie_header {
            width: 100%;
            margin-top: 85px;
        }
        .movie_desc {
            width: 100%;
        }
        .info_section {
            background: linear-gradient(to top, #e5e6e6 50%, transparent 100%);
            display: inline-grid;
        }
    }
    
    .bright_back {
        background: url("https://i.pinimg.com/736x/31/ce/60/31ce6046a18d02145f3e4c3fff8bd347.jpg");
    }
    
    .tomb_back {
        background: url("https://fsmedia.imgix.net/cd/c9/5e/ba/4817/4d9a/93f0/c776ec32ecbc/lara-crofts-neck-looks-unnatural-in-the-new-poster-for-tomb-raider.png");
    }
    
    .ave_back {
        background: url("https://www.gannett-cdn.com/-mm-/c03fd140debe8ad4c05cf81a5cad7ad61a12ce52/c=0-1580-2985-3266&r=x803&c=1600x800/local/-/media/2017/06/09/USATODAY/USATODAY/636326272873599176-Black-Panther-Teaser.jpg");
    }
</style>
<div class="logo-container">
    <img src="logo.png" alt="Logo" class="logo">
</div>
<div class="movie_card" id="bright">
    <div class="info_section">
        <div class="movie_header">
            <img class="locandina" src="https://media3.giphy.com/media/l3V0oD1N5jMCPlHgI/giphy.gif?cid=6c09b952v3gmilptl3ymg2ahovy5akxbg87vho4932hq6o5k&ep=v1_internal_gif_by_id&rid=giphy.gif&ct=g" />
            <h1 style="font-size: 70px;color: rgb(112, 112, 58);">GradeMaster</h1>
            <center>
                <h1 style="font-size: 40px"> Inspiring Minds, Managing Grades</h1>
            </center>

        </div>
        <br> <br>
        <br>
        <br>

        <div class="movie_desc">
            <p class="text">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <h2>Bienvenue sur GradeMaster ! Nous sommes ravis de vous accueillir dans notre communauté éducative. Professeurs, découvrez les fonctionnalités avancées pour suivre les inscriptions, gérer les notes et explorer les modules. Étudiants,
                    trouvez ici toutes les informations importantes pour votre parcours académique. Ensemble, construisons l'avenir de l'éducation. Bonne exploration !
            </p>
            <br>
                        <br>
            
            
                                <a href="welcome.jsp" class="text-small-uppercase custom-button" style="color:red;">Retour au menu</a>
            
        </div>
        
        <div class="movie_social">

        </div>
        
    </div>
    <div class="blur_back bright_back"></div>
</div>

</div>

</html>