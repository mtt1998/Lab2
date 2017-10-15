package com.bookmanage.sql;

import java.sql.*;

public class DB {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("找不到mysql驱动");
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://60.205.230.161:3306/BookDB", "root", "123456");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
