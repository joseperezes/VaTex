<%-- 
    Document   : RegistroPedidos
    Created on : 17-Jul-2017, 18:14:45
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Pedidos</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device−width, initial−scale=1.0" />
        <link rel="stylesheet" href="Bootstrap/css/estilosVaTex.css" type="text/css" />
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
    </head>
    <body>
        <%@include file="Banner.jsp" %>
        <%@include file="NavBar.jsp" %>
        <div>
            <div  class="container" id=”content”>


               
                <br>
                <!-- Tabla información-->

                <div class="container">
                    <h1 id="titulo1">Registrar Nuevo Pedido</h1>
                    <form class="form-horizontal" id="RegistroPedido" method="post"  name="RegistroPedido" action="RegistrarPedidos">
                        <div class="formulario form-group">
                            <label class="control-label col-sm-2" for="consecutivo">Consecutivo Pedido:</label>
                            <div class="col-sm-10">
                                <input name="consecutivo" type="number" class="form-control" id="consecutivo" placeholder=""  >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="codigo">Codigo Pedido:</label>
                            <div class="col-sm-10">
                                <input name="codigo"type="number" class="form-control" id="codigo" placeholder="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="cliente">Nombre Cliente:</label>
                            <div class="col-sm-10">
                                <input name="nombre" type="text" class="form-control" id="cliente" placeholder="Empresa" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="producto">Producto:</label>
                            <div class="col-sm-10">          
                                <input name="producto" type="text" class="form-control" id="producto" placeholder="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="cantidad">Cantidad:</label>
                            <div class="col-sm-10">
                                <input name="cantidad" type="number" class="form-control" id="cantidad" placeholder="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="fechaentrega">Fecha Entrega:</label>
                            <div class="col-sm-10">
                                <input name="fechaentrega" type="date" class="form-control" id="fechaentrega" placeholder="" >
                            </div>
                        </div>

                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" class="btn " value="Registrar"></input>
                                <input  type="button" onclick=" location.href = 'Pedidos.jsp'" value="Atras" id="atras" name="boton" class="btn " />
                                <input  type="button" onclick=" location.href = 'PedidosEliminados'" value="Listar Todos Los Pedidos" id="registrar" name="boton" class="btn " />     
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            
            <%@include file="Footer.jsp" %>
            <script>
                $('#RegistroPedido').bootstrapValidator({

                    feedbackIcons: {

                        valid: 'glyphicon glyphicon-ok',

                        invalid: 'glyphicon glyphicon-remove',

                        validating: 'glyphicon glyphicon-refresh'

                    },

                    fields: {

                        consecutivo: {

                            validators: {

                                notEmpty: {

                                    message: 'El consecutivo es requerido'

                                }

                            }

                        },

                        codigo: {

                            validators: {

                                notEmpty: {

                                    message: 'El codigo es requerido'

                                }

                            }

                        },

                        nombre: {

                            validators: {

                                notEmpty: {

                                    message: 'El nombre de la empresa es requerido'

                                },

                                producto: {

                                    message: 'El nombre del producto es requerido'

                                }

                            }

                        },

                        cantidad: {

                            validators: {

                                notEmpty: {

                                    message: 'La cantidad es requerida'

                                }

                            }

                        }

                    },

                    fechapedido: {

                        validators: {

                            notEmpty: {

                                message: 'La fecha del pedido es requerida y no puede ser vacia'

                            },

                            date: {

                                format: 'YYYY-MM-DD',

                                message: 'La fecha del pedido no es valida'

                            }

                        }

                    },

                    fechaentrega: {

                        validators: {

                            notEmpty: {

                                message: 'La fecha de entrega es requerida y no puede ser vacia'

                            },

                            date: {

                                format: 'YYYY-MM-DD',

                                message: 'La fecha de entrega no es valida'

                            }

                        }


                    }





                }

                });
            </script>

    </body>
</html>
