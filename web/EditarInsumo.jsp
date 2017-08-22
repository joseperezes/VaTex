<%-- 
    Document   : EditarInsumo
    Created on : 18-Jul-2017, 17:50:12
    Author     : Owner
--%>

<%@page import="Model.Insumos"%>
<%@page import="java.util.ArrayList"%>
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
        <%
            String a = (String) (request.getParameter("id"));
            int id = Integer.parseInt(a);
            HttpSession sesion2 = request.getSession();
            ArrayList<Insumos> ListarI = (ArrayList<Insumos>) sesion2.getAttribute("ListaI");

            Insumos i = (Insumos) ListarI.get(id);
            int dato = i.getId();


        %>

        <!-- Tabla información-->

        <div class="container">
            <h1>Editar Insumo</h1>
            <form class="form-horizontal" action="EditarInsumo">
                          
                <div class="form-group">
                    <label  class="control-label col-sm-2" for="codigo">Codigo Insumo:</label>
                    <div class="col-sm-10">
                        <input name="codigo" type="text" class="form-control" id="codigo" placeholder="" value="<%=i.getCodigo()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="tipodocumento">Seleccione Tipo de Insumo:</label>
                    <div class="col-sm-10">
                        
                        <select class="form-control" id="tipodocumento" name="tipodocumento">
                            <option name="categoria" value="Cedula de Ciudadania">Seleccionar</option>
                            <option name="categoria" value="Hilo / Nailon">Hilo / Nailon</option>
                            <option  name="categoria" value="tela">Tela</option>
                            <option   name="categoria" value="bizuteria">Bizuteria</option>
                        </select>
                    </div>
                </div>  
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nombre">Nombre Insumo:</label>
                    <div class="col-sm-10">
                        <input name="nombre" type="text" class="form-control" id="nombre" placeholder="" value="<%=i.getNombre()%>">
                    </div>
                </div>
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-danger" value="Actualizar">Actualizar</button>
                        <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Insumos.jsp'" value="Atras" id="atras" name="boton" class="btn btn-danger" />
                    </div>
                </div>
            </form>
        </div>
    <%@include file="Footer.jsp" %>
</body>
</html>
