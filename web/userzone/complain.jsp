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
        <form action="usercode/complaincode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <div style="height: 50px;"></div>
                   <div id="complainbox" style="margin-top: 200px; ">
                    <table style="margin: 0 auto;width: 70%;row-spacing:20px;" >
                        <tr>
                        <td colspan="2" style="color: black;text-align: center;font-size: 40px;">Complain Form</td>
                        </tr>
                        <tr>
                        <td>Enter Subject :</td>
                        <td><input type="text" name="subject" required /></td>
                        </tr>
                        <tr>
                        <td>Enter Complain Text :</td>
                        <td><textarea name="complaintext" required style="resize: none" ></textarea></td>
                        </tr>
                            <tr>
                                <td>
                                    <input type="hidden" name="empname" value="<%=empname%>" />
                        </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        <td><input type="submit" value="Submit Complain"></td>
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