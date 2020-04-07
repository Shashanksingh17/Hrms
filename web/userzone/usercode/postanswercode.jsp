<%@page import="projectpackage.DbManager"%>
<%
String answertext=request.getParameter("answertext");
String empname=request.getParameter("empname");
DbManager db=new DbManager();
String posteddt=db.gateDate();
int qid=Integer.parseInt(request.getParameter("qid"));
String query="insert into  answer(answertext,answeredby,posteddt,qid) values('"+answertext+"','"+empname+"','"+posteddt+"','"+qid+"')";
if(db.executeNonQuery(query))
{
     out.print("<script>alert('Answer is posted');window.location.href='../postquestion.jsp;'</script>");
}
else
{
    out.print("<script>alert('Answer  is not posted');window.location.href='../postquestion.jsp;'</script>"); 
}
    
%>