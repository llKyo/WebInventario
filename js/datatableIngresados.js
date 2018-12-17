window.generarTbody = function(lista){
   var $tbody = $("#dataTable > tbody");
   $tbody.empty();
   for (var i = 0; i < lista.length; i++) {
     var producto = lista[i];
     var $tr = $("<tr></tr>");
     var $tdNombreProducto = $("<td></td>");
     var $tdfechaIngreso = $("<td></td>");
     var $tdcantidad = $("<td></td>");
     var $tdcostoUnitario =$("<td></td>");

     $tdNombreProducto.text(producto.nombreProducto);
     $tdfechaIngreso.text(producto.fechaIngreso);
     $tdcantidad.text(producto.cantidad);
     $tdcostoUnitario.text(producto.costoUnitario);


     $tr.append($tdNombreProducto);
     $tr.append($tdfechaIngreso);
     $tr.append($tdcantidad);
     $tr.append($tdcostoUnitario);
     $tr.append("<td>"+"$"+producto.cantidad * producto.costoUnitario+"</td>");
     var $tdAcciones = $("<td></td>");
     var $boton = $("<button type='button' "
        +"class='btn btn-danger eliminar_btn'>Eliminar</button>");
     $boton.data("producto",producto);
     $tdAcciones.append($boton);
     $tr.append($tdAcciones);
     $tbody.append($tr);
   }
};
window.cargarTabla = function () {
  var url = "api/productos";
  var ajax = $.ajax({
       type: 'GET'
     , url: url
  });
  ajax.done(function(respuesta){
    var lista = JSON.parse(respuesta);
    window.generarTbody(lista);
  });
};

window.cargarDataTable = function () {
  $("#dataTable").DataTable({
    "ajax":'api/productos'

  });

};

$(document).ready(function () {
  

  $("body").on("click", ".eliminar_btn", function(){
      var id = $(this).data("producto").id;
      var url ="api/productos/delete.php";
      var ajax = $.ajax({
        type: "POST",
        url: url,
        data: {
          id: id
        }
      });
      ajax.done(function(respuesta){
        window.cargarTabla();
      });
  });
});
