<%-- 
    Document   : Ingreso.jsp
    Created on : 11-Jul-2017, 12:15:30
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ingreso</title>
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



                <!-- Formulario ingreso -->


                <legend class="text-center header"><b>INGRESO USUARIO</b> </legend>
                <div class="row">
                    <form action="Ingresar">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">

                            <label for="user">Usuario</label>
                            <br>
                            <input name="name"  type="text" class="form-control" id="user">
                            <br>
                            <label for="user">Contraseña</label>
                            <br>
                            <input name="pws" type="password" class="form-control" id="password">
                            <br>
                            <button id="login" class="btn btn-danger">Iniciar Sesion</button>

                        </div>
                        <div class="col-sm-2"></div>
                    </form>

                </div>
            </div>
            
    </body>
</html>
