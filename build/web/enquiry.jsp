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
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    </head>
    <body onload="moveslider()" background="images/ab.jpg">
        <form action="generalcode/enquirycode.jsp" method="post">
           <div id="wrapper">
               <%@include file="generalmaster/head.jsp"%>
               <div id="container">
                   <%@include file="generalmaster/left.jsp" %>
                   <div id="main">
                         <img src="images/a.jpg" style="height:800px; width: 700px;" /> 
                       <div id="loginbox" style="margin-top: -470px;margin-left:270px;background-color: red;height: 200px;width: 400px; ">
                       <table border="1" style="margin-top: 80px;width: 80%;margin: 0 auto;">
                           <tr>
                               
                               <td colspan="2" style="font-size: 25px;color: blue;text-align: center;">Please Enquiry Here</td>
                               </tr>
                               <tr>
                                   <td>Enter your name</td>
                                   <td><input type="text" name="name" style="border-radius:10px 0px 10px 0px" required></td>
                                   </tr>
                                   <tr>
                                   <td>Select Gender</td>
                                   <td>
                                       <input type="radio" name="gender" value="Male" style="border-radius:10px 0px 10px 0px">Male
                                       <input type="radio" name="gender" value="Female" style="border-radius:10px 0px 10px 0px">Female
                                        
                                   </td>
                                   </tr>
                                    <tr>
                                   <td>Enter Address</td>
                                   <td><textarea name="address" style="border-radius:10px 0px 10px 0px"></textarea></td>
                                   
                                   </tr>
                                   <tr>
                                       <td>Enter contact no</td>
                                       <td><input type="number" name="contactno" style="border-radius:10px 0px 10px 0px" required></td>
                                       </tr>
                                  <tr>
                                       <td>Enter Email Address</td>
                                       <td><input type="email" name="emailaddress" style="border-radius:10px 0px 10px 0px" required></td>
                                       </tr>
                                  <tr>
                                       <td>Enter Enquiry Text</td>
                                       <td><textarea name="enquirytext" style="border-radius:10px 0px 10px 0px"></textarea></td>
                                       </tr>
                                       
                                        <tr>
                                       <td>&nbsp;</td>
                                       <td><input type="submit" value="submit" style="border-radius:10px;background-color: aqua;height: 25px;width: 90px;"></td>
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
 