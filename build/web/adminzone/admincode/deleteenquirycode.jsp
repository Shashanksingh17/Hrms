<%@page import="projectpackage.DbManager"%>
<%
String id=request.getParameter("id");
String q="delete from enquiry where id='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(q)==true)?"Enquiry is deleted ":"Enquiry is not deleted";


%>
<script>
    alert('<%=msg%>');window.location.href="../enquirymanagement.jsp";
    
</script>