<%@page import="projectpackage.DbManager"%>
<%
String capcode=request.getParameter("capcode");
String captchacode=request.getParameter("captchacode");
if(capcode.equals(captchacode))
{
  String password=request.getParameter("password");
  String confirmpassword=request.getParameter("confirmpassword");
  if(password.equals(confirmpassword))
  {
   //code for registration 
      String empid=request.getParameter("empid");
      String empname=request.getParameter("empname");
      String gender=request.getParameter("gender");
      String fathername=request.getParameter("fathername");
      String address1=request.getParameter("address1");
      String address2=request.getParameter("address2");
      int  zipcode=Integer.parseInt(request.getParameter("zipcode"));
      String doj=request.getParameter("doj");
      String department=request.getParameter("department");
      String designation=request.getParameter("designation");
      String contactno=request.getParameter("contactno");
      String  emailaddress=request.getParameter("emailaddress");
      String adharno=request.getParameter("adharno");
      String panno=request.getParameter("panno");
      DbManager db=new DbManager();
      String status="false";
      String query1="insert into empinfo values( '"+empid+"','"+empname+"','"+gender+"','"+fathername+"','"+address1+"','"+address2+"','"+zipcode+"','"+doj+"','"+department+"','"+designation+"','"+contactno+"','"+emailaddress+"','"+adharno+"','"+panno+"','"+password+"','"+status+"')";
      String query2="insert into login values('"+empid+"','"+password+"','user')"; 
      if(db.executeNonQuery(query1)==true)
      {
          //registration done
          if(db.executeNonQuery(query2)==true)
          {
               out.print("<script>alert('Registration is successfull');window.location.href='../registration.jsp';</script>");
          }
              
              
      }
      else
      {
        out.print("<script>alert('Registration is not successfull');window.location.href='../registration.jsp';</script>");   
      }
      
      
  
  } 
  
  
  else
  {
    out.print("<script>alert('password is not matched');window.location.href='../registration.jsp';</script>");   
  }
      
      
}
else
{
    out.print("<script>alert('invalide captchacode');window.location.href='../registration.jsp';</script>");
}




%>