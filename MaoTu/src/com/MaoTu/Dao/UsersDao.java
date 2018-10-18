package com.MaoTu.Dao;

import java.sql.*;
import java.util.Vector;

import org.json.JSONArray;
import org.json.JSONObject;

import com.MaoTu.Bean.Users;

public class UsersDao {
	Connection connection=null;
	Statement statement=null;
	//预编译
	PreparedStatement preparedStatement=null;
	//结果集
	ResultSet rs=null;
	
	//实例化users对象
	Users users=new Users();
	
	//构造函数  方法名与类名相同--类实例化对象时调用
	public UsersDao() {
		// TODO Auto-generated constructor stub
		//数据库连接
		connection=DBconn.getConnection("root", "1");
	}
	
	//登录方法
	public String getLogin(String userName,String userPWD) {
		//JSON数组
		JSONArray jsonArray=new JSONArray();
		//JSON数据
		JSONObject outjson=new JSONObject();
		
		//sql语句
		String sql="select * from users WHERE userName='"+userName+"' and userPWD='"+userPWD+"'";
		
		//新建查询--try catch
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			//判断结果集中是否有数据
			if (rs.next()) {
				//结果集 中，‘rs.getInt(1)’列名下标为1的数据，赋值给userID
				//json数据  key-value 键值对
				users.setUserID(rs.getInt(1));
				outjson.put("userID",rs.getInt(1));
				outjson.put("userName",rs.getString(2));
				outjson.put("userPWD",rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//json数据放在json数组中
		jsonArray.put(outjson);
		//返回json数组
		String jString=jsonArray.toString();
		return jString;
	}
	
	public Vector<Users> selectUsers(){
		Vector<Users> vUsers=new Vector<Users>();
		Users users=null;
		String sql="SELECT * FROM users";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while (rs.next()) {
				users=new Users();
				users.setUserID(rs.getInt(1));
				users.setUserName(rs.getString(2));
				users.setNickName(rs.getString(7));
				users.setUserPic(rs.getString(4));
				users.setBalance(rs.getString(5));
				vUsers.addElement(users);
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
		
		return vUsers;
		
	}
	
	public Users selectUsersById(int id){
		Users pln=null;
		String sql="SELECT *FROM users WHERE userID="+id;
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()) {
				pln=new Users();
				pln.setUserID(rs.getInt(1));
				pln.setUserName(rs.getString(2));
				pln.setUserPWD(rs.getString(3));;
				pln.setUserPic(rs.getString(4));
				pln.setBalance(rs.getString(5));
				pln.setSex(rs.getString(6));
				pln.setNickName(rs.getString(7));
				pln.setUserCity(rs.getString(8));
				pln.setUserStar(rs.getString(9));
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
		return pln;
	}

}
