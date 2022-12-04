<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <asset:stylesheet src="application.css.css"/>
    <title>

        <g:layoutTitle default="Grails"/>
    </title>
    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }
    #log{
       margin-left: 900px;
    }

    .navbar {
        overflow: hidden;
        background-color: #333;
    }

    .navbar a {
        float: left;
        font-size: 16px;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    .dropdown {
        float: left;
        overflow: hidden;

    }
    #usercheck{
        margin-left: 820px;
      
    }
    img{
        margin-top: -30px;
        font-size: 10px;
    }
    .dropdown .dropbtn {
        font-size: 16px;
        border: none;
        outline: none;
        color: white;
        padding: 14px 16px;
        background-color: inherit;
        font-family: inherit;
        margin: 0;
    }

    .navbar a:hover, .dropdown:hover .dropbtn {
        background: linear-gradient(to right, #9C27B0, #E040FB);
    }


    h1:hover{
        background: linear-gradient(to right, #9C27B0, #E040FB);
    }
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        float: none;
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }

    .dropdown-content a:hover {
        background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn"  onclick="window.location.href='http://localhost:63342/mbds_grails_22_23/mbds_grails_22_23.main/home/index.html?_ijt=lae3op8v276k1njf01mk6rs5h3'">Home
                <i class="fa fa-caret-down"></i>
            </button>


        </div>
        <div class="dropdown">
            <button class="dropbtn"  onclick="window.location.href='http://localhost:8081/Annonce/index'">Annonce
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="http://localhost:8081/Annonce/create">Création nouvelle Annonce</a>
                <a href="http://localhost:8081/Annonce/index">Lister les Annonces</a>

            </div>

        </div>


        <div class="dropdown">
            <button class="dropbtn" onclick="window.location.href='http://localhost:8081/Illustration/index'">Illustration
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="http://localhost:8081/illustration/create">Création nouvelle Illustration</a>
                <a href="http://localhost:8081/illustration/index">Lister les Illustrations</a>

            </div>

        </div>








        <div class="dropdown" >
            <button class="dropbtn">User
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="http://localhost:8081/user/create">Création de nouveaux user</a>
                <a href="http://localhost:8081/user/index">Lister les utilisateur</a>

            </div>

        </div>

        <div class="dropdown" id="usercheck" >

            <button class="dropbtn"><img src="https://img.icons8.com/ios-filled/50/FFFFFF/user.png" height="25px">  <sec:loggedInUserInfo field="username" class="log" />

            </button>
            <div class="dropdown-content">
                <sec:ifLoggedIn>
                    <a id="" href="http://localhost:8081/logout"  > Log out !</a>


                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn  >
                    <a id="" href="http://localhost:8081/login/auth"> Log in ! </a>
                </sec:ifNotLoggedIn>
            </div>

        </div>






    </div>



<body>

</body>
</html>
<g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message  default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
