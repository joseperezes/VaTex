/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Owner
 */
public class OperacionesEditar {
    public void EditarPedido(String dato,String Consecutivo,String Codigo, String Nombre, String Producto, String Cantidad, String FechaPedido,String FechaEntrega ) {
         
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "UPDATE PEDIDOS SET Consecutivo='" + Consecutivo + "', Codigo='" + Codigo + "', Nombre='" + Nombre + "', Producto='" + Producto + "',Cantidad='" + Cantidad + "', FechaPedido='"+FechaPedido+"',FechaEntrega='"+FechaEntrega+"' WHERE Id='" + dato + "'";
            
            stm.executeUpdate(query);
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }
    public void EditarCliente(String dato,String Nombre,String NumeroDocumento, String Telefono, String CorreoElectronico, String Direccion ) {
         
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "UPDATE CLIENTES SET Nombre='" + Nombre + "', NumeroDocumento='" + NumeroDocumento + "', Telefono='" + Telefono + "', CorreoElectronico='" + CorreoElectronico + "',Direccion='" + Direccion + "' WHERE Id='" + dato + "'";
            
            stm.executeUpdate(query);
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }
    public void EditarInsumo(String dato,String Codigo,String Categoria, String Nombre ) {
         
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "UPDATE INSUMOS SET Codigo='" + Codigo + "', Categoria='" + Categoria + "', Nombre='" + Nombre + "' WHERE Id='" + dato + "'";
            System.out.println(query);
            stm.executeUpdate(query);
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }
    
}
