<%-- 
    Document   : InicioAdmin
    Created on : 11-Jul-2017, 13:02:38
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio Admin</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device−width, initial−scale=1.0" />
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="Bootstrap/css/estilosVaTex.css" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>

    <body >
        <%@include file="Banner.jsp"%>
        <%@include file="NavBar.jsp"%>
        
            <div >



                <br>

                <!-- Tabla información-->

                <div class="container">    

                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-comments fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">26</div>
                                            <div>Clientes Nuevos!</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/views/Cliente.html">
                                    <div class="panel-footer">
                                        <span class="pull-left">Ver Detalles</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-tasks fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">12</div>
                                            <div>Usuarios Por Verificar!</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/views/Usuarios.html">
                                    <div class="panel-primary">
                                        <span class="pull-left">Ver Detalles</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-shopping-cart fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">124</div>
                                            <div>Pedidos Nuevos!</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/views/Pedidos.html">
                                    <div class="panel-footer">
                                        <span class="pull-left">Ver Detalles</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-support fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">13</div>
                                            <div>Reportes Pendientes!</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="/views/Reportes.html">
                                    <div class="panel-footer">
                                        <span class="pull-left">Ver Detalles</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Panel Tareas</h3>
                            </div>
                            <div class="panel-body">
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <span class="badge">Hace 1 hora</span>
                                        <i class="fa fa-fw fa-calendar"></i>Insumos Actualizados
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">Hace 4 minutos</span>
                                        <i class="fa fa-fw fa-comment"></i>3 Nuevos Clientes
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">Hace 23 minutos</span>
                                        <i class="fa fa-fw fa-truck"></i>5 Nuevos Pedidos
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">Hace 46 minutes</span>
                                        <i class="fa fa-fw fa-money"></i>Inventario Actualizado
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">Hace 1 hora</span>
                                        <i class="fa fa-fw fa-user"></i>Nuevos Insumos Registardos
                                    </a>

                                </div>
                                <div class="text-right">
                                    <a href="#">Ver Todas las Tareas <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Ultimos Pedidos Pagados</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <th>
                                        <tr>
                                            <th>Codigo Pedido</th>
                                            <th>Fecha Pedido</th>
                                            <th>Hora de Pago</th>
                                            <th>Valor Pagado</th>
                                        </tr>
                                        </th>
                                        <tb>
                                            <tr>
                                                <td>3326</td>
                                                <td>10/21/2013</td>
                                                <td>3:29 PM</td>
                                                <td>$321.333</td>
                                            </tr>
                                            <tr>
                                                <td>3325</td>
                                                <td>10/21/2013</td>
                                                <td>3:20 PM</td>
                                                <td>$234.343</td>
                                            </tr>
                                            <tr>
                                                <td>3324</td>
                                                <td>10/21/2013</td>
                                                <td>3:03 PM</td>
                                                <td>$724.173</td>
                                            </tr>
                                            <tr>
                                                <td>3323</td>
                                                <td>10/21/2013</td>
                                                <td>3:00 PM</td>
                                                <td>$233.713</td>
                                            </tr>
                                            <tr>
                                                <td>3322</td>
                                                <td>10/21/2013</td>
                                                <td>2:49 PM</td>
                                                <td>$834.523</td>
                                            </tr>
                                            <tr>
                                                <td>3321</td>
                                                <td>10/21/2013</td>
                                                <td>2:23 PM</td>
                                                <td>$245.122</td>
                                            </tr>
                                            <tr>
                                                <td>3320</td>
                                                <td>10/21/2013</td>
                                                <td>2:15 PM</td>
                                                <td>$566.354</td>
                                            </tr>
                                            <tr>
                                                <td>3319</td>
                                                <td>10/21/2013</td>
                                                <td>2:13 PM</td>
                                                <td>$943.453</td>
                                            </tr>
                                        </tb>
                                    </table>
                                </div>
                                <div class="text-right">
                                    <a href="/views/Pedidos.html">Ver Todos los Pedidos  <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
            <%@include file="Footer.jsp"%>
    </body>


</html>
