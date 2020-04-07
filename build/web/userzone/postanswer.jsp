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
    <body>
        <form action="usercode/postanswercode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                     <div style="height: 50px;"></div>
                      <div id="postanswerbox" style="margin-top: 200px;">
                     <table style="margin:0 auto;width: 50%">
                          <tr>
                        <td colspan="2" style="color: blue;text-align: center;font-size: 30px;">Discussion Forum</td>
                        </tr>
                        <tr>
                        <td>Enter the Answer :</td>
                        <td><textarea name="answertext" required></textarea></td>
                    </tr>
                    
                          <tr>
                                       <td> 
                                           <input type="hidden" name="empname" value="<%=empname%>"/>
                                       <%
                                       int qid=Integer.parseInt(request.getParameter("qid"));                                       
                                       
                                       %>
                                       <input type="hidden" name="qid" value="<%=qid%>"/>
                                       </td>
                                       <td><input type="submit" value="post Answer" /></td>
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