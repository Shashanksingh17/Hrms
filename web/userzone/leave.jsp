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
        <form action="usercode/leavecode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                      <div style="height: 50px;"></div>
                    <div id="leavebox" style="margin-top: 200px;">
                    <table style="width: 60%;margin: 0 auto;">
                           <tr>
                               
                               <td colspan="2" style="font-size: 25px;color: white;text-align: center;">Leave Form</td>
                               </tr>
                                <tr>
                                   <td>Enter from date</td>
                                   <td><input type="date" name="fromdate" required /></td>
                                   </tr>
                               <tr>
                                   <td>Enter to date</td>
                                   <td><input type="date" name="todate" required /></td>
                                   </tr>
                                    <tr>
                                   <td>Cause</td>
                                   <td><input type="text" name="cause" required /></td>
                                   </tr>
                                    <tr>
                                   <td>Enter Apply Date</td>
                                   <td><input type="date" name="applydate" required /></td>
                                   </tr>
                                 
                                   
                                  
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="submit"></td>
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