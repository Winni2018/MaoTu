package com.MaoTu.Dao;
import java.sql.*;
import java.util.Vector;

import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.json.JSONArray;
import org.json.JSONObject;

import com.MaoTu.Bean.News;

public class NewsDao {
	public Connection conn=null;
	public Statement stmt=null;
	public ResultSet rs=null;
 	public NewsDao() {
		// TODO Auto-generated constructor stub
 		conn=DBconn.getConnection("root", "1");
	}
 	public Vector<News> selectNews(){
 		Vector<News> vpln=new Vector<News>();
 		News pln=null;
 		String sql="SELECT * FROM news ORDER BY newsHotspot DESC LIMIT 6";
 		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				pln=new News();
				pln.setNewsID(rs.getInt(1));
				pln.setNewsTitle(rs.getString(2));
				pln.setNewsDetail(rs.getString(3));
				pln.setNewsTime(rs.getString(4));
				pln.setNewsAuthor(rs.getString(5));
				pln.setNewsImg(rs.getString(6));
				pln.setAuthorImg(rs.getString(7));
				vpln.addElement(pln);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		finally {
 			try {
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
 		}
 		return vpln;
 	}
 	
public Vector<News> selectNewsmajor(){
		Vector<News> vpln=new Vector<News>();
		News pln=null;
		String sql="SELECT * FROM news ORDER BY newsMajor DESC LIMIT 8";
		try {
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()) {
			pln=new News();
			pln.setNewsID(rs.getInt(1));
			pln.setNewsTitle(rs.getString(2));
			pln.setNewsDetail(rs.getString(3));
			pln.setNewsTime(rs.getString(4));
			pln.setNewsAuthor(rs.getString(5));
			pln.setNewsImg(rs.getString(6));
			pln.setAuthorImg(rs.getString(7));
			pln.setNewsHotspot(rs.getString(8));
			pln.setNewsMajor(rs.getString(9));
			vpln.addElement(pln);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		finally {
			try {
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return vpln;
	}
	
public Vector<News> selectNewsList(){
	Vector<News> vpln=new Vector<News>();
	News pln=null;
	String sql="SELECT * FROM news ORDER BY newsList DESC LIMIT 4;";
	try {
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	while(rs.next()) {
		pln=new News();
		pln.setNewsID(rs.getInt(1));
		pln.setNewsTitle(rs.getString(2));
		pln.setNewsDetail(rs.getString(3));
		pln.setNewsTime(rs.getString(4));
		pln.setNewsAuthor(rs.getString(5));
		pln.setNewsImg(rs.getString(6));
		pln.setAuthorImg(rs.getString(7));
		pln.setNewsHotspot(rs.getString(8));
		pln.setNewsMajor(rs.getString(9));
		pln.setNewsList(rs.getString(10));
		vpln.addElement(pln);
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	finally {
		try {
		rs.close();
		stmt.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	return vpln;
}

public News selectNewsByID(int id){
		News pln=new News();
		String sql="SELECT * FROM news WHERE newsID="+id;
		try {
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()) {
			pln.setNewsID(rs.getInt(1));
			pln.setNewsTitle(rs.getString(2));
			pln.setNewsDetail(rs.getString(3));
			pln.setNewsTime(rs.getString(4));
			pln.setNewsAuthor(rs.getString(5));
			pln.setNewsImg(rs.getString(6));
			pln.setAuthorImg(rs.getString(7));
			pln.setDetail(rs.getString(11));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		finally {
			try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return pln;
	}
	
}
