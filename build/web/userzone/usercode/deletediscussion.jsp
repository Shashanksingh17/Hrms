
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="projectpackage.DbManager"%>
<%
    try
    {
String id=request.getParameter("id");
String q="delete from question where qid='"+id+"'";
DbManager db=new DbManager();
String msg=(db.executeNonQuery(q)==true)?"discussion is deleted ":"discussion is not deleted";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmsdb","root",""); 
  PreparedStatement pre=con.prepareStatement(q);
 int x=pre.executeUpdate();
 if(x==0)
 {
    out.print( "<script>alert('deleted');window.location.href='../postquestion.jsp'</script>");
 }
 else
 {
     out.print("not deleted ");
 }
  }
    catch(Exception e)
    {
        out.print(e);
    }
%>























