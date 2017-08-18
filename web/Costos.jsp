<%-- 
    Document   : libre
    Created on : 30/07/2017, 05:01:40 PM
    Author     : IdeaPad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Costos</title>
    </head>
    <body>
        <%@include file="Banner.jsp" %>
        <%@include file="NavBar.jsp" %>
        <div>

            <div id=”content”>




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
                <div class="container">       
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i>Panel Tareas</h3>
                            </div>
                            <div class="panel-body">
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <span class="badge">Hace 1 hora</span>
                                        <i class="fa fa-fw fa-calendar"></i>Pedido de Leonissa Terminado
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
                </div>


                <%@include file="Footer.jsp" %>
                </body>
                </html>


