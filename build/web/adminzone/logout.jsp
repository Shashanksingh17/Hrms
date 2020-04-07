<%-- 
    Document   : logout
    Created on : Jul 24, 2018, 6:46:57 PM
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
        <title>LoGoUt</title>
        <script>
              function logout();
            {
               window.history.forward();
              //  window.setTimeout("window.location.href='../index.jsp';",1000);
                
            }
             <%
        response.sendRedirect("../index.jsp");
        %>
            
        </script>
    </head>
    <body onload="logout" bgcolor="black">
       
    </body>
</html>
