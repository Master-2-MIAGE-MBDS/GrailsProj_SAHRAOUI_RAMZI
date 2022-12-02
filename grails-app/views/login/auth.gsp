<html>
<head>
    <meta  content="main" />
    <title><g:message code='springSecurity.login.title'/></title>
    <asset:stylesheet src="usercss.css"/>

</head>

<body class="bd">
    <div class="main">
        <div >


        <form action="/login/authenticate" method="POST" id="loginForm" class="form1" autocomplete="off">

            <p>

                <input type="text" placeholder="Username" class="un" name="username" id="username">
            </p>

            <p>

                <input type="password" class="pass"  placeholder="Mot de passe" name="password" id="password">
            </p>

            <p class="forgot" align="center"><a href="#">Forgot Password?</p>



            <p>
                <input type="submit" class="submit" id="submit" value="Connexion">
            </p>
        </form>    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
