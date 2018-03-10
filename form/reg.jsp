<%@page import="java.sql.*"%>
<%
	
	int fee;
	String name,email,qf,course;
%>
<%
	name=request.getParameter("name");
	course=request.getParameter("course");
	String mob=request.getParameter("mob");
	email=request.getParameter("email");
	qf=request.getParameter("qf");
	fee=Integer.parseInt(request.getParameter("fee"));
%>
<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fform","root","");
		Statement st=cn.createStatement( );
		st.execute("insert into std values('"+name+"','"+email+"',"+mob+",'"+course+"','"+qf+"',"+fee+")");
		out.println("inserted");
	}
	catch(Exception e)
	{
	}
%>
