<%-- 
    Document   : EditarPedido
    Created on : 18-Jul-2017, 12:34:26
    Author     : Owner
--%>





<%@page import="Model.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar Pedido</title>
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
            int dato = p.getId();


        %>
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


                    <h1>Editar Pedido</h1>
                    <form class="form-horizontal" action="EditarPedido">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="consecutivo">Id:</label>
                            <div class="col-sm-10">
                                <input name="id" type="number" class="form-control" id="id" placeholder="" value="<%=p.getId()%>" readonly>
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
                                <input name="nombre" type="text" class="form-control" id="cliente" placeholder="Empresa" value="<%=p.getNombre()%>">
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
                                <input name="fechapedido" type="date" class="form-control" id="email" placeholder="" value="<%=p.getFechaPedido()%>" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="fechaentrega">Fecha Entrega:</label>
                            <div class="col-sm-10">
                                <input name="fechaentrega" type="date" class="form-control" id="fechaentrega" placeholder="" value="<%=p.getFechaEntrega()%>" >
                            </div>
                        </div>                    
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button  type="submit" class="btn btn-danger" onclick=" location.href = 'Pedidos.jsp'" value="actualizar">Actualizar</button>
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Pedidos.jsp'" value="Atras" id="atras" name="boton" class="btn btn-success" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <%@include file="Footer.jsp" %>
    </body>
</html>
