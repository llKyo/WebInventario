<?php
  require_once "../db.php";
  $id = $_POST["id"];
  $sql = "DELETE FROM productos"
         . " WHERE id=$id";
  query($sql);

  $respuesta = new stdClass();
  $respuesta->resultado = true;
  $respuesta->mensaje = "Producto eliminado";
  echo json_encode($respuesta);
