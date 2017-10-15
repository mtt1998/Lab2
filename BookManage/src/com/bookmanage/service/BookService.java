package com.bookmanage.service;

import com.bookmanage.model.BookModel;
import com.bookmanage.sql.DB;
import java.sql.*;
import java.util.*;

public class BookService {
	public List<BookModel> searchBooks(List<Integer> idlist){
		Connection conn = DB.getConnection();
		String sql = "select * from Book where authorId = ?";
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<BookModel> res = new ArrayList<BookModel>();

		try {
			for(int i = 0; i < idlist.size(); i++) {
				pst = conn.prepareStatement(sql);
				pst.setInt(1, idlist.get(i));
				rs = pst.executeQuery();
				while(rs.next()) {
					res.add(new BookModel(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getFloat(6)));
				}
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
		return res;
	}

	public List<BookModel> getAll(){
		Connection conn = DB.getConnection();
		String sql = "select * from Book";
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<BookModel> res = new ArrayList<BookModel>();
		try {			
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()) {
				res.add(new BookModel(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getFloat(6)));
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
		return res;
	}
	
	public BookModel getById(String bookId) {
		Connection conn = DB.getConnection();
		String sql = "select * from Book where isbn = ?";
		PreparedStatement pst = null;
		ResultSet rs = null;	
		BookModel res = null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, bookId);
			rs = pst.executeQuery();
			while(rs.next()) {
				res = new BookModel(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getFloat(6));
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
		return res;
	}
	
	public int deleteById(String bookId) {
		Connection conn = DB.getConnection();
		String sql = "delete from Book where isbn = ?";
		PreparedStatement pst = null;
		int res = -1;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, bookId);
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
	
	public int update(BookModel newbook) {
		Connection conn = DB.getConnection();
		PreparedStatement pst = null;
		String sql = "update Book set authorId = ?, publisher = ?, publishDate = ?, price = ? where isbn = ?";
		int res = -1;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, newbook.getAuthorId());
			pst.setString(2, newbook.getPublisher());
			pst.setString(3, newbook.getPublishDate());
			pst.setFloat(4, newbook.getPrice());
			pst.setString(5, newbook.getIsbn());
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
	
	public int insert(BookModel newbook) {
		Connection conn = DB.getConnection();
		PreparedStatement pst = null;
		String sql = "insert into Book(isbn,title,authorId,publisher,publishDate,price) values(?,?,?,?,?,?)";
		int res = -1;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, newbook.getIsbn());
			pst.setString(2, newbook.getTitle());
			pst.setInt(3, newbook.getAuthorId());
			pst.setString(4, newbook.getPublisher());
			pst.setString(5, newbook.getPublishDate());
			pst.setFloat(6, newbook.getPrice());
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
