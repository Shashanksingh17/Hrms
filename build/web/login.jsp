<%-- 
    Document   : index
    Created on : Jul 16, 2018, 5:25:48 PM
    Author     : Shashank Shekhar
--%>

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
        <form action="generalcode/logincode.jsp" method="post">
           <div id="wrapper">
               <%@include file="generalmaster/head.jsp"%>
               <div id="container">
                   <%@include file="generalmaster/left.jsp" %>
                   <div id="main">
                             <img src="images/s5.jpg" style="height:800px; width: 700px;" /> 
                       <div id="loginbox" style="margin-top: -550px;margin-left:300px;height: 200px;width: 400px;background-color: red;">
                        <table border="1" style="margin: 0 auto;margin-top: 80px;width: 80% ">
                           <tr>
                               
                               <td colspan="2" style="font-size: 25px;color: blue;text-align: center;">Please Login Here</td>
                               </tr>
                                <tr>
                                   <td>Enter user id</td>
                                   <td><input type="text" name="userid" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                                <tr>
                                   <td>Enter password</td>
                                   <td><input type="password" name="password" style="border-radius:10px 0px 10px 0px" required /></td>
                                   </tr>
                                    <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="submit" style="border-radius: 10px;height: 25px;background-color: aqua;width: 70px"></td>
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
 