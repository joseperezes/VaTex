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
public class OperacionesInsertar {
   
    public void InsertarClientes(String Nombre, String TipoDocumento, String NumeroDocumento, String Telefono,String CorreoElectronico,String Direccion) {
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "INSERT INTO CLIENTES (Nombre,TipoDocumento,NumeroDocumento,Telefono,CorreoElectronico,Direccion,Estado) Values ('" + Nombre + "','" + TipoDocumento + "','" + NumeroDocumento + "','" + Telefono + "','" + CorreoElectronico + "','" + Direccion + "'," + true + ");";
            System.out.println(query);
            stm.executeUpdate(query);
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }
    public void InsertarPedidos(String Consecutivo, String Codigo, String Nombre,String Producto,String Cantidad,String FechaEntrega) {
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "INSERT INTO PEDIDOS (Consecutivo,Codigo,Nombre,Producto,Cantidad,FechaEntrega,Estado) Values ('" + Consecutivo + "','" +Codigo  + "','" + Nombre + "','" +Producto + "','" + Cantidad + "','"+FechaEntrega+"'," + true + ");";
            System.out.println(query);
            stm.executeUpdate(query);
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }
    public void InsertarInsumos(String Codigo, String Categoria, String Nombre) {
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "INSERT INTO INSUMOS (Codigo,Categoria,Nombre,Estado) Values ('" + Codigo + "','" + Categoria + "','" + Nombre+ "'," + true + ");";
            System.out.println(query);
            stm.executeUpdate(query);
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }
    
}
