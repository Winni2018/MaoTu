package com.MaoTu.Dao;

import java.sql.*;
import java.util.Vector;

import com.MaoTu.Bean.Comment;
import com.MaoTu.Bean.Users;

public class CommentDao {

	Connection conn=null;
	public Statement stmt=null;
	public ResultSet rs=null;
	public CommentDao() {
		// TODO Auto-generated constructor stub
		conn=DBconn.getConnection("root", "1");
	}
	
	
//	根据proID查询 评论内容
	public Vector<Comment> selectCommentByID(int id){
		Vector<Comment> vcom=new Vector<Comment>();
		Comment com=null;
		Users users=null;
		String sql="SELECT `comment`.commentID,`comment`.proID,`comment`.commentTime,`comment`.commentDetail,users.userPhoto,users.nickname FROM users INNER JOIN `comment` ON `comment`.userID = users.userID where proID="+id;
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while (rs.next()) {
				com=new Comment();
				users=new Users();
				com.setCommentID(rs.getInt(1));
				com.setProID(rs.getInt(2));
				com.setCommentTime(rs.getString(3));
				com.setCommentDetail(rs.getString(4));
				
				users.setUserPic(rs.getString(5));
				users.setNickName(rs.getString(6));
				com.setUsers(users);
				
				vcom.addElement(com);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vcom;
		
	}

}
