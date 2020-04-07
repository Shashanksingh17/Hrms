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
        <form>
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <img src="../images/a.jpg" style="height: 700px;width: 1000px;"> 
                </div>
                <%@include file="userfooter.jsp"%>
            </div>
        </form>
       
    </body>
</html>
<%
    
}

%>