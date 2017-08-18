<%-- 
    Document   : NavBar
    Created on : 10-Jul-2017, 22:08:25
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device−width, initial−scale=1.0" />
<link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="Bootstrap/css/estilosVaTex.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>



<% HttpSession sesion = request.getSession();
    String N = "vacio";
    String Y = "vacio";
    if ((sesion.getAttribute("rol")) == null && sesion.getAttribute("nombre") == null) {
        N = "Invitado";
        Y = "Generico";
    } else {

        Y = (String) sesion.getAttribute("rol");
        N = (String) sesion.getAttribute("nombre");
    }
%>
<nav>
    <nav class="navbar navbar-inverse" aria-label="Page navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <img class="logo" src="images/logo.png" alt=""/>

            </div>
            <% if (Y.equalsIgnoreCase("Generico")) {%>

            <ul class="nav navbar-nav">
                <li class=""><a href="Index.jsp">Inicio</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right"> 
                <li><a><span class="glyphicon glyphicon-log-in"></span><button  type="button" id="modal" data-toggle="modal" data-target="#myModal">Ingresar</button>

                        <!-- Modal -->
                        <div id="myModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1>Iniciar Sesion</h1>
                                    </div>
                                    <div class="modal-body">
                                   
                                            <form action="Ingresar">
                                               
                                                <div class="col-sm-8">

                                                    <label for="user">Usuario</label>
                                                    <br>
                                                    <input name="name"  type="text" class="form-control" id="user">
                                                    <br>
                                                    <label for="user">Contraseña</label>
                                                    <br>
                                                    <input name="pws" type="password" class="form-control" id="password">
                                                    <br>
                                                    <button id="login" class="btn">Iniciar Sesion</button>

                                                </div>
                                               
                                            </form>
                                                
                                       
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">CCerrar</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </a></li>
            </ul>
            <%} else if (Y.equalsIgnoreCase("Cliente")) {%>
            <ul class="nav navbar-nav">
                <li class=""><a href="Index.jsp">Inicio</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>






            <%} else if (Y.equalsIgnoreCase("administrador")) {%> 



            <ul class="nav navbar-nav">
                <li class=""><a href="InicioAdmin.jsp">Inicio</a></li>
                <li class=""><a href="ListarPedidos">Pedidos</a></li>
                <li class=""><a href="ListarClientes">Clientes</a></li>
                <li class=""><a href="Inventario.jsp">Inventario</a></li>
                <li class=""><a href="ListarInsumos">Insumos</a></li>
                <li class=""><a href="Costos.jsp">Costos</a></li>
                <li class=""><a href="Factura.jsp">Facturación</a></li>
                <li class=""><a href="Proveedor.jsp">Proveedores</a></li>
                <li class=""><a href="Reportes.jsp">Reportes</a></li>
                <li class=""><a href="Usuarios.jsp">Usuarios</a></li>


            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>
            <%} else if (Y.equalsIgnoreCase("Costos")) {%>
            <ul class="nav navbar-nav">
                <li class=""><a href="/views/Gerente.html">Inicio</a></li>
                <li class=""><a href="/views/Pedidos.html">Pedidos</a></li>
                <li class=""><a href="/views/Clientes.html">Clientes</a></li>
                <li class=""><a href="/views/Inventario.html">Inventario</a></li>
                <li class=""><a href="/views/Insumos.html">Insumos</a></li>
                <li class=""><a href="/views/Costos.html">Costos</a></li>
                <li class=""><a href="/views/Factura.html">Facturación</a></li>
                <li class=""><a href="/views/Proveedor.html">Proveedores</a></li>
                <li class=""><a href="/views/Reportes.html">Reportes</a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>
            <%} else if (Y.equalsIgnoreCase("Gerente")) {%>
            <ul class="nav navbar-nav">
                <li class=""><a href="InicioGerente.jsp">Inicio</a></li>
                <li class=""><a href="ListarPedidos">Pedidos</a></li>
                <li class=""><a href="ListarClientes">Clientes</a></li>
                <li class=""><a href="Inventario.jsp">Inventario</a></li>
                <li class=""><a href="ListarInsumos">Insumos</a></li>
                <li class=""><a href="Costos.jsp">Costos</a></li>
                <li class=""><a href="Factura.jsp">Facturación</a></li>
                <li class=""><a href="Proveedor.jsp">Proveedores</a></li>
                <li class=""><a href="Reportes.jsp">Reportes</a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">

                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>
            <%} else if (Y.equalsIgnoreCase("JefeProduccion")) {%>
            <ul class="nav navbar-nav">
                <li class=""><a href="/views/Gerente.html">Inicio</a></li>
                <li class=""><a href="/views/Pedidos.html">Pedidos</a></li>
                <li class=""><a href="/views/Inventario.html">Inventario</a></li>
                <li class=""><a href="/views/Insumos.html">Insumos</a></li>
                <li class=""><a href="/views/Costos.html">Costos</a></li>
                <li class=""><a href="/views/Reportes.html">Reportes</a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">

                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>
            <%} else if (Y.equalsIgnoreCase("Supervisor")) {%>
            <ul class="nav navbar-nav">
                <li class=""><a href="../views/Gerente.html">Inicio</a></li>
                <li class=""><a href="../views/Pedidos.html">Pedidos</a></li>
                <li class=""><a href="../views/Clientes.html">Clientes</a></li>
                <li class=""><a href="../views/Inventario.html">Inventario</a></li>
                <li class=""><a href="../views/Insumos.html">Insumos</a></li>
                <li class=""><a href="../views/Costos.html">Costos</a></li>
                <li class=""><a href="../views/Proveedor.html">Proveedores</a></li>
                <li class=""><a href="../views/Reportes.html">Reportes</a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">

                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>
            <%} else if (Y.equalsIgnoreCase("Disenador")) {%>

            <ul class="nav navbar-nav">
                <li class=""><a href="/views/Gerente.html">Inicio</a></li>
                <li class=""><a href="/views/Pedidos.html">Pedidos</a></li>
                <li class=""><a href="/views/Clientes.html">Clientes</a></li>
                <li class=""><a href="/views/Inventario.html">Inventario</a></li>
                <li class=""><a href="/views/Insumos.html">Insumos</a></li>
                <li class=""><a href="/views/Proveedor.html">Proveedores</a></li>
                <li class=""><a href="/views/Reportes.html">Reportes</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="LogOut"><span class="glyphicon glyphicon-log-out"></span>Salir</a></li>
            </ul>


            <%}%>
        </div>
    </nav>
</nav>





