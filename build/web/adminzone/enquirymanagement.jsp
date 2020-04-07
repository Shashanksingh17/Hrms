<%-- 
    Document   : adminhome
    Created on : Jul 21, 2018, 5:37:28 PM
    Author     : Shashank Shekhar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
if(session.getAttribute("adminid")==null)
{
    response.sendRedirect("../login.jsp");
}
else
{

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/admin_style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/admin_menu.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body background="../images/ab.jpg">
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                   <h1 style="text-align: center; color:blueviolet">Enquiry Management</h1> 
                   <table border="1" style="width: 80%; margin: 0px auto;">
                       <tr>
                           <th>Sno.</th>
                           <th>Name</th>
                           <th>Gender</th>
                           <th>Address</th>
                           <th>Contact No</th>
                           <th>Email Address</th>
                           <th>Enquiry Text</th>
                           <th>Enquiry Date</th>
                           <th>Delete</th>
                           
                       </tr>
                       <%
                       
                       String q="select * from enquiry";
                       DbManager db=new DbManager();
                       ResultSet rs=db.selectQuery(q);
                       int n=1;
                       while(rs.next())
                       {
                 
                       %>
                       <tr>
                        <td><%=n%></td>
                         <td><%=rs.getString(2)%></td>
                         <td><%=rs.getString(3)%></td>
                         <td><%=rs.getString(4)%></td>
                         <td><%=rs.getString(5)%></td>
                         <td><%=rs.getString(6)%></td>
                         <td><%=rs.getString(7)%></td>
                         <td><%=rs.getString(8)%></td>
                         <td><a href="admincode/deleteenquirycode.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                         
                       </tr>
                       <% 
                       n++;
                       }
                       %>
                   </table>
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>
            
            
        </form>
    </body>
</html>
<% 

}
%>


