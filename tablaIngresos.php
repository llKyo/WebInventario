<?php require_once "templates/navbar.php"; ?>

<div id="content-wrapper">

  <div class="container-fluid">

    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="main.php">Inicio</a>
      </li>
      <li class="breadcrumb-item active">Tabla de Ingresos</li>
    </ol>

    <?php require_once "templates/iconCardsIngresos.php" ?>

    <!-- DataTables Example -->
    <div class="card mb-3">
      <div class="card-header">
        <i class="fas fa-table"></i>
        Data Table</div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>Artículo</th>
                <th>Fecha de Compra</th>
                <th>Cantidad</th>
                <th>Costo Unitario</th>
                <th>Costo Total</th>
                <th>Eliminar</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>Artículo</th>
                <th>Fecha de Compra</th>
                <th>Cantidad</th>
                <th>Costo Unitario</th>
                <th>Costo Total</th>
                <th>Eliminar</th>
              </tr>
            </tfoot>
            <tbody>

            </tbody>
          </table>
        </div>
      </div>
      <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
    </div>
  </div>
  <!-- /.content-wrapper -->
</div>
<!-- /#wrapper -->

<?php require_once "templates/scripts.php"; ?>
<script type="text/javascript" src="js/datatableIngresados.js"></script>
  </body>
</html>
