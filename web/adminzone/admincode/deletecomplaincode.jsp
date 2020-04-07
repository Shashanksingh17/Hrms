<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String q="delete from complain where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(q)==true)?"Complain is deleted ":"Complain is not deleted";


%>
<script>
    alert('<%=msg%>');window.location.href="../admincomplain.jsp";
    
</script>