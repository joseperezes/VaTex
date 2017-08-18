<%-- 
    Document   : Clientes
    Created on : 11-Jul-2017, 14:45:17
    Author     : Owner
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Clientes</title>
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
        <div>

            <div id=”content”>

                <%
                    HttpSession sesion2 = request.getSession();

                    ArrayList<Clientes> Listar = (ArrayList<Clientes>) sesion2.getAttribute("Lista");
                %>


                
                <br>
                <!-- Tabla información-->

                <div class="container table-responsive">   
                    <input type="button" onclick=" location.href = 'RegistroClientes.jsp'" value="Registrar Cliente" id="registrar" name="boton" class="btn " />
                    <input   type="button" onclick=" location.href = 'ClientesEliminados'" value="Listar Todos Los Clientes" id="registrar" name="boton" class="btn " />
                    <h1 id="titulo1">Clientes Registrados</h1><br>

                   <table class="table table-hover table-bordered"  border="1"> 

                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Telefono</th>
                                <th>Email</th>
                                <th>Mostrar</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% try {

                                    for (Clientes ele : Listar) {

                            %>
                            <tr>
                                <td><%= ele.getNombre()%></td>
                                <td><%= ele.getTelefono()%></td>
                                <td><%= ele.getCorreoElectronico()%></td>

                                <td><a href="DetalleCliente.jsp?id=<%= ele.getId() - 1%>"><button " 
                                                                                                  class="btn ">Mostrar</button></a></td></td>

                                <td><a href="EditarCliente.jsp?id=<%= ele.getId() - 1%>"><button "
                                                                                                 class="btn ">Editar</button></a></td>
                                <td><a href="#" data-toggle="modal" data-target="#ModalEliminar<%= ele.getId() - 1%>" class="btn ">Eliminar</a></td>

                        <div id="ModalEliminar<%= ele.getId() - 1%>" class="modal fade" role="dialog">
                            <div class="modal-dialog modal-sm">


                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title text-center">Está Seguro?</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="col-lg-offset-3">
                                            <a href="EliminarCliente?id=<%= ele.getId()%>"><button 
                                                    class="btn ">Si</button></a>
                                            <button  type="button" class="btn " data-dismiss="modal">No</button>
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
                    <input  type="button" onclick=" location.href = 'Pedidos.jsp'" value="Pedidos de Clientes" id="registrar" name="boton" class="btn " />

                </div>
                <%@include file="Footer.jsp" %>
                </body>
                </html>
