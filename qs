warning: LF will be replaced by CRLF in vendor/datatables/jquery.dataTables.js.
The file will have its original line endings in your working directory
[1mdiff --git a/css/stylemain.css b/css/stylemain.css[m
[1mindex b31783b..319ecff 100644[m
[1m--- a/css/stylemain.css[m
[1m+++ b/css/stylemain.css[m
[36m@@ -1,3 +1,11 @@[m
[32m+[m[32minput[type=number]::-webkit-inner-spin-button,[m
[32m+[m[32minput[type=number]::-webkit-outer-spin-button {[m
[32m+[m[32m  -webkit-appearance: none;[m
[32m+[m[32m  margin: 0;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32minput[type=number] { -moz-appearance:textfield; }[m
[32m+[m
 .sidebar.toggled .nav-item .nav-link span {[m
     font-size: 0.98rem;[m
     display: block;[m
[1mdiff --git a/main.php b/main.php[m
[1mindex ff2b84e..3d87edd 100644[m
[1m--- a/main.php[m
[1m+++ b/main.php[m
[36m@@ -1,657 +1,23 @@[m
[31m-<!DOCTYPE html>[m
[31m-<html lang="es">[m
[32m+[m[32m<?php require_once "templates/navbar.php"; ?>[m
 [m
[31m-  <head>[m
[32m+[m[32m  <div id="content-wrapper">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <?php require_once "templates/iconCardsIngresos.php"; ?>[m
 [m
[31m-    <meta charset="utf-8">[m
[31m-    <meta http-equiv="X-UA-Compatible" content="IE=edge">[m
[31m-    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[31m-    <meta name="description" content="">[m
[31m-    <meta name="author" content="">[m
 [m
[31m-    <title>SB Admin - Dashboard</title>[m
[31m-    <!-- Bootstrap CSS -->[m
[31m-    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">[m
[31m-    <!-- Custom styles for this template-->[m
[31m-    <link href="css/sb-admin.css" rel="stylesheet">[m
[31m-[m
[31m-    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.0/css/all.css" integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h" crossorigin="anonymous">[m
[31m-    <link rel="stylesheet" href="css/stylemain.css">[m
[31m-  </head>[m
[31m-[m
[31m-  <body>[m
[31m-    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">[m
[31m-[m
[31m-      <a class="navbar-brand mr-1" href="#">Logo</a>[m
[31m-[m
[31m-      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">[m
[31m-        <i class="fas fa-bars"></i>[m
[31m-      </button>[m
[31m-[m
[31m-      <!-- Navbar -->[m
[31m-    </nav>[m
[31m-[m
[31m-    <div id="wrapper">[m
[31m-      <!-- Sidebar -->[m
[31m-      <ul class="sidebar navbar-nav">[m
[31m-        <li class="nav-item active">[m
[31m-          <a class="nav-link" href="#">[m
[31m-            <i class="fas fa-home"></i>[m
[31m-            <span>Inicio</span>[m
[31m-          </a>[m
[31m-        </li>[m
[31m-        <li class="nav-item active">[m
[31m-          <a class="nav-link" href="#">[m
[31m-            <i class="fas fa-fw fa-cash-register"></i>[m
[31m-            <span>Ventas</span>[m
[31m-          </a>[m
[31m-        </li>[m
[31m-        <li class="nav-item active">[m
[31m-          <a class="nav-link" href="cerrar_sesion.php">[m
[31m-            <i class="fas fa-fw fa-sign-out-alt"></i>[m
[31m-            <span>Cerrar Sesión</span>[m
[31m-          </a>[m
[31m-        </li>[m
[31m-      </ul>[m
[31m-[m
[31m-      <div id="content-wrapper">[m
[31m-[m
[31m-        <div class="container-fluid">[m
[31m-[m
[31m-          <!-- Breadcrumbs-->[m
[31m-          <ol class="breadcrumb">[m
[31m-            <li class="breadcrumb-item">[m
[31m-              <a href="#">Inicio</a>[m
[31m-            </li>[m
[31m-            <li class="breadcrumb-item active">Overview</li>[m
[31m-          </ol>[m
[31m-[m
[31m-          <!-- Icon Cards-->[m
[31m-          <div class="row">[m
[31m-            <div class="col-xl-3 col-sm-6 mb-3">[m
[31m-              <div class="card text-white bg-primary o-hidden h-100">[m
[31m-                <div class="card-body">[m
[31m-                  <div class="card-body-icon">[m
[31m-                    <i class="fas fa-fw fa-chart-area"></i>[m
[31m-                  </div>[m
[31m-                  <div class="mr-5">Gráfica de Area</div>[m
[31m-                </div>[m
[31m-                <a class="card-footer text-white clearfix small z-1" href="#">[m
[31m-                  <span class="float-left">Ver Detalles</span>[m
[31m-                  <span class="float-right">[m
[31m-                    <i class="fas fa-angle-right"></i>[m
[31m-                  </span>[m
[31m-                </a>[m
[31m-              </div>[m
[31m-            </div>[m
[31m-            <div class="col-xl-3 col-sm-6 mb-3">[m
[31m-              <div class="card text-white bg-warning o-hidden h-100">[m
[31m-                <div class="card-body">[m
[31m-                  <div class="card-body-icon">[m
[31m-                    <i class="fas fa-fw fa-table"></i>[m
[31m-                  </div>[m
[31m-                  <div class="mr-5">Tabla</div>[m
[31m-                </div>[m
[31m-                <a class="card-footer text-white clearfix small z-1" href="#">[m
[31m-                  <span class="float-left">Ver Detalles</span>[m
[31m-                  <span class="float-right">[m
[31m-                    <i class="fas fa-angle-right"></i>[m
[31m-                  </span>[m
[31m-                </a>[m
[31m-              </div>[m
[31m-            </div>[m
[31m-            <div class="col-xl-3 col-sm-6 mb-3">[m
[31m-              <div class="card text-white bg-success o-hidden h-100">[m
[31m-                <div class="card-body">[m
[31m-                  <div class="card-body-icon">[m
[31m-                    <i class="fas fa-fw fa-shopping-cart"></i>[m
[31m-                  </div>[m
[31m-                  <div class="mr-5">Ventas</div>[m
[31m-                </div>[m
[31m-                <a class="card-footer text-white clearfix small z-1" href="#">[m
[31m-                  <span class="float-left">Ver Detalles</span>[m
[31m-                  <span class="float-right">[m
[31m-                    <i class="fas fa-angle-right"></i>[m
[31m-                  </span>[m
[31m-                </a>[m
[31m-              </div>[m
[31m-            </div>[m
[31m-            <div class="col-xl-3 col-sm-6 mb-3">[m
[31m-              <div class="card text-white bg-danger o-hidden h-100">[m
[31m-                <div class="card-body">[m
[31m-                  <div class="card-body-icon">[m
[31m-                    <i class="fas fa-fw fa-calculator"></i>[m
[31m-                  </div>[m
[31m-                  <div class="mr-5">Calcular Ganancia</div>[m
[31m-                </div>[m
[31m-                <a class="card-footer text-white clearfix small z-1" href="#">[m
[31m-                  <span class="float-left">Ver Detalles</span>[m
[31m-                  <span class="float-right">[m
[31m-                    <i class="fas fa-angle-right"></i>[m
[31m-                  </span>[m
[31m-                </a>[m
[31m-              </div>[m
[31m-            </div>[m
[31m-          </div>[m
[31m-[m
[31m-          <!-- Area Chart Example-->[m
[31m-          <div class="card mb-3">[m
[31m-            <div class="card-header">[m
[31m-              <i class="fas fa-chart-area"></i>[m
[31m-              Gráfico de Area</div>[m
[31m-            <div class="card-body">[m
[31m-              <canvas id="myAreaChart" width="100%" height="30"></canvas>[m
[31m-            </div>[m
[31m-            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>[m
[31m-          </div>[m
[31m-[m
[31m-          <!-- DataTables Example -->[m
[31m-          <div class="card mb-3">[m
[31m-            <div class="card-header">[m
[31m-              <i class="fas fa-table"></i>[m
[31m-              Data Table</div>[m
[31m-            <div class="card-body">[m
[31m-              <div class="table-responsive">[m
[31m-                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">[m
[31m-                  <thead>[m
[31m-                    <tr>[m
[31m-                      <th>Artículo</th>[m
[31m-                      <th>Fecha de Compra</th>[m
[31m-                      <th>Cantidad</th>[m
[31m-                      <th>Costo Unitario</th>[m
[31m-                      <th>Costo Total</th>[m
[31m-                      <th>Eliminar</th>[m
[31m-                    </tr>[m
[31m-                  </thead>[m
[31m-                  <tfoot>[m
[31m-                    <tr>[m
[31m-                      <th>Artículo</th>[m
[31m-                      <th>Fecha de Compra</th>[m
[31m-                      <th>Cantidad</th>[m
[31m-                      <th>Costo Unitario</th>[m
[31m-                      <th>Costo Total</th>[m
[31m-                      <th>Eliminar</th>[m
[31m-                    </tr>[m
[31m-                  </tfoot>[m
[31m-                  <tbody>[m
[31m-                    <tr>[m
[31m-                      <td>Tiger Nixon</td>[m
[31m-                      <td>System Architect</td>[m
[31m-                      <td>Edinburgh</td>[m
[31m-                      <td>61</td>[m
[31m-                      <td>2011/04/25</td>[m
[31m-                      <td>$320,800</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Garrett Winters</td>[m
[31m-                      <td>Accountant</td>[m
[31m-                      <td>Tokyo</td>[m
[31m-                      <td>63</td>[m
[31m-                      <td>2011/07/25</td>[m
[31m-                      <td>$170,750</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Ashton Cox</td>[m
[31m-                      <td>Junior Technical Author</td>[m
[31m-                      <td>San Francisco</td>[m
[31m-                      <td>66</td>[m
[31m-                      <td>2009/01/12</td>[m
[31m-                      <td>$86,000</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Cedric Kelly</td>[m
[31m-                      <td>Senior Javascript Developer</td>[m
[31m-                      <td>Edinburgh</td>[m
[31m-                      <td>22</td>[m
[31m-                      <td>2012/03/29</td>[m
[31m-                      <td>$433,060</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Airi Satou</td>[m
[31m-                      <td>Accountant</td>[m
[31m-                      <td>Tokyo</td>[m
[31m-                      <td>33</td>[m
[31m-                      <td>2008/11/28</td>[m
[31m-                      <td>$162,700</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Brielle Williamson</td>[m
[31m-                      <td>Integration Specialist</td>[m
[31m-                      <td>New York</td>[m
[31m-                      <td>61</td>[m
[31m-                      <td>2012/12/02</td>[m
[31m-                      <td>$372,000</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Herrod Chandler</td>[m
[31m-                      <td>Sales Assistant</td>[m
[31m-                      <td>San Francisco</td>[m
[31m-                      <td>59</td>[m
[31m-                      <td>2012/08/06</td>[m
[31m-                      <td>$137,500</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Rhona Davidson</td>[m
[31m-                      <td>Integration Specialist</td>[m
[31m-                      <td>Tokyo</td>[m
[31m-                      <td>55</td>[m
[31m-                      <td>2010/10/14</td>[m
[31m-                      <td>$327,900</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Colleen Hurst</td>[m
[31m-                      <td>Javascript Developer</td>[m
[31m-                      <td>San Francisco</td>[m
[31m-                      <td>39</td>[m
[31m-                      <td>2009/09/15</td>[m
[31m-                      <td>$205,500</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Sonya Frost</td>[m
[31m-                      <td>Software Engineer</td>[m
[31m-                      <td>Edinburgh</td>[m
[31m-                      <td>23</td>[m
[31m-                      <td>2008/12/13</td>[m
[31m-                      <td>$103,600</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Jena Gaines</td>[m
[31m-                      <td>Office Manager</td>[m
[31m-                      <td>London</td>[m
[31m-                      <td>30</td>[m
[31m-                      <td>2008/12/19</td>[m
[31m-                      <td>$90,560</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Quinn Flynn</td>[m
[31m-                      <td>Support Lead</td>[m
[31m-                      <td>Edinburgh</td>[m
[31m-                      <td>22</td>[m
[31m-                      <td>2013/03/03</td>[m
[31m-                      <td>$342,000</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Charde Marshall</td>[m
[31m-                      <td>Regional Director</td>[m
[31m-                      <td>San Francisco</td>[m
[31m-                      <td>36</td>[m
[31m-                      <td>2008/10/16</td>[m
[31m-                      <td>$470,600</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Haley Kennedy</td>[m
[31m-                      <td>Senior Marketing Designer</td>[m
[31m-                      <td>London</td>[m
[31m-                      <td>43</td>[m
[31m-                      <td>2012/12/18</td>[m
[31m-                      <td>$313,500</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Tatyana Fitzpatrick</td>[m
[31m-                      <td>Regional Director</td>[m
[31m-                      <td>London</td>[m
[31m-                      <td>19</td>[m
[31m-                      <td>2010/03/17</td>[m
[31m-                      <td>$385,750</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Michael Silva</td>[m
[31m-                      <td>Marketing Designer</td>[m
[31m-                      <td>London</td>[m
[31m-                      <td>66</td>[m
[31m-                      <td>2012/11/27</td>[m
[31m-                      <td>$198,500</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Paul Byrd</td>[m
[31m-                      <td>Chief Financial Officer (CFO)</td>[m
[31m-                      <td>New York</td>[m
[31m-                      <td>64</td>[m
[31m-                      <td>2010/06/09</td>[m
[31m-                      <td>$725,000</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Gloria Little</td>[m
[31m-                      <td>Systems Administrator</td>[m
[31m-                      <td>New York</td>[m
[31m-                      <td>59</td>[m
[31m-                      <td>2009/04/10</td>[m
[31m-                      <td>$237,500</td>[m
[31m-                    </tr>[m
[31m-                    <tr>[m
[31m-                      <td>Bradley Greer</td>[m
[31m-                      <td>Software Engineer</td>[m
[31m-                      <td>London</td>[m
[31m-                      <td>41</td>[m
[31m-                      <td>2012/10/13