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
        <form>
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <div style="height: 50px;"></div>
                      <div id="viewanswerbox" style="margin-top: 200px;">
                      <table style="margin:0 auto;width: 50%" border="1">
                          <tr>
                        <th>Answer</th>
                            <th>Answered By</th>
                            <th>Posted Date</th>
                    </tr>
                    <%
                     int qid=Integer.parseInt(request.getParameter("qid")); 
                     query="select answertext,answeredby,posteddt from answer where qid='"+qid+"'";
                     
                     rs=db.selectQuery(query);
                     while(rs.next())
                     {
                    %>
                    <tr>
                        
                         <td><%=rs.getString(1)%></td> 
                           <td><%=rs.getString(2) %></td>
                             <td><%=rs.getString(3) %></td>
                        
                    </tr>
                    <%
                     }
                    %>
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