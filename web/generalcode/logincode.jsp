<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<% 
String userid=request.getParameter("userid");
String password=request.getParameter("password");
DbManager db=new DbManager();
  String query="select usertype from login where userid='"+userid+"' and password='"+password+"'";
  //out.print(query);
  ResultSet rs=db.selectQuery(query);
  if(rs.next()==true)
  {
     // out.println("<h1>Valid User</h1>");
      String usertype=rs.getString(1);
      if(usertype.equals("user"))
      {
     //Redirect to userzone
          session.setAttribute("userid", userid);
        response.sendRedirect("../userzone/userhome.jsp");
        
        
      }
      else if(usertype.equals("admin"))
              {
               //  Redirect to adminzone
                   session.setAttribute("adminid", userid);
                  response.sendRedirect("../adminzone/adminhome.jsp");
              }
  }
  else
  {
     // out.println("<h1>Invalid User</h1>");
      out.println("<script>alert('invalid user');window.location.href='../login.jsp'</script>");
  }
  
  
  

%>