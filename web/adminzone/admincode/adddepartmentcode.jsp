<%@page import="projectpackage.DbManager"%>
<%
String departmentname=request.getParameter("departmentname");
DbManager db=new DbManager();
String query="insert into department(departmentname) values ('"+departmentname+"')";
if(db.executeNonQuery(query))
{
    out.print("<script>alert('Department is added');window.location.href='../adddepartment.jsp';</script>");
    
}
else
{
  out.print("<script>alert('Department is not added');window.location.href='../adddepartment.jsp';</script>");   
}
%>