<%@page import="projectpackage.DbManager"%>
<%
String empname=request.getParameter("empname");
String feedbacktext=request.getParameter("feedbacktext");
DbManager db=new DbManager();
String feedbackdt=db.gateDate();
String query="insert into  feedback(name,feedbacktext,feedbackdt) values('"+empname+"','"+feedbacktext+"','"+feedbackdt+"')";
if(db.executeNonQuery(query))
{
     out.print("<script>alert('Feedback Submitted');window.location.href='../feedback.jsp;'</script>");
}
else
{
    out.print("<script>alert('Feedback  is not Submitted');window.location.href='../feedback.jsp;'</script>"); 
}
    

%>