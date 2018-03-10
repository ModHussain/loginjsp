<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY>
        <H1>Fetching Data From a Database</H1>

        <% 
            Connection connection = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/fform","root","");

            Statement statement = connection.createStatement();

            String id = request.getParameter("id");  

            ResultSet resultset = 
                statement.executeQuery("select * from std where name = '" + id + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find. ");
            } else {
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>Name</TH>
                <TH>email</TH>
                <TH>Mail</TH>
                <TH>Course</TH>
                <TH>Qualification</TH>
                <TH>fee</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                 <TD> <%= resultset.getString(6) %></TD>
            </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
   }
    </BODY>
</HTML>
