<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String q="delete from feedback where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(q)==true)?"feedback is deleted ":"feedback is not deleted";


%>
<script>
    alert('<%=msg%>');window.location.href="../adminfeedback.jsp";
    
</script>