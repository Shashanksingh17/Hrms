<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String q="delete from department where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(q)==true)?"Department is deleted ":"Department is not deleted";


%>
<script>
    alert('<%=msg%>');window.location.href="../adddepartment.jsp";
    
</script>
