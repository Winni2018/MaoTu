package com.MaoTu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.MaoTu.Bean.Production;
import com.MaoTu.Bean.Users;

public class ProductionDao {
	

	Connection connection=null;
	Statement statement=null;
	//预编译
	PreparedStatement preparedStatement=null;
	//结果集
	ResultSet rs=null;
	
	//实例化proClass对象
	Production pro =new Production();
	
	public ProductionDao() {
		// TODO Auto-generated constructor stub
		//数据库连接
		connection=DBconn.getConnection("root", "1");
	}

	public Vector<Production> selectpro(){
		Vector<Production> vPro=new Vector<Production>();
		Production pro=null;
		Users users =null;
		String sql="SELECT production.proID,production.proName,production.proIntroduce,production.proImg,users.nickname,users.userPhoto FROM production INNER JOIN users ON production.authorID = users.userID LIMIT 10";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while (rs.next()) {
				pro=new Production();
				users=new Users();
				pro.setProID(rs.getInt(1));
				pro.setProName(rs.getString(2));
				pro.setProIntroduce(rs.getString(3));
				pro.setProImg(rs.getString(4));
				//外键 对应表对象
				users.setNickName(rs.getString(5));
				users.setUserPic(rs.getString(6));
				pro.setUsers(users);
				
				vPro.addElement(pro);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return vPro;
	}
	
	public Production selectproByID(int id){
		Production pro=new Production();
		Users users =null;
		String sql="SELECT production.proID,production.proName,production.proIntroduce,production.proImg,users.nickname,users.userPhoto FROM production INNER JOIN users ON production.authorID = users.userID where proID="+id;
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while (rs.next()) {
				pro=new Production();
				users=new Users();
				pro.setProID(rs.getInt(1));
				pro.setProName(rs.getString(2));
				pro.setProIntroduce(rs.getString(3));
				pro.setProImg(rs.getString(4));
				//外键 对应表对象
				users.setNickName(rs.getString(5));
				users.setUserPic(rs.getString(6));
				pro.setUsers(users);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return pro;
	}
	//轮播查询
	public Vector<Production> selectLunBo(){
		Vector<Production> vpln=new Vector<Production>();
		Production pln=null;
		Users users=null;
		String sql="SELECT production.proID,production.proName,production.proIntroduce,production.proImg,production.authorID,production.showImg,users.userPhoto,users.nickname FROM production INNER JOIN users ON production.authorID = users.userID where proClassID=26";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
			pln=new Production();
			users=new Users();
			pln.setProID(rs.getInt(1));
			pln.setProName(rs.getString(2));
			pln.setProImg(rs.getString(4));
			pln.setProIntroduce(rs.getString(3));
			pln.setShowImg(rs.getString(6));
			
			users.setNickName(rs.getString(8));
			pln.setUsers(users);
			vpln.addElement(pln);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	
	//人气推荐查询
	public Vector<Production> selectRecommend(){
		Vector<Production> vpln=new Vector<Production>();
		Production pln=null;
		Users users=null;
		String sql="SELECT production.proID,production.proName,production.proIntroduce,production.proImg,production.authorID,production.showImg,users.userPhoto,users.nickname FROM production INNER JOIN users ON production.authorID = users.userID where proClassID=24";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
			pln=new Production();
			users=new Users();
			pln.setProID(rs.getInt(1));
			pln.setProName(rs.getString(2));
			pln.setProImg(rs.getString(4));
			pln.setProIntroduce(rs.getString(3));
			pln.setShowImg(rs.getString(6));
			
			users.setNickName(rs.getString(8));
			pln.setUsers(users);
			vpln.addElement(pln);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	
	
	public Vector<Production> selectProduction(){
		Vector<Production> vpln=new Vector<Production>();
		Production pln=null;
		String sql="SELECT * FROM `production` WHERE proClassID='1' ORDER BY proID DESC LIMIT 6";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
			pln=new Production();
			pln.setProID(rs.getInt(1));
			pln.setProName(rs.getString(2));
			pln.setProImg(rs.getString(4));
			pln.setProIntroduce(rs.getString(3));
			vpln.addElement(pln);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	
	public Vector<Production> selectProduction2(){
		Vector<Production> vpln=new Vector<Production>();
		Production pln=null;
		String sql="SELECT * FROM `production` WHERE proClassID='4' LIMIT 6";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
			pln=new Production();
			pln.setProID(rs.getInt(1));
			pln.setProName(rs.getString(2));
			pln.setProImg(rs.getString(4));
			pln.setProIntroduce(rs.getString(3));
			vpln.addElement(pln);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	
	public Vector<Production> selectAllProduction(){
		Vector<Production> vpln=new Vector<Production>();
		Production pln=null;
		Users users=null;
		String sql="SELECT production.proID,production.proName,production.proIntroduce,production.proImg,production.proClassID,users.nickname FROM users INNER JOIN production ON production.authorID = users.userID LIMIT 12";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
			pln=new Production();
			users=new Users();
			pln.setProID(rs.getInt(1));
			pln.setProName(rs.getString(2));
			pln.setProIntroduce(rs.getString(3));
			pln.setProImg(rs.getString(4));
			
			users.setNickName(rs.getString(6));
			pln.setUsers(users);
			System.out.println(pln.getProImg());
			vpln.addElement(pln);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
}
