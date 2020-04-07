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
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>
            
            
        </form>
    </body>
</html>
<% 

}
%>


