window.validar = function () {
  var validado = true;
  return validado;
}


$(document).ready(function () {
  $("body").on("click", "#ingresar_btn", function () {
    var nombreProducto = $("#nombreProducto").val()
      , fechaIngreso = $("#fechaIngreso").val()
      , cantidad = $("#cantidad").val()
      , costoUnitario = $("#costoUnitario").val()
    ;
    if (window.validar()) {
      var url = "api/productos/create.php";
      var ajax = $.ajax({
        type:"POST",
        url: url,
        data:{
          nombreProducto:nombreProducto,
          fechaIngreso: fechaIngreso,
          cantidad: cantidad,
          costoUnitario: costoUnitario
        }
      });
      ajax.done(function(respuesta){

          $("#nombreProducto").val("");
          $("#fechaIngreso").val("");
          $("#cantidad").val("");
          $("#costoUnitario").val("");
          $("#mensaje").empty();
          var $div = $("<div class='alert alert-success'>"
           + JSON.parse(respuesta).mensaje +"</div>");
          $("#mensaje").append($div);
      });
    }
  });
});
