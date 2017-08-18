<%-- 
    Document   : Pedidos
    Created on : 18-Jul-2017, 10:22:38
    Author     : Owner
--%>

<%@page import="Model.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Pedidos</title>
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
<html>
    <%@include file="Banner.jsp" %>
    <%@include file="NavBar.jsp" %>

    <div>
        <div id=”content”>

            <%
                HttpSession sesion2 = request.getSession();

                ArrayList<Pedidos> ListarP = (ArrayList<Pedidos>) sesion2.getAttribute("ListaP");
            %>

        </div>
        <br>

        <!-- Tabla información-->

        <div class="container table-responsive"> 
            <input  onclick=" location.href = 'RegistroPedidos.jsp'" value="Registrar Pedidos" id="registrar" name="boton" class="btn " />
            <input  type="button" onclick=" location.href = 'PedidosEliminados'" value="Listar Todos Los Pedidos" id="registrar" name="boton" class="btn " />
            <br>
            <h1 id="titulo1">Pedidos Registrados</h1><br>
            <br>

            <table class="table table-hover table-bordered"  border="1">

                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th>Fecha Pedido</th>                    
                        <th>Mostrar</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {

                            for (Pedidos ele : ListarP) {

                    %>
                    <tr>
                        <td><%= ele.getNombre()%></td>
                        <td><%= ele.getProducto()%></td>
                        <td><%= ele.getCantidad()%></td>
                        <td><%= ele.getFechaPedido()%></td>


                        <td><a href="DetallePedido.jsp?id=<%= ele.getId() - 1%>"><button  
                                    class="btn ">Mostrar</button></a></td></td>

                        <td><a href="EditarPedido.jsp?id=<%= ele.getId() - 1%>"><button 
                                                                                        class="btn ">Editar</button></a></td>
                        <td><a href="#" data-toggle="modal" data-target="#ModalEliminar<%= ele.getId() - 1%>" class="btn ">Eliminar</a></td>

                <div id="ModalEliminar<%= ele.getId() - 1%>" class="modal fade" role="dialog">
                    <div class="modal-dialog modal-sm">


                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button"  class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title text-center">Está Seguro?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="col-lg-offset-3">
                                    <a href="EliminarPedido?id=<%= ele.getId()%>"><button 
                                            class="btn btn-danger">Si</button></a>
                                    <button  type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </tr>


                <% }%>
                <% } catch (Exception e) {
                        e.printStackTrace();
                    }%>
                </tbody>  
            </table>
        </div>
    </div>
    <%@include file="Footer.jsp" %>
</html>
