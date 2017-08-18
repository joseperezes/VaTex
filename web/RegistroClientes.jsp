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
            <div class="container" id=”content”>


                
                <br>
                <!-- Tabla información-->

                <div class="container">
                    <h1 id="titulo1">Registrar Cliente</h1>
                    <form class="form-horizontal" action="RegistrarClientes">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                            <div class="col-sm-10">
                                <input name="name"type="text" class="form-control" id="nombre" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="tipodocumento">Seleccione Tipo de Documento:</label>
                            <div class="col-sm-10">
                            <select class="form-control" id="tipodocumento" name="tipodocumento">
                                <option name="tipodocumento" value="Cedula de Ciudadania">Seleccionar</option>
                                <option name="tipodocumento" value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                <option  name="tipodocumento" value="Cedula de Extrangeria">Cedula de Extrangeria</option>
                                <option   name="tipodocumento" value="Pasaporte">Pasaporte</option>
                                <option  name="tipodocumento" value="Nit">Nit</option>
                                <option  name="tipodocumento" value="Otro">Otro</option>

                            </select>
                            </div>
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
                                <button type="submit" class="btn" value="Registrar">Registrar</button>
                                <input  type="button" onclick=" location.href = 'Clientes.jsp'" value="Atras" id="atras" name="boton" class="btn " />
                                <input  type="button" onclick=" location.href = 'ClientesEliminados'" value="Listar Todos Los Clientes" id="registrar" name="boton" class="btn " />                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
            <%@include file="Footer.jsp" %>
    </body>
</html>
