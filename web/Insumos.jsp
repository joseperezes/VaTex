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
                    <input type="button" onclick=" location.href = 'RegistroInsumo.jsp'" value="Registrar Insumos" id="registrar" name="boton" class="btn btn-danger" />
                    <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'InsumosEliminados'" value="Listar Todos Insumos" id="registrar" name="boton" class="btn btn-warning" />
                    <h1 id="cap1">Insumos Registrados</h1><br>

                    <table class="table table-hover"  border="1">

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
                                            class="btn btn-primary">Mostrar</button></a></td></td>

                                <td><a href="EditarInsumo.jsp?id=<%= ele.getId() - 1%>"><button style="color: #FFFFFF; background-color: #190707"
                                                                                                class="btn btn-warning">Editar</button></a></td>
                                <td><a href="#" data-toggle="modal" data-target="#ModalEliminar<%= ele.getId() - 1%>" class="btn btn-danger">Eliminar</a></td>

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
                                            <button style="color: #FFFFFF; background-color: #190707" type="button" class="btn btn-success" data-dismiss="modal">No</button>
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
