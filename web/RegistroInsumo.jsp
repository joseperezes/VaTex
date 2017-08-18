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
            <div class="container" id=”content”>



                
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
                            <div class="col-sm-10">
                            <select class="form-control" id="categoria" name="categoria">
                                <option name="categoria"  value="hilos y nailon">Seleccionar</option>
                                <option name="categoria"  value="hilos y nailon">Hilos y Nailon</option>
                                <option name="categoria" value="telas">Telas</option>
                                <option name="categoria" value="bizuteria">Bizuteria</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre Insumo:</label>
                            <div class="col-sm-10">
                                <input name="nombre" type="text" class="form-control" id="nombre" placeholder="">
                            </div>
                        </div>

                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn " value="Registrar">Registrar</button>
                                 <input  type="button" onclick=" location.href = 'Insumos.jsp'" value="Atras" id="atras" name="boton" class="btn " />
                                <input  type="button" onclick=" location.href = 'InsumosEliminados'" value="Listar Todos Los Insumos" id="registrar" name="boton" class="btn " />
                            </div>
                        </div>
                    </form>
                </div>
            </div>>
            <%@include file="Footer.jsp" %>
    </body>
</html>
