package com.MaoTu.Dao;

import java.sql.*;
public class DBconn {
	//��̬���� ����Ҫʵ�����Ϳ��Ե���
	
	//��ȡ����
	public static Connection getConnection(String name,String pwd) {
		Connection connection=null;
		try {
			//����mysql
			Class.forName("com.mysql.jdbc.Driver");
			//���ݿ��ַ
			String url="jdbc:mysql://localhost:3306/maotu";
			//���ݿ������쳣
			try {
				//�������ݿ� getConnection()��������������
				connection=DriverManager.getConnection(url,name,pwd);
				System.out.println("���ݿ����ӳɹ���");
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
