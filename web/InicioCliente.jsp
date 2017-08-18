<%-- 
    Document   : InicioCliente
    Created on : 10-Jul-2017, 22:43:52
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cliente</title>
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
        <%@include file="Banner.jsp"%>
        <%@include file="NavBar.jsp"%>
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
                    <h1>Solicitar Cotización</h1>
                    <form class="form-horizontal form-responsive">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nombre" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="numero">Telefono Contacto:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numero" placeholder="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Correo Electronico:</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" placeholder="">
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="tipopeticion">Seleccione Tipo de Petición:</label>
                                <select class="form-control" id="tipopeticion" name="tipopeticion">
                                    <option value="1">Costeo Prenda</option>
                                    <option value="2">Costeo Operación</option>
                                    <option value="3">Costeo por Tiempo</option>
                                    <option value="4">Diseño Molderia</option>
                                    <option value="5">Otro</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="cantidad">Observación:</label>
                                <div class="col-sm-10">
                                    <textarea name="comentarios" rows="10" cols="40">Detalle Pedido</textarea>
                                </div>
                            </div>
                            <div class="form-group">        
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-success" value="Registrar">Enviar</button>
                                </div>
                            </div>
                    </form>
                </div>
            </div>>
            <%@include file="Footer.jsp"%>
    </body>
</html>
