<%@page import="projectpackage.DbManager"%>
<%
String empname=request.getParameter("empname");
String subject=request.getParameter("subject");
String complaintext=request.getParameter("complaintext");
DbManager db=new DbManager();
String complaindt=db.gateDate();
String query="insert into  complain(name,subject,complaintext,complaindt) values ('"+empname+"','"+subject+"','"+complaintext+"','"+complaindt+"')";
//out.print(query);

if(db.executeNonQuery(query))  
{
     out.print("<script>alert('complain Submitted');window.location.href='../complain.jsp;'</script>");
    
}
else
{
    out.print("<script>alert('complain  is not Submitted');window.location.href='../complain.jsp;'</script>"); 
}
    

%>