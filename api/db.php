<?php

  function iniciarSesion($usuario, $password){
    $sql ="SELECT id,username,email,password FROM usuarios"
        ." WHERE username='$usuario' AND password='$password'";
    $query = query($sql);
    $usuarioLogueado = null;
    if($rs = mysqli_fetch_array($query)){
       $usuarioLogueado = new stdClass();
       $usuarioLogueado->id=$rs["id"];
       $usuarioLogueado->username = $rs["username"];
       $usuarioLogueado->email = $rs["email"];
       $usuarioLogueado->password = $rs["password"];
    }
    return $usuarioLogueado;
  }


  function conectar(){
    $servidor = "localhost";
    $password = "";
    $usuario = "root";
    $bd = "inventorydb";
    $link = mysqli_connect($servidor
      ,$usuario, $password, $bd);
    return $link;
  }

  function desconectar($link){
     mysqli_close($link);
  }

  function query($sql){
     $link = conectar();
     return mysqli_query($link, $sql);
  }
