<%-- 
    Document   : Insumos
    Created on : 18-Jul-2017, 15:44:39
    Author     : Owner
--%>

<%@page import="Model.Insumos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insumos</title>
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

                    ArrayList<Insumos> ListarI = (ArrayList<Insumos>) sesion2.getAttribute("ListaI");
                %>


                
                <br>
                <!-- Tabla información-->

                <div class="container table-responsive">   
                    <input type="button" onclick=" location.href = 'RegistroInsumo.jsp'" value="Registrar Insumos" id="registrar" name="boton" class="btn " />
                    <input  type="button" onclick=" location.href = 'InsumosEliminados'" value="Listar Todos Insumos" id="registrar" name="boton" class="btn " />
                    <h1 id="titulo1">Insumos Registrados</h1><br>

                    <table class="table table-hover table-bordered"  border="1">

                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Categoria</th>                        
                                <th>Mostrar</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% try {

                                    for (Insumos ele : ListarI) {

                            %>
                            <tr>
                                <td><%= ele.getNombre()%></td>

                                <td><%= ele.getCategoria()%></td>


                                <td><a href="DetalleInsumo.jsp?id=<%= ele.getId() - 1%>"><button 
                                            class="btn">Mostrar</button></a></td></td>

                                            <td><a href="EditarInsumo.jsp?id=<%= ele.getId() - 1%>"><button class="btn ">Editar</button></a></td>
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
                                            <a href="EliminarInsumo?id=<%= ele.getId()%>"><button 
                                                    class="btn btn-danger">Si</button></a>
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
                </div>

                <%@include file="Footer.jsp" %>
                </body>
                </html>
