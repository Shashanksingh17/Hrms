<%@page import="projectpackage.DbManager"%>
<%
String oldpassword=request.getParameter("oldpassword");
String newpassword=request.getParameter("newpassword");


String confirmpassword=request.getParameter("confirmpassword");

out.print(oldpassword+"  "+newpassword+"  "+confirmpassword);

if(newpassword.equals(confirmpassword))
{
   String userid=session.getAttribute("userid").toString();
   String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
  // out.print(query);
   DbManager db=new DbManager();
   if(db.executeNonQuery(query))
   {
      out.print("<script>alert('password is changed');window.location.href='../changepassword.jsp;'</script>"); 
   }
   else
   {
      out.print("<script>alert('password is not changed');window.location.href='../changepassword.jsp;'</script>"); 
   }
       
}
else
{
     out.print("<script>alert('password is not matched');window.location.href='../changepassword.jsp;'</script>");
}

%>