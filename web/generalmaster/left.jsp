<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="left">
    <h2 style="text-align: center"><b>Notification</b></h2>
    <hr/>
    <marquee direction="up" height="600" >
    <%
    DbManager db=new DbManager();
    ResultSet rs=db.selectQuery("select * from notification");
    while(rs.next())
    {
  %>
  <center>
  
  <p><%=rs.getString(2)%></p>
  <p><b>Posted Date</b></p>
  <p><%=rs.getString(3)%></p>  
  <hr/>
</center>
  <%
  
    }

%>
    </marquee>
</div>
