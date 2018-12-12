<?php

  session_start(); //es acceder a la sesión
  session_destroy(); //elimina todo lo que está en sesión
  header("Location:index.php");
  exit();
