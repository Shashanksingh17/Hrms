<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
     <ul>
              <li><a href="userhome.jsp" >Home</a></li>
              <li><a href="postquestion.jsp" >Discussion</a></li>
		<li><a href="complain.jsp" >Complain</a></li>
	    <li><a href="feedback.jsp" >Feedback</a></li>
	 <li><a href="changepassword.jsp" >Change Pwd</a></li>
          <li><a href="leave.jsp" >Leave</a></li>
	    <li><a href="logout.jsp" >Logout</a></li>	
        
      </ul>
</div>
<div id="user_header">
    <div id="user_logo">
        <img src="../images/logo.jpeg" style="height: 150px;width: 150px;">
    </div>
     <div id="sitetitle">MARC Labs. Ltd.</div>
</div>
<div id="info">
    <div id="date">
        <%
        DbManager db=new DbManager();
        String dt=db.gateDate();
        
        %>
        Today date:<%=dt%>
    </div>
    <div id="name">
        <%
        String userid=session.getAttribute("userid").toString();
        String query="select empname from empinfo where empid='"+userid+"'";
        ResultSet rs=db.selectQuery(query);
        String empname="";
        if(rs.next()==true)
        {
            empname=rs.getString(1);
            session.setAttribute("uname", empname);
        }
        %>
     Hello,<%=empname %>
    </div>
</div>
