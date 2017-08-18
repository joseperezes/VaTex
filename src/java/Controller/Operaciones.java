package Controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Owner
 */
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

public class Operaciones {
     


    

    public String validarUsuario(String u, String p) {
        String existe = "";
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT * FROM USUARIOS Where Nombre = '" + u + "' AND Password ='" + p + "';";
            
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                existe = rs.getString(4);
            } else {
                existe = "Error";
            }
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (Exception s) {
            s.printStackTrace();
        }
        return existe;

    }

    

 
}
