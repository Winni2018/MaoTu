package com.MaoTu.Dao;

import java.sql.*;
public class DBconn {
	//静态方法 不需要实例化就可以调用
	
	//获取连接
	public static Connection getConnection(String name,String pwd) {
		Connection connection=null;
		try {
			//连接mysql
			Class.forName("com.mysql.jdbc.Driver");
			//数据库地址
			String url="jdbc:mysql://localhost:3306/maotu";
			//数据库连接异常
			try {
				//连接数据库 getConnection()方法，三个参数
				connection=DriverManager.getConnection(url,name,pwd);
				System.out.println("数据库连接成功！");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	
	public static void main(String[]  args) {
		// TODO Auto-generated method stub
		Connection connection=getConnection("root","1");
	}
}
