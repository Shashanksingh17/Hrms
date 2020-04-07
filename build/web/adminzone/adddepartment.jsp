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
        <form action="admincode/adddepartmentcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    <div id="adddepartmentbox">
                    <h1 style="color: white;text-align: center;">Add Department</h1>
                    <table style="widows: 50%; margin: 0 auto;">
                        <tr>
                            <td>Enter Department</td>
                            <td><input type="text" name="departmentname" required /></td>
                            
                        </tr>
                          <tr>
                              <td>&nbsp;</td>
                            <td><input type="submit" value="Add" /></td>
                            
                        </tr>
                  </table>
                    </div>
                    <br/><br/>
                    <table border="1" style="margin: 0 auto;width: 50%">
                        <tr>
                            <th>Id </th>
                            <th>Department Name</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        DbManager db=new DbManager();
                        ResultSet rs=db.selectQuery("select * from department");
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                             <td><%=rs.getString(2)%></td>
                              <td><a href="admincode/deletedepartment.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                           
                              
                        </tr>
                        <% 
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


