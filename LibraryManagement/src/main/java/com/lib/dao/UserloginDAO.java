package com.lib.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lib.dto.Userlogindetails;
import com.lib.util.JDBCUtil;

public class UserloginDAO {
	Connection connection = null; 
	
	
	public int UserValidate(Userlogindetails u1) {
String sqlInsertQuery = "SELECT sid FROM student where sname=? and semail=?";
		
		PreparedStatement pstmt = null;
		
	    try {
			connection = JDBCUtil.physicalConnection();
			if(connection!=null)
		    {
				pstmt = connection.prepareStatement(sqlInsertQuery);
				if (pstmt != null) {
					pstmt.setString(1, u1.getUsername());
					pstmt.setString(2, u1.getEmail());
				}
				if (pstmt != null) {
				  ResultSet rs = pstmt.executeQuery();
				  System.out.println(pstmt);
				  rs.next();
					if(rs!=null)
					{
					   return rs.getInt(2);
					}
					
				}
		    }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
}
