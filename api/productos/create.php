<?php
  require_once "../db.php";
  $nombreProducto = $_POST["nombreProducto"];
  $fechaIngreso = $_POST["fechaIngreso"];
  $cantidad = $_POST["cantidad"];
  $costoUnitario = $_POST["costoUnitario"];

  $sql = "INSERT INTO productos(nombreProducto,fechaIngreso,cantidad,costoUnitario)"
        ." VALUES ('$nombreProducto','$fechaIngreso',$cantidad,$costoUnitario)";
  query($sql);

  $respuesta = new stdClass();
  $respuesta->resultado = true;
  $respuesta->mensaje = "Producto ingresado";
  echo json_encode($respuesta);
