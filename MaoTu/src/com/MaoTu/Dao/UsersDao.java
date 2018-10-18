package com.MaoTu.Dao;

import java.sql.*;
import java.util.Vector;

import org.json.JSONArray;
import org.json.JSONObject;

import com.MaoTu.Bean.Users;

public class UsersDao {
	Connection connection=null;
	Statement statement=null;
	//Ԥ����
	PreparedStatement preparedStatement=null;
	//�����
	ResultSet rs=null;
	
	//ʵ����users����
	Users users=new Users();
	
	//���캯��  ��������������ͬ--��ʵ��������ʱ����
	public UsersDao() {
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
		String sql="select * from users WHERE userName='"+userName+"' and userPWD='"+userPWD+"'";
		
		//�½���ѯ--try catch
		try {
			statement=connection.createStatement();
			rs=statement.executeQuery(sql);
			//�жϽ�������Ƿ�������
			if (rs.next()) {
				//����� �У���rs.getInt(1)�������±�Ϊ1�����ݣ���ֵ��userID
				//json����  key-value ��ֵ��
				users.setUserID(rs.getInt(1));
				outjson.put("userID",rs.getInt(1));
				outjson.put("userName",rs.getString(2));
				outjson.put("userPWD",rs.getString(3));
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
