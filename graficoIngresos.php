<?php require_once "templates/navbar.php"; ?>

<div id="content-wrapper">
  <div class="container-fluid">



    <?php require_once "templates/iconCardsIngresos.php"; ?>

    <!-- Area Chart Example-->
    <div class="card mb-3">
      <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Gráfico de Area</div>
        <div class="card-body">
          <canvas id="myAreaChart" width="100%" height="30"></canvas>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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

  </body>
</html>
