<?php
  require_once "../db.php";

  $sql = "SELECT id,nombreProducto,fechaIngreso,cantidad,costoUnitario FROM productos";

  $query = query($sql);
  $productos = array();
  while($rs = mysqli_fetch_array($query)){
     $producto = new stdClass();
     $producto->id = $rs["id"];
     $producto->nombreProducto = $rs["nombreProducto"];
     $producto->fechaIngreso = $rs["fechaIngreso"];
     $producto->cantidad = $rs["cantidad"];
     $producto->costoUnitario = $rs["costoUnitario"];
     array_push($productos,$producto);
}
echo json_encode($productos);
