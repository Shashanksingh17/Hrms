<%@page import="projectpackage.DbManager"%>
<%
String empname=request.getParameter("empname");
String questiontext=request.getParameter("questiontext");
DbManager db=new DbManager();
String posteddt=db.gateDate();
String query="insert into  question(questiontext,postedby,posteddt) values('"+questiontext+"','"+empname+"','"+posteddt+"')";
if(db.executeNonQuery(query))
{
     out.print("<script>alert('question is posted');window.location.href='../postquestion.jsp;'</script>");
}
else
{
    out.print("<script>alert('question  is not posted');window.location.href='../postquestion.jsp;'</script>"); 
}
    
%>
