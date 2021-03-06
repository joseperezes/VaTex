<%-- 
    Document   : DetallePedido
    Created on : 18-Jul-2017, 11:39:55
    Author     : Owner
--%>

<%@page import="Model.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Detalle Clientes</title>
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
    <body>
        <%@include file="Banner.jsp" %>
        <%@include file="NavBar.jsp" %>
        <%
            String a = (String) (request.getParameter("id"));
            int id = Integer.parseInt(a);
            HttpSession sesion2 = request.getSession();
            ArrayList<Pedidos> ListarP = (ArrayList<Pedidos>) sesion2.getAttribute("ListaP");

            Pedidos p = (Pedidos) ListarP.get(id);


        %>



        <!-- Tabla información-->


        <div class="container">
            <h1>Detalle Pedido</h1>
            <form class="form-horizontal" action="">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">Id:</label>
                    <div class="col-sm-10">
                        <input name="id" type="number" class="form-control" id="consecutivo" placeholder="" value="<%=p.getId()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="consecutivo">Consecutivo Pedido:</label>
                    <div class="col-sm-10">
                        <input name="consecutivo" type="number" class="form-control" id="consecutivo" placeholder=""value="<%=p.getConsecutivo()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="codigo">Codigo Pedido:</label>
                    <div class="col-sm-10">
                        <input name="codigo"type="number" class="form-control" id="codigo" placeholder="" value="<%=p.getCodigo()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="cliente">Nombre Cliente:</label>
                    <div class="col-sm-10">
                        <input name="nombre" type="text" class="form-control" id="cliente" placeholder="Empresa" value="<%=p.getNombre()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="producto">Producto:</label>
                    <div class="col-sm-10">          
                        <input name="producto" type="text" class="form-control" id="producto" placeholder="" value="<%=p.getProducto()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="cantidad">Cantidad:</label>
                    <div class="col-sm-10">
                        <input name="cantidad" type="number" class="form-control" id="cantidad" placeholder="" value="<%=p.getCantidad()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Fecha Pedido:</label>
                    <div class="col-sm-10">
                        <input name="fechapedido" type="date" class="form-control" id="fechapedido" placeholder="" value="<%=p.getFechaPedido()%>" readonly>
                    </div>
                </div>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Fecha Entrega</label>
                    <div class="col-sm-10">
                        <input name="fechaentrega" type="date" class="form-control" id="fechaentrega" placeholder="" value="<%=p.getFechaEntrega()%>" readonly="">
                    </div>
                </div>
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Pedidos.jsp'" value="Atras" id="atras" name="boton" class="btn btn-success" />
                    </div>
                </div>
            </form>
        </div>


        <%@include file="Footer.jsp" %>
    </body>
</html>
