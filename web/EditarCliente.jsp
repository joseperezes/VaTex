<%-- 
    Document   : EditarCliente
    Created on : 11-Jul-2017, 18:12:42
    Author     : Owner
--%>

<%@page import="Model.Clientes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar Cliente</title>
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
    </head>>
    <body>
        <%@include file="Banner.jsp" %>
        <%@include file="NavBar.jsp" %>
        <%
            String a = (String) (request.getParameter("id"));
            int id = Integer.parseInt(a);
            HttpSession sesion2 = request.getSession();
            ArrayList<Clientes> Listar = (ArrayList<Clientes>) sesion2.getAttribute("Lista");

            Clientes c = (Clientes) Listar.get(id);
            int dato = c.getId();


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
                    <h1>Editar Cliente</h1>
                    <form class="form-horizontal" action="EditarCliente">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="id">Id:</label>
                            <div class="col-sm-10">
                                <input name="id"type="text" class="form-control" id="id" placeholder="" value="<%=c.getId()%>" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                            <div class="col-sm-10">
                                <input name="name"type="text" class="form-control" id="nombre" placeholder="" value="<%=c.getNombre()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="tipodocumento" >Seleccione Tipo de Documento:</label>
                            <select class="" id="tipodocumento" name="tipodocumento" readonly>
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
                                <input name="numero" type="text" class="form-control" id="numero" placeholder="" value="<%= c.getNumeroDocumneto()%>" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="telefono">Telefono:</label>
                            <div class="col-sm-10">          
                                <input name="telefono"type="text" class="form-control" id="telefono" placeholder="" value="<%=c.getTelefono()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Correo Electronico:</label>
                            <div class="col-sm-10">
                                <input name="correo" type="email" class="form-control" id="email" placeholder="" value="<%=c.getCorreoElectronico()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="direccion">Direccion:</label>
                            <div class="col-sm-10">
                                <input name="direccion" type="text" class="form-control" id="direccion" placeholder="" value="<%=c.getDireccion()%>">
                            </div>
                        </div>
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-danger" onclick=" location.href = 'Clientes.jsp'" value="actualizar">Actualizar</button>
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Clientes.jsp'" value="Atras" id="atras" name="boton" class="btn btn-danger" />

                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <%@include file="Footer.jsp" %>
    </body>
</html>
