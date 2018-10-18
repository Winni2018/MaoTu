package com.MaoTu.Dao;

import java.sql.*;

import org.json.JSONArray;
import org.json.JSONObject;

import com.MaoTu.Bean.Users;

public class AdminDao {

	Connection connection=null;
	Statement statement=null;
	//预编译
	PreparedStatement preparedStatement=null;
	//结果集
	ResultSet rs=null;
	
	//实例化users对象
	Users users=new Users();
	
	//构造函数  方法名与类名相同--类实例化对象时调用
	
	public AdminDao() {
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
		String sql="select * from admin WHERE adminName='"+userName+"' and adminPWD='"+userPWD+"'";
		
		//新建查询--try catch
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			//判断结果集中是否有数据
			if (rs.next()) {
				//结果集 中，‘rs.getInt(1)’列名下标为1的数据，赋值给userID
				//json数据  key-value 键值对
				users.setUserID(rs.getInt(1));
				outjson.put("adminID",rs.getInt(1));
				outjson.put("adminName",rs.getString(2));
				outjson.put("adminPWD",rs.getString(3));
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

}
