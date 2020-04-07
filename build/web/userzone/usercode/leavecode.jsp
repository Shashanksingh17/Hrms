<%@page import="projectpackage.DbManager"%>
<%
    
String empname=request.getParameter("empname");
String fromdate=request.getParameter("fromdate");
String todate=request.getParameter("todate");
String cause=request.getParameter("cause");
String applydate=request.getParameter("applydate");
DbManager db=new DbManager();
String query="insert into myleave(empname,fromdate,todate,cause,applydate) values ('"+session.getAttribute("uname")+"','"+fromdate+"','"+todate+"','"+cause+"','"+applydate+"')";
//out.print(query);
if(db.executeNonQuery(query))
 
 {
     
     out.print("<script>alert('your leave is submitted');window.location.href='../leave.jsp';</script>");
 }
      else
 {
      out.print("<script>alert('your leave is not submitted');window.location.href='../leave.jsp';</script>");
 }
                 

%>


