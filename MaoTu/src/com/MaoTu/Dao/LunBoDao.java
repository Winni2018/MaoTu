package com.MaoTu.Dao;

import java.sql.*;
import java.util.Vector;

import org.json.JSONArray;
import org.json.JSONObject;

import com.MaoTu.Bean.LunBo;
import com.MaoTu.Bean.Users;
public class LunBoDao {
	public Connection conn=null;
	public Statement stmt=null;
	public ResultSet rs=null;

	public LunBoDao() {
		// TODO Auto-generated constructor stub
		conn=DBconn.getConnection("root", "1");
	}
	public Vector<LunBo> selectLunBo(){
		Vector<LunBo>vpln=new Vector<LunBo>();
		LunBo pln=null;
		String sql="SELECT * FROM `production_lunbo` ORDER BY proID DESC LIMIT 4";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			pln=new LunBo();
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
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	
	
	public Vector<LunBo> selectRecommend(){
		Vector<LunBo> vpln=new Vector<LunBo>();
		LunBo pln=null;
		Users users=null;
		String sql="SELECT production_recommend.proID,production_recommend.proName,production_recommend.proIntroduce,production_recommend.proImg,production_recommend.authorID,production_recommend.proClassID,users.nickname,users.userID FROM production_recommend INNER JOIN users ON production_recommend.authorID = users.userID";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			pln=new LunBo();
			users=new Users();
			pln.setProID(rs.getInt(1));
			pln.setProName(rs.getString(2));
			pln.setProIntroduce(rs.getString(3));
			pln.setProImg(rs.getString(4));
			
			users.setNickName(rs.getString(7));
			
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
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	public Vector<LunBo> selectUpdate(){
		Vector<LunBo> vpln=new Vector<LunBo>();
		LunBo pln=null;
		String sql="SELECT * FROM `production_update` ORDER BY proID DESC LIMIT 4";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			pln=new LunBo();
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
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	
	public Vector<LunBo> selectProduction1(){
		Vector<LunBo> vpln=new Vector<LunBo>();
		LunBo pln=null;
		String sql="SELECT * FROM `production` WHERE proClassID='1' ORDER BY proID DESC LIMIT 6";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			pln=new LunBo();
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
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	public Vector<LunBo> selectProduction2(){
		Vector<LunBo> vpln=new Vector<LunBo>();
		LunBo pln=null;
		String sql="SELECT * FROM `production` WHERE proClassID='1' LIMIT 6";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			pln=new LunBo();
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
				stmt.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}
	public Vector<LunBo> selectProduction(){
		Vector<LunBo> vpln=new Vector<LunBo>();
		LunBo pln=null;
		String sql="SELECT * FROM production LIMIT 9";
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
			pln=new LunBo();
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
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return vpln;
	}


}
