
import jakarta.jms.Connection;
import jakarta.resource.cci.ResultSet;
import java.beans.Statement;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSetMetaData;


public class Persistencia {

    private Connection cn; 
    private ResultSet rs;
    private PreparedStatement ps;
    private Statement s;
    private ResultSetMetaData rsm;
    
    public String servidor, basededatos, usuario, clave, ejecutar;
    
    public Connection  conectarse(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
        
        
        servidor="localhost:3306";
        basededatos="cacproyectointegrador";
        usuario="root";
        clave="";
        
        cn= (Connection) DriverManager.getConnection("jdbc:mysql://" + servidor + basededatos, usuario, clave);
        
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
         return cn;
    }
    
    public ResultSet consultaSQL(String busqueda){
        ps=conectarse().prepareStatement(busqueda);
        
        try {
            rs= (ResultSet) ps.executeQuery();
            rsm=rs.getMetaData();           
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }        
        
        return rs;
    }
    
}
