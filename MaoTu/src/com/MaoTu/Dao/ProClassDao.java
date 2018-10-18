package com.MaoTu.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.MaoTu.Bean.ProClass;
import com.MaoTu.Bean.Production;
import com.MaoTu.Bean.Users;

public class ProClassDao {

	Connection connection=null;
	Statement statement=null;
	//Ԥ����
	PreparedStatement preparedStatement=null;
	//�����
	ResultSet rs=null;
	
	//ʵ����proClass����
	Production pro =new Production();

	public ProClassDao() {
		// TODO Auto-generated constructor stub
		//���ݿ�����
				connection=DBconn.getConnection("root", "1");
	}
	
	public Vector<ProClass> selectproClass(){
		Vector<ProClass> vPro=new Vector<ProClass>();
		ProClass proClass=null;
		String sql="SELECT * FROM proclass";
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			while (rs.next()) {
				proClass=new ProClass();
				proClass.setProClassID(rs.getInt(1));
				proClass.setProClassName(rs.getString(2));
				vPro.addElement(proClass);
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

}
