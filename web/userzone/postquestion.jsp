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
        <form action="usercode/postquestioncode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <div id="postquestionbox">
                    <table style="margin: 0px auto;width: 50%">
                          <tr>
                        <td colspan="2" style="color: black;text-align: center;font-size: 30px;">Discussion Forum</td>
                        </tr>
                        <tr>
                       
                          <tr>
                        <td>Enter Question:</td>
                        <td><textarea name="questiontext" required></textarea></td>
                    </tr>
                     <tr>
                                <td>
                                    <input type="hidden" name="empname" value="<%=empname%>"/>
                        </td>
                         <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="post question" /></td>
                                       </tr>
                   </table>
                        </div>
                        <br/><br/>
                        
                       
                         <div id="postquestionbox1">
                        <table border="1" style="width:60%; margin: 0px auto;">
                            <tr>
                                <th>Q.Id</th>
                            <th>Question</th>
                            <th>Posted By</th>
                            <th>Posted date</th>
                            <th>post Answer</th>
                            <th>View Answer</th>
                            <th>Delete</th>
                            </tr>
                            <%
                            rs=db.selectQuery("select * from question");
                            while(rs.next())
                            {
                                
                            
                        %>
                        <tr>
                           <td><%=rs.getInt(1)%></td> 
                           <td><%=rs.getString(2) %></td>
                             <td><%=rs.getString(3) %></td>
                               <td><%=rs.getString(4) %></td>
                               <td><a href="postanswer.jsp?qid=<%=rs.getInt(1)%>">post</a></td>
                               <td><a href="viewanswer.jsp?qid=<%=rs.getInt(1)%>">View</a></td>
                                <td><a href="usercode/deletediscussion.jsp?id=<%=rs.getInt(1)%>" >Delete</a></td>
                        </tr>
                     <%  } %>
                        </table>
                        </div>
                    </div>
                <%@include file="userfooter.jsp"%>
            
        </form>
       
    </body>
</html>
<%
    
}

%>