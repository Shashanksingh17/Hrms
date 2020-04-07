<%@page import="projectpackage.DbManager"%>
<%
String notificationtext=request.getParameter("notificationtext");
DbManager db=new DbManager();
String posteddate=db.gateDate();
String query="insert into notification(notificationtext,posteddate) values('"+notificationtext+"','"+posteddate+"')";
if(db.executeNonQuery(query))
{
    out.print("<script>('Notification is saved');window.location.href='../adminhome.jsp';</script>");
}
else
{
    out.print("<script>('Notification is not saved');window.location.href='../adminhome.jsp';</script>");
}

%>