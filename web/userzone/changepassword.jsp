<%--
    Document   : userhome
    Created on : Jul 21, 2018, 5:36:35 PM
    Author     : Shashank Shekhar
--%>
<%
if(session.getAttribute("userid")==null)
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
        <title>JSP Page</title>
        <link href="../css/userstyle.css" rel="stylesheet" />
         <link href="../css/user_menu.css" rel="stylesheet" />
    </head>
    <body background="../images/ab.jpg">
        <form action="usercode/changepasswordcode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                     <div style="height: 50px;"></div>
                    <div id="changepwdbox" style="margin-top: 200px;">
                     <table border="0" style="width: 50%;margin: 0 auto;color: white;">
                           <tr>
                               
                               <td colspan="2" style="font-size: 30px;color: white;text-align: center;">Change Password</td>
                               </tr>
                               <tr>
                                   <td>Enter Old Pwd</td>
                                   <td><input type="password" name="oldpassword" required /></td>
                                   </tr> 
                                  <tr>
                                   <td>Enter New Pwd</td>
                                   <td><input type="password" name="newpassword" required /></td>
                                   </tr> 
                                     <tr>
                                   <td>Enter Confirm Pwd</td>
                                   <td><input type="password" name="confirmpassword" required /></td>
                                   </tr> 
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="Change password" /></td>
                                       </tr>
                    </table>
                    </div>
                    
                    </div>
                <%@include file="userfooter.jsp"%>
            </div>
        </form>
       
    </body>
</html>
<%
    
}

%>