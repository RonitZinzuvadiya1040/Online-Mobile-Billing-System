/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginPage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author administrator1
 */
public class Validate {
public static int checkUser(String username,String password) {  
    boolean st=false;
    int count=0;
    try {
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billingsystem", "Ronit@1040", "Ronit@1040");
            PreparedStatement ps = con.prepareStatement("select * from users where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs =ps.executeQuery();
            while(rs.next())
            {
                System.out.println(rs.getString("email"));
                System.out.println(rs.getString("fullname"));
                count=1;
            }
//            st = rs.next();

        }
        catch(Exception e) {
            //e.printStackTrace();
            System.out.println(e);
        }
        return count;   
}      
    
}
