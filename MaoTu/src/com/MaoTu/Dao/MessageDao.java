package com.MaoTu.Dao;
import java.sql.*;
import java.util.Vector;
import com.MaoTu.Bean.Message;


public class MessageDao {
	Connection conn=null;
	public Statement stmt=null;
	public ResultSet rs=null;
	public MessageDao() {
		// TODO Auto-generated constructor stub
		conn=DBconn.getConnection("root", "1");
	}
	public Vector<Message> selectMessage(){
		Vector<Message> vpln1=new Vector<Message>();
		Message pln1=null;
		String sql="SELECT *FROM message ORDER BY concenID LIMIT 3";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				pln1=new Message();
				pln1.setConcenID(rs.getInt(1));
				pln1.setConcenName(rs.getString(2));
				pln1.setConPublish(rs.getString(3));
				pln1.setConVisit(rs.getString(4));
				pln1.setConfans(rs.getString(5));
				pln1.setConmessage(rs.getString(6));
				pln1.setConImg(rs.getString(7));
				vpln1.addElement(pln1);;
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
		return vpln1;
		


	}
}
