<?php require_once "templates/navbar.php";?>

  <div id="content-wrapper">
    <div class="container-fluid">
      <?php require_once "templates/iconCardsIngresos.php"; ?>
      <hr>
      <div class="row justify-content-center" id="mensaje">
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-8 col-sm-12">
          <div class="card mb-3">
            <div class="card-header bg-primary text-white">
              <i class="fas fa-chart-area"></i>
              Ingresar un nuevo producto</div>
              <div class="card-body">
                <div class="form-group">
                  <label for="nombreProducto">Nombre del producto</label>
                  <input type="text" class="form-control"
                  id="nombreProducto" value="">
                  <br>
                  <label for="fechaIngreso">Fecha de ingreso</label>
                  <input type="date" class="form-control"
                  id="fechaIngreso" value="">
                  <br>
                  <label for="cantidad">Cantidad</label>
                  <input type="number" class="form-control"
                  id="cantidad" value="">
                  <br>
                  <label for="costoUnitario">Costo Unitario</label>
                  <input type="number" class="form-control"
                  id="costoUnitario" value="" min="1" pattern="^[0-9]+">
                </div>
              </div>
              <div class="card-footer text-center">
                <button type="button" class="btn btn-primary px-5"id="ingresar_btn">Registrar</button>
              </div>
            </div>
        </div>
      </div>

      </div>
      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © 2018</span>
          </div>
        </div>
      </footer>
    </div>
    <!-- /.content-wrapper -->
  </div>
  <!-- /#wrapper -->
  <?php require_once "templates/scripts.php"; ?>
  <script type="text/javascript" src="js/ingresarProducto.js"></script>
  </body>
</html>
