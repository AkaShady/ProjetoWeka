<%-- 
    Document   : index
    Created on : 17/05/2018, 20:32:52
    Author     : mayco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sistema Inteligente</title>

        <script type="text/javascript" src="JavaScript/javascript.js"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="stylesheet" type="text/css"  href="css/estilo.css">
    </head>

    <body>


        <div class="container">
            <div class="card card-container">
                <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
                <img id="profile-img" class="profile-img-card" src="img/logo-1.png" />
                <p id="profile-name" class="profile-name-card"></p>
                <form class="form-signin" action="Auth" method="GET">

                    <input type="text" id="inputEmail" class="form-control" placeholder="Login" required autofocus name="login">
                    <input type="password" id="inputPassword" class="form-control" placeholder="Senha" required name="senha">

                    <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Entrar</button>
                </form><!-- /form -->
                <a href="" class="forgot-password">
                    Esqueceu a senha?
                </a>
            </div><!-- /card-container -->
            
        </div><!-- /container -->
  

    <footer>


        <div class="container text-center">
            <div class="row">
                <p>&copy; Todos os Direitos Reservados.</p>
            </div>

        </div>
    </footer>  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
