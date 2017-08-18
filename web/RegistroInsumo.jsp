<%-- 
    Document   : RegistroInsumo
    Created on : 18-Jul-2017, 15:52:08
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Insumo</title>
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
                    <h1>Registrar Insumo</h1>
                    <form class="form-horizontal" action="RegistrarInsumos">
                        <div class="form-group">
                            <label  class="control-label col-sm-2" for="codigo">Codigo Insumo:</label>
                            <div class="col-sm-10">
                                <input name="codigo" type="number" class="form-control" id="codigo" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="categoria">Categoria Insumo:</label>
                            <select class="" id="categoria" name="categoria">
                                <option name="categoria"  value="hilos y nailon">Seleccionar</option>
                                <option name="categoria"  value="hilos y nailon">Hilos y Nailon</option>
                                <option name="categoria" value="telas">Telas</option>
                                <option name="categoria" value="bizuteria">Bizuteria</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre Insumo:</label>
                            <div class="col-sm-10">
                                <input name="nombre" type="text" class="form-control" id="nombre" placeholder="">
                            </div>
                        </div>

                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-danger" value="Registrar">Registrar</button>
                                 <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Insumos.jsp'" value="Atras" id="atras" name="boton" class="btn btn-danger" />
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'InsumosEliminados'" value="Listar Todos Los Insumos" id="registrar" name="boton" class="btn btn-warning" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>>
            <%@include file="Footer.jsp" %>
    </body>
</html>
