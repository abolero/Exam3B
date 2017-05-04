
package mydbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;

public class ReadQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery(){
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void doRead() {
        
        try {
            String query = "SELECT * FROM customers ORDER BY custID ASC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public String getHTMLTable() {
        
        String table = "";
        
        table += "<table>";
        
                table += "<th>";
                table += "Customer ID";
                table += "</th>";
                
                table += "<th>";
                table += "First Name";
                table += "</th>";
                
                table += "<th>";
                table += "Last Name";
                table += "</th>";
                
                table += "<th>";
                table += "Address 1";
                table += "</th>";
                
                table += "<th>";
                table += "Address 2";
                table += "</th>";
                
                table += "<th>";
                table += "City";
                table += "</th>";
                
                table += "<th>";
                table += "State";
                table += "</th>";
                
                table += "<th>";
                table += "Zip";
                table += "</th>";
                
                table += "<th>";
                table += "Email Address";
                table += "</th>";
                
                table += "<th>";
                table += "Update / Delete";
                table += "</th>";
        
        try {
            while(this.results.next()){
                
                Customers cust = new Customers();
                cust.setCustID(this.results.getInt("custID"));
                cust.setFirstName(this.results.getString("firstName"));
                cust.setLastName(this.results.getString("lastName"));
                cust.setAddr1(this.results.getString("addr1"));
                cust.setAddr2(this.results.getString("addr2"));
                cust.setCity(this.results.getString("city"));
                cust.setState(this.results.getString("cstate"));
                cust.setZip(this.results.getString("zip"));
                cust.setEmailAddr(this.results.getString("emailAddr"));
                    
                
                table += "<tr>";
                table += "<td>";
                table += cust.getCustID();
                table += "</td>";
                
                table += "<td>";
                table += cust.getFirstName();
                table += "</td>";
                
                table += "<td>";
                table += cust.getLastName();
                table += "</td>";
                
                table += "<td>";
                table += cust.getAddr1();
                table += "</td>";
                
                table += "<td>";
                table += cust.getAddr2();
                table += "</td>";
                
                table += "<td>";
                table += cust.getCity();
                table += "</td>";
                
                table += "<td>";
                table += cust.getState();
                table += "</td>";
                
                table += "<td>";
                table += cust.getZip();
                table += "</td>";
                
                table += "<td>";
                table += cust.getEmailAddr();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?custID=" + cust.getCustID() + "> Update </a>" + " -- " + "<a href=delete?custID=" + cust.getCustID() + "> Delete </a>";
                table += "</td>";
                
                table += "</tr>";
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table += "</table>";
        
                return table;
              
        
    }
    
}
