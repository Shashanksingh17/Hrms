<%-- 
    Document   : adminhome
    Created on : Jul 21, 2018, 5:37:28 PM
    Author     : Shashank Shekhar
--%>
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
        <form action="admincode/changeadminpwdcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    <div id="changepaaswordbox">
                    <h1 style="color: white;text-align: center;">Change Password</h1>
                    
                  <table  style="width: 50%;margin: 0 auto;">
                          
                               <tr>
                                   <td>Enter Old Password</td>
                                   <td><input type="password" name="oldpassword" required /></td>
                                   </tr> 
                                  <tr>
                                   <td>Enter New Password</td>
                                   <td><input type="password" name="newpassword" required /></td>
                                   </tr> 
                                     <tr>
                                   <td>Enter Confirm Password</td>
                                   <td><input type="password" name="confirmpassword" required /></td>
                                   </tr> 
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="Change password" /></td>
                                       </tr>
                    </table>  
                    </div>
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>
            
            
        </form>
    </body>
</html>
<% 

}
%>


