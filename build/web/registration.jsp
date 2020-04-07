<%-- 
    Document   : index
    Created on : Jul 16, 2018, 5:25:48 PM
    Author     : Shashank Shekhar
--%>

<%@page import="projectpackage.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HRMS For Marc</title>
        <link href="css/generalstyle.css" rel="stylesheet"/>
        <link href="css/menu.css" rel="stylesheet"/>
        <script>
var imgArr=["images/aiims2.jpg" ,"images/h1.png","images/h2.jpg" , "images/h3.jpg" ,"images/h4.jpg" ,"images/h5.jpg" ,"images/h6.jpg","images/h7.jpg",
    "images/h8.jpg","images/a.jpg","images/a1.jpg","images/a3.jpg","images/aiims.jpg" ,"images/aiims1.jpg" ,"images/aiims3.jpg" ,"images/aiims4.jpg"];
var index=0;
function moveslider()
{

var image=document.getElementById("img1");
image.src=imgArr[index];
index++;
if(index==imgArr.length){
index=0;
}
window.setTimeout("moveslider()",2000);


}
</script>
        </head>

    <body onload="moveslider()" background="images/ab.jpg">
        <form action="generalcode/registrationcode.jsp" method="post">
           <div id="wrapper">
               <%@include file="generalmaster/head.jsp"%>
               <div id="container">
                   <%@include file="generalmaster/left.jsp" %>
                   <div id="main">
                        <img src="images/a.jpg" style="height:800px; width: 700px;" /> 
                       <div id="loginbox" style="margin-top: -760px;margin-left:270px;background-color: red;height: 200px;width: 400px; ">
                         <table border="2" style="margin-top: 80px;width: 80%;margin: 0 auto;">
                           <tr>
                               
                               <td colspan="2" style="font-size: 25px;color: blue;text-align: center;">Registration Form</td>
                               </tr>
                                <tr>
                                   <td>Enter employee id</td>
                                   <td><input type="text" name="empid" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                               <tr>
                                   <td>Enter employee name</td>
                                   <td><input type="text" name="empname" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                                   <tr>
                                   <td>Select Gender</td>
                                   <td>
                                       <input type="radio" name="gender" value="Male" style="border-radius:10px 0px 10px 0px">Male
                                       <input type="radio" name="gender" value="Female" style="border-radius:10px 0px 10px 0px">Female
                                        
                                   </td>
                                   </tr>
                                    <tr>
                                   <td>Enter Father's Name</td>
                                   <td><input type="text" name="fathername" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                     
                                    <tr>
                                   <td>Enter Address1</td>
                                   <td><textarea name="address1" style="border-radius:10px 0px 10px 0px"></textarea></td>
                                   
                                   </tr>
                                    <tr>
                                   <td>Enter Address2</td>
                                   <td><textarea name="address2" style="border-radius:10px 0px 10px 0px"></textarea></td>
                                   
                                   </tr>
                                    <tr>
                                   <td>Enter Zip code</td>
                                   <td><input type="number" name="zipcode" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                                   <tr>
                                   <td>Enter date of joining</td>
                                   <td><input type="date" name="doj" style="border-radius:10px 0px 10px 0px" required></td>
                                   </tr>
                                   
                                  
                                        <tr>
                                       <td>Enter department</td>
                                       <td><select name="department" style="border-radius:10px 0px 10px 0px">
                                               <%
                                               rs=db.selectQuery("select * from department");
                                               while(rs.next())
                                               {
                                              %>
                                               <option><%=rs.getString(2)%></option>
                                               <%
                                               }
                                               %>
                                           </select></td>
                                              <tr>
                                   <td>Enter designation</td>
                                   <td><input type="text" name="designation" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                                       
                                        <tr>
                                   <td>Enter Contact Number</td>
                                   <td><input type="number" name="contactno" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                                 <tr>
                                       <td>Enter Email Address</td>
                                       <td><input type="email" name="emailaddress" style="border-radius:10px 0px 10px 0px" required /></td>
                                       </tr>
                                        <tr>
                                       <td>Enter Aadhar number</td>
                                       <td><input type="number" name="adharno" style="border-radius:10px 0px 10px 0px" required/></td>
                                       </tr>
                                        <tr>
                                       <td>Enter PAN number</td>
                                       <td><input type="number" name="panno" style="border-radius:10px 0px 10px 0px" /></td>
                                       </tr>
                                  <tr>
                                       <td>Enter Password</td>
                                       <td><input type="password" name="password" style="border-radius:10px 0px 10px 0px" required=""></td>
                                       </tr>
                                         <tr>
                                       <td>Enter Confirm Password</td>
                                       <td><input type="password" name="confirmpassword" style="border-radius:10px 0px 10px 0px" required=""></td>
                                       </tr>
                                         <tr>
                                            <td>Captcha Code</td>
                                            <td>
                                                <%
                                                CaptchaGenerator cg=new CaptchaGenerator();
                                                String capcode=cg.getCode();
                                                
                                                
                                                
                                                %>
                                                <h3 style="background-color: burlywood"><%=capcode%></h3>
                                                <input type="hidden" name="capcode" value="<%=capcode%>"/>
                                            </td>
                                      </tr>
                                     <tr>
                                            <td>Enter Captcha Code</td>
                                            <td><input type="text" name="captchacode" style="border-radius:10px 0px 10px 0px" required=""></td>
                                      </tr>
                                       <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="submit" style="border-radius:10px; background-color: aqua; height: 25px;width: 80px"></td>
                                       </tr>
                   </table>
                       </div>
              </div> 
               </div>
                   <%@include file="generalmaster/foot.jsp" %>
           </div>
           </form>
    </body>
</html>
 