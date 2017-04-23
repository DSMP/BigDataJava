
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 195058
 */
public class ProduktyMain {
    private List<MojeZiarnoProdukty> MojaLista;

    public ProduktyMain() {
        this.MojaLista = new ArrayList<>();
        init();
    }
    private void init()
    {
        java.sql.Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        try {
//            processRequest(request, response);
            javax.naming.InitialContext ctx;
            javax.sql.DataSource ds = null;
            ctx = new javax.naming.InitialContext();
            ds = (javax.sql.DataSource)ctx.lookup("jdbc/__SQLServer");
            conn = ds.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery("select productid, productname from northwind.dbo.products");
            while(rs.next())
            {
                this.MojaLista.add(new MojeZiarnoProdukty(Integer.parseInt(rs.getString("productid")),
                                                            rs.getString("productname")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<MojeZiarnoProdukty> findAll()
    {
        return MojaLista;
    }
}
