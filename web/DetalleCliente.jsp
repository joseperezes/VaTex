<%-- 
    Document   : DetalleCliente
    Created on : 11-Jul-2017, 18:02:56
    Author     : Owner
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Detalle Clientes</title>
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
            ArrayList<Clientes> Listar = (ArrayList<Clientes>) sesion2.getAttribute("Lista");

            Clientes c = (Clientes) Listar.get(id);


        %>


        <div class="container">
            <h1>Detalle Cliente</h1>
            <form class="form-horizontal" action="">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">Id:</label>
                    <div class="col-sm-10">
                        <input name="id" type="number" class="form-control" id="consecutivo" placeholder="" value="<%=c.getId()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="consecutivo">Nombre:</label>
                    <div class="col-sm-10">
                        <input name="nombre" type="text" class="form-control" id="consecutivo" placeholder=""value="<%=c.getNombre()%>"readonly >
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="codigo">Numero Documento:</label>
                    <div class="col-sm-10">
                        <input name="numero documento"type="number" class="form-control" id="codigo" placeholder="" value="<%=c.getNumeroDocumneto()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="cliente">Telefono:</label>
                    <div class="col-sm-10">
                        <input name="telefono" type="number" class="form-control" id="telefono" placeholder="" value="<%=c.getTelefono()%>" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="correo electronico">Correo Electronico</label>
                    <div class="col-sm-10">          
                        <input name="correo electronico" type="mail" class="form-control" id="correo electronico" placeholder="" value="<%=c.getCorreoElectronico()%>"readonly >
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="direccion">Dirección</label>
                    <div class="col-sm-10">
                        <input name="direccion" type="text" class="form-control" id="direccion" placeholder="" value="<%=c.getDireccion()%>" readonly>
                    </div>
                </div>
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <input  type="button" onclick=" location.href = 'Clientes.jsp'" value="Atras" id="atras" name="boton" class="btn " />
                    </div>
                </div>
            </form>
        </div>

        <%@include file="Footer.jsp" %>
    </body>
</html>
