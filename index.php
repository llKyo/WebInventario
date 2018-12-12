<?php
    require_once "api/db.php";
    session_start();
    if(count($_POST) > 0){
      $username = $_POST["username"];
      $password = sha1($_POST["password"]);
      $usuario = iniciarSesion($username,$password);
      if($usuario != null){
        $_SESSION["username"] = $username;
        header("Location:main.php");
        exit();
      } else {
        $error = "Error de Inicio de Sesión";
      }

    }
 ?>

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/stylelogin.css">
    <link rel="icon" href="img/boshy.png">
    <title>Login</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
          <div class="card card-signin flex-row my-3" style="height: 600px;">
            <img src="img/login.jpg" class="d-none d-md-flex img-fluid" alt="">
            <!--<div class="card-img-left d-none d-md-flex">
               Background image for card set in CSS!
            </div>-->
            <div class="card-body my-auto">
              <h5 class="card-title text-center pb-3">Login</h5>
              <?php
                   if(isset($error)){
                     ?>
                     <div class="alert alert-danger">
                       <span>Error de Acceso</span>
                     </div>
                     <?php
                   }
               ?>
              <form class="form-signin" action="" method="post">
                <div class="form-label-group">
                  <input type="text" class="form-control" id="inputUserame"
                    name="username" placeholder="Username" required autofocus>
                  <label for="inputUserame">Usuario</label>
                </div>
                <div class="form-label-group">
                  <input type="password" class="form-control" id="inputPassword"
                    name="password" placeholder="Password" required>
                  <label for="inputPassword">Contraseña</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block text-uppercase mt-5"
                  type="submit" name="ingresarBtn">Iniciar Sessión</button>
                <!-- TODO construir registro
                <a class="d-block text-center mt-2 small" href="#">Registrarte</a> -->
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <?php require_once "templates/scripts.php"; ?>
    <script type="text/javascript" src="js/login2.js"></script>
  </body>
</html>
