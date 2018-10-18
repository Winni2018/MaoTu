<jsp:useBean id="userdao" class="com.MaoTu.Dao.AdminDao"></jsp:useBean>
<%
//接收前台页面传来的数据 进行验证
 String adminName=request.getParameter("adminName");
 String adminPWD=request.getParameter("adminPWD");
out.println(userdao.getLogin(adminName, adminPWD));
%>
