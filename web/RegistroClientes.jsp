<%-- 
    Document   : RegistroClientes
    Created on : 11-Jul-2017, 15:07:32
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Clientes</title>
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
                    <h1>Registrar Cliente</h1>
                    <form class="form-horizontal" action="RegistrarClientes">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                            <div class="col-sm-10">
                                <input name="name"type="text" class="form-control" id="nombre" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="tipodocumento">Seleccione Tipo de Documento:</label>
                            <select class="" id="tipodocumento" name="tipodocumento">
                                <option name="tipodocumento" value="Cedula de Ciudadania">Seleccionar</option>
                                <option name="tipodocumento" value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                <option  name="tipodocumento" value="Cedula de Extrangeria">Cedula de Extrangeria</option>
                                <option   name="tipodocumento" value="Pasaporte">Pasaporte</option>
                                <option  name="tipodocumento" value="Nit">Nit</option>
                                <option  name="tipodocumento" value="Otro">Otro</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="numero">Numero Documento:</label>
                            <div class="col-sm-10">
                                <input name="numero" type="number" class="form-control" id="numero" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="telefono">Telefono:</label>
                            <div class="col-sm-10">          
                                <input name="telefono"type="text" class="form-control" id="telefono" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Correo Electronico:</label>
                            <div class="col-sm-10">
                                <input name="correo" type="email" class="form-control" id="email" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="direccion">Direccion:</label>
                            <div class="col-sm-10">
                                <input name="direccion" type="text" class="form-control" id="direccion" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-danger" value="Registrar">Registrar</button>
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Clientes.jsp'" value="Atras" id="atras" name="boton" class="btn btn-danger" />
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'ClientesEliminados'" value="Listar Todos Los Clientes" id="registrar" name="boton" class="btn btn-warning" />                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <%@include file="Footer.jsp" %>
    </body>
</html>
