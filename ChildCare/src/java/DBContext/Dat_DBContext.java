/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author mihxdat
 */
public class Dat_DBContext {
    public static Connection CreateConnection(){
       Connection conn = null;
       String url = "jdbc:sqlserver://localhost\\MSSQLSERVERSM22:1433;databaseName=ChildCare";
       String username="sa";
       String password="123";
       try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(url, username, password);
       } catch (ClassNotFoundException e) {
           e.printStackTrace();
       }catch(SQLException e){
           e.printStackTrace();
       }

       return conn;
   }

    public static void main(String[] args){
        Connection conn = Dat_DBContext.CreateConnection();
        System.out.println(conn.toString());
    }
}
