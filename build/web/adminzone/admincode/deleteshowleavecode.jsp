<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String q="delete from myleave where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(q)==true)?"leave is deleted ":"leave is not deleted";


%>
<script>
    alert('<%=msg%>');window.location.href="../showleave.jsp";
    
</script>