<%-- 
    Document   : logout
    Created on : Jul 22, 2018, 5:09:45 PM
    Author     : Shashank Shekhar
--%>
<%
session.invalidate();

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout();
            {
                window.history.forward();
                //window.setTimeout("window.location.href='../index.jsp'",1000);
                
            }
            
        </script>
        <%
        response.sendRedirect("../index.jsp");
        %>
    </head>
    <body onload="logout()" bgcolor="cyan">
        
    </body>
</html>
