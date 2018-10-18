package com.MaoTu.Bean;

public class Admin {

	// Ù–‘
		private int adminID;
		private String adminName;
		private String adminPWD;
		
		
		public int getAdminID() {
			return adminID;
		}
		public void setAdminID(int adminID) {
			this.adminID = adminID;
		}
		public String getAdminName() {
			return adminName;
		}
		public void setAdminName(String adminName) {
			this.adminName = adminName;
		}
		public String getAdminPWD() {
			return adminPWD;
		}
		public void setAdminPWD(String adminPWD) {
			this.adminPWD = adminPWD;
		}
		@Override
		public String toString() {
			return "Admin [adminID=" + adminID + ", adminName=" + adminName + ", adminPWD=" + adminPWD + "]";
		}

}
