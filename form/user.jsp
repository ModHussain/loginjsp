<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>Selecting Publishers From a Database</TITLE>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
    </HEAD>

    <BODY>
        <H1>Registered Candidates</H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/fform","root","");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from std") ; 
        %>
<div class="container">
        <TABLE BORDER="0" table class="table table-striped">
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
            <% } %>
        </TABLE></div>
    </BODY>
</HTML>
