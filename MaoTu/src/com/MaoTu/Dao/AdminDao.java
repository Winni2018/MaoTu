package com.MaoTu.Dao;

import java.sql.*;

import org.json.JSONArray;
import org.json.JSONObject;

import com.MaoTu.Bean.Users;

public class AdminDao {

	Connection connection=null;
	Statement statement=null;
	//Ԥ����
	PreparedStatement preparedStatement=null;
	//�����
	ResultSet rs=null;
	
	//ʵ����users����
	Users users=new Users();
	
	//���캯��  ��������������ͬ--��ʵ��������ʱ����
	
	public AdminDao() {
		// TODO Auto-generated constructor stub
		//���ݿ�����
				connection=DBconn.getConnection("root", "1");
	}
	//��¼����
	public String getLogin(String userName,String userPWD) {
		//JSON����
		JSONArray jsonArray=new JSONArray();
		//JSON����
		JSONObject outjson=new JSONObject();
		//sql���
		String sql="select * from admin WHERE adminName='"+userName+"' and adminPWD='"+userPWD+"'";
		
		//�½���ѯ--try catch
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			//�жϽ�������Ƿ�������
			if (rs.next()) {
				//����� �У���rs.getInt(1)�������±�Ϊ1�����ݣ���ֵ��userID
				//json����  key-value ��ֵ��
				users.setUserID(rs.getInt(1));
				outjson.put("adminID",rs.getInt(1));
				outjson.put("adminName",rs.getString(2));
				outjson.put("adminPWD",rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//json���ݷ���json������
		jsonArray.put(outjson);
		//����json����
		String jString=jsonArray.toString();
		return jString;
	}

}
