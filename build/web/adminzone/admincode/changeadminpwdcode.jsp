<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    DbManager db=new DbManager();
String adminid=session.getAttribute("adminid").toString();
String oldpassword=request.getParameter("oldpassword");
String newpassword=request.getParameter("newpassword");
String confirmpassword=request.getParameter("confirmpassword");
if(newpassword.equals(confirmpassword))
{
   
   String query="select password from login where userid='"+adminid+"'"; 
   ResultSet rs=db.selectQuery(query);
   if(rs.next())
   {
       String respassword=rs.getString(1);
       if(respassword.equals(oldpassword))
       {
           query="update login set password='"+newpassword+"' where userid='"+adminid+"'";
           if(db.executeNonQuery(query))
           {
            out.print("<script>alert(' password is  changed');window.location.href='../changeadminpwd.jsp;'</script>");    
           }
           else
           {
               out.print("<script>alert('password is not changed');window.location.href='../changeadminpwd.jsp;'</script>"); 
           }
       }
       else
       {
        out.print("<script>alert('old password is not matched');window.location.href='../changeadminpwd.jsp;'</script>");   
       }
       
   }
  
  
}
else
{
    out.print("<script>alert('password is not matched');window.location.href='../changeadminpwd.jsp;'</script>");
}
%>