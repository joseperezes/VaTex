/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Clientes;
import Model.Insumos;
import Model.Pedidos;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Owner
 */
public class OperacionesListar {

    ArrayList<Clientes> Listar = new ArrayList();
    ArrayList<Pedidos> ListarP = new ArrayList();
    ArrayList<Insumos> ListarI = new ArrayList();

    public ArrayList<Clientes> ListarClientes() {
        try {
            Listar.clear();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT Id,Nombre,TipoDocumento,NumeroDocumento,Telefono,CorreoElectronico,Direccion FROM CLIENTES WHERE Estado = " + true + ";";
            // System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Clientes objeto = new Clientes();
                objeto.setId((rs.getInt(1)));
                objeto.setNombre(rs.getString(2));
               
                objeto.setNumeroDocumneto(rs.getString(4));
                objeto.setTelefono(rs.getString(5));
                objeto.setCorreoElectronico(rs.getString(6));
                objeto.setDireccion(rs.getString(7));

                Listar.add(objeto);
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return Listar;
    }
    public ArrayList<Clientes> ListarClientesEliminados() {
        try {
            Listar.clear();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT Id,Nombre,TipoDocumento,NumeroDocumento,Telefono,CorreoElectronico,Direccion FROM CLIENTES ;";
            // System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Clientes objeto = new Clientes();
                objeto.setId((rs.getInt(1)));
                objeto.setNombre(rs.getString(2));
                objeto.setNumeroDocumneto(rs.getString(4));
                objeto.setTelefono(rs.getString(5));
                objeto.setCorreoElectronico(rs.getString(6));
                objeto.setDireccion(rs.getString(7));

                Listar.add(objeto);
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return Listar;
    }
    
    
    
    
    public ArrayList<Pedidos> ListarPedidos() {
        try {
            ListarP.clear();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT Id,Consecutivo,Codigo,Nombre,Producto,Cantidad,FechaPedido,FechaEntrega FROM PEDIDOS WHERE Estado = " + true + " ;";
            // System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Pedidos objeto = new Pedidos();
                objeto.setId((rs.getInt(1)));
                objeto.setConsecutivo(rs.getInt(2));
                objeto.setCodigo(rs.getInt(3));
                objeto.setNombre(rs.getString(4));
                objeto.setProducto(rs.getString(5));
                objeto.setCantidad(rs.getInt(6));
                objeto.setFechaPedido(rs.getString(7));
                objeto.setFechaEntrega(rs.getString(8));
                
               
                

                ListarP.add(objeto);
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return ListarP;
    }
    
    public ArrayList<Pedidos> ListarPedidosEliminados() {
        try {
            ListarP.clear();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query =  "SELECT Id,Consecutivo,Codigo,Nombre,Producto,Cantidad,FechaPedido,FechaEntrega FROM PEDIDOS ;";
            // System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Pedidos objeto = new Pedidos();
                objeto.setId((rs.getInt(1)));
                objeto.setConsecutivo(rs.getInt(2));
                objeto.setCodigo(rs.getInt(3));
                objeto.setNombre(rs.getString(4));
                objeto.setProducto(rs.getString(5));
                objeto.setCantidad(rs.getInt(6));
                objeto.setFechaPedido(rs.getString(7));
                objeto.setFechaEntrega(rs.getString(8)); 

                ListarP.add(objeto);
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return ListarP;
    }
    
    
    public ArrayList<Insumos> ListarInsumos() {
        try {
            ListarI.clear();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT Id,Codigo,Categoria,Nombre FROM Insumos WHERE Estado = " + true + " ;";
            // System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Insumos objeto = new Insumos();
                objeto.setId((rs.getInt(1)));
                objeto.setCodigo((rs.getInt(2)));
                objeto.setCategoria((rs.getString(3)));
                objeto.setNombre((rs.getString(4)));
               
                ListarI.add(objeto);
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return ListarI;
    }
    public ArrayList<Insumos> ListarInsumosEliminados() {
        try {
            ListarI.clear();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT Id,Codigo,Categoria,Nombre FROM Insumos ;";
            // System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Insumos objeto = new Insumos();
                objeto.setId((rs.getInt(1)));
                objeto.setCodigo((rs.getInt(2)));
                objeto.setCategoria((rs.getString(3)));
                objeto.setNombre((rs.getString(4)));
               
                ListarI.add(objeto);
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return ListarI;
    }

}

