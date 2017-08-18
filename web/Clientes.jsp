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


                <div id='icon_wrapper'><a  target="_blank"  class='fuse_social_icons_links' href='https://www.facebook.com/'>
                        <i class='fa fa-facebook fb-awesome-social awesome-social'></i></a><br /><a target="_blank" class='fuse_social_icons_links' href='https://www.instagram.com/esthencar/'>
                        <i class='fa fa-instagram instagram-awesome-social awesome-social'></i></a><br /></div>

                <!-- Redes sociales -->

                <div class="social">
                    <ul>
                        <li><a href="https://www.facebook.com/search/top/?q=nia%20vania" target="_blank"><img alt="siguenos en facebook" height="32" src="http://1.bp.blogspot.com/-PrByV4NBlSs/UiXnD1FEFnI/AAAAAAAABws/dUhvcAdYRiY/s1600/Facebook+alt+1.png" title="siguenos en facebook" width="32" /></a></li>
                        <li><a href="https://www.instagram.com/esthencar/" target="_blank"><img alt="sígueme en Instagram" height="32" src="http://2.bp.blogspot.com/-kQop92g4NsM/UidPJ06ER1I/AAAAAAAACAA/0mj0jK5hhXM/s1600/instagram2.png" title="sígueme en Instagram" width="32" /></a></li>
                        <li><a href="https://www.blogger.com/blogger.g?blogID=5558821180902614955#allposts" target="_blank"><img alt="sígueme en Blogger" height="32" src="http://1.bp.blogspot.com/-_NWymh6-9I4/UiXnEcZ1UMI/AAAAAAAABw4/UkFXkztSeOY/s1600/Google+Blogger.png" title="sígueme en Blogger" width="32" /></a></li>
                    </ul>
                </div>
                <br>
                <!-- Tabla información-->

                <div class="container table-responsive">   
                    <input type="button" onclick=" location.href = 'RegistroClientes.jsp'" value="Registrar Cliente" id="registrar" name="boton" class="btn " />
                    <input   type="button" onclick=" location.href = 'ClientesEliminados'" value="Listar Todos Los Clientes" id="registrar" name="boton" class="btn " />
                    <h1 id="cap1">Clientes Registrados</h1><br>

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
                                                                                                  class="btn btn-primary">Mostrar</button></a></td></td>

                                <td><a href="EditarCliente.jsp?id=<%= ele.getId() - 1%>"><button "
                                                                                                 class="btn btn-warning">Editar</button></a></td>
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
                    <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Pedidos.jsp'" value="Pedidos de Clientes" id="registrar" name="boton" class="btn btn-success" />

                </div>
                <%@include file="Footer.jsp" %>
                </body>
                </html>
