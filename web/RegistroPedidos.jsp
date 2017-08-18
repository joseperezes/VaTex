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
    </head>>
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
                    <h1>Registrar Nuevo Pedido</h1>
                    <form class="form-horizontal" id="RegistroPedido" method="post"  name="RegistroPedido" action="RegistrarPedidos">
                        <div class="form-group">
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
                            <label class="control-label col-sm-2" for="fechapedido">Fecha Pedido:</label>
                            <div class="col-sm-10">
                                <input name="fechapedido" type="date" class="form-control" id="fechapedido" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="fechaentrega">Fecha Entrega:</label>
                            <div class="col-sm-10">
                                <input name="fechaentrega" type="date" class="form-control" id="fechaentrega" placeholder="">
                            </div>
                        </div>

                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" class="btn btn-danger" value="Registrar"></input>
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'Pedidos.jsp'" value="Atras" id="atras" name="boton" class="btn btn-danger" />
                                <input style="color: #FFFFFF; background-color: #5882FA" type="button" onclick=" location.href = 'PedidosEliminados'" value="Listar Todos Los Pedidos" id="registrar" name="boton" class="btn btn-warning" />     
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
