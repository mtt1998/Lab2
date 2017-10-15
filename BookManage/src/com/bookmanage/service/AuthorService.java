package com.bookmanage.service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bookmanage.model.AuthorModel;
import com.bookmanage.sql.DB;

public class AuthorService {
	public AuthorModel getById(int authorId) {
		Connection conn = DB.getConnection();
		String sql = "select * from Author where authorId = ?";
		PreparedStatement pst = null;
		ResultSet rs = null;	
		AuthorModel res = null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, authorId);
			rs = pst.executeQuery();
			while(rs.next()) {
				res = new AuthorModel(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4));
			}			
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return res;
	}	
	
	public List<Integer> getIdlist(String name){
		Connection conn = DB.getConnection();
		String sql = "select authorId from Author where name = ?";
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<Integer> idlist = new ArrayList<Integer>();		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, name);
			rs = pst.executeQuery();
			while(rs.next()) {
				idlist.add(rs.getInt("authorId"));
			}
			if(rs != null)
				rs.close();
			if(pst != null)
				pst.close();
			if(conn != null)
				conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return idlist;
	}
	
	public int insert(AuthorModel newauthor) {
		Connection conn = DB.getConnection();
		PreparedStatement pst = null;
		String sql = "insert into Author values(?,?,?,?)";
		int res = -1;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, newauthor.getAuthorId());
			pst.setString(2, newauthor.getName());
			pst.setInt(3, newauthor.getAge());
			pst.setString(4,newauthor.getCountry());
			res = pst.executeUpdate();
			if(pst != null)
				pst.close();
			if(conn != null)
				conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
}
