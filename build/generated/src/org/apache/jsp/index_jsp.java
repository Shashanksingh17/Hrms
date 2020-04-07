package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import projectpackage.DbManager;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/generalmaster/head.jsp");
    _jspx_dependants.add("/generalmaster/left.jsp");
    _jspx_dependants.add("/generalmaster/foot.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>HRMS For Marc</title>\n");
      out.write("        <link href=\"css/generalstyle.css\" rel=\"stylesheet\"/>\n");
      out.write("        <link href=\"css/menu.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script>\n");
      out.write("var imgArr=[\"images/aiims2.jpg\" ,\"images/h1.png\",\"images/h2.jpg\" , \"images/h3.jpg\" ,\"images/h4.jpg\" ,\"images/h5.jpg\" ,\"images/h6.jpg\",\"images/h7.jpg\",\n");
      out.write("    \"images/h8.jpg\",\"images/a.jpg\",\"images/a1.jpg\",\"images/a3.jpg\",\"images/aiims.jpg\" ,\"images/aiims1.jpg\" ,\"images/aiims3.jpg\" ,\"images/aiims4.jpg\"];\n");
      out.write("var index=0;\n");
      out.write("function moveslider()\n");
      out.write("{\n");
      out.write("\n");
      out.write("var image=document.getElementById(\"img1\");\n");
      out.write("image.src=imgArr[index];\n");
      out.write("index++;\n");
      out.write("if(index==imgArr.length){\n");
      out.write("index=0;\n");
      out.write("}\n");
      out.write("window.setTimeout(\"moveslider()\",2000);\n");
      out.write("\n");
      out.write("\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body onload=\"moveslider()\" background=\"images/ab.jpg\">\n");
      out.write("     \n");
      out.write("       <form>\n");
      out.write("           <div id=\"wrapper\">\n");
      out.write("               ");
      out.write("<div id=\"menu\">\n");
      out.write("      <ul>\n");
      out.write("          <li><a href=\"index.jsp\" style=\"margin-left: 130px;\">HOME</a></li>\n");
      out.write("\t\t<li><a href=\"aboutus.jsp\" >ABOUT US</a></li>\n");
      out.write("\t   \n");
      out.write("\t    <li><a href=\"registration.jsp\" >REGISTRATION</a></li>\n");
      out.write("\t <li><a href=\"login.jsp\" >LOGIN</a></li>\n");
      out.write("\t    <li><a href=\"enquiry.jsp\" >ENQUIRY</a></li>\t\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write(" \n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("<div id=\"header\">\n");
      out.write("    <div id=\"logo\">\n");
      out.write("        <img src=\"images/logo.jpeg\" style=\"height: 150px;width: 150px;\" />\n");
      out.write("    </div>\n");
      out.write("    <div id=\"banner\">\n");
      out.write("       <img src=\"images/s1.jpg\" style=\"height:150px; width: 850px;\" /> \n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"slider\">\n");
      out.write("   <img src=\"d.jpg\" id=\"img1\" style=\"border:0px solid ; height:250px; width:1000px\"/>\n");
      out.write("\n");
      out.write("</div>");
      out.write("\n");
      out.write("               <div id=\"container\">\n");
      out.write("                   \n");
      out.write("                   ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"left\">\r\n");
      out.write("    <h2 style=\"text-align: center\"><b>Notification</b></h2>\r\n");
      out.write("    <hr/>\r\n");
      out.write("    <marquee direction=\"up\" height=\"600\" >\r\n");
      out.write("    ");

    DbManager db=new DbManager();
    ResultSet rs=db.selectQuery("select * from notification");
    while(rs.next())
    {
  
      out.write("\r\n");
      out.write("  <center>\r\n");
      out.write("  \r\n");
      out.write("  <p>");
      out.print(rs.getString(2));
      out.write("</p>\r\n");
      out.write("  <p><b>Posted Date</b></p>\r\n");
      out.write("  <p>");
      out.print(rs.getString(3));
      out.write("</p>  \r\n");
      out.write("  <hr/>\r\n");
      out.write("</center>\r\n");
      out.write("  ");

  
    }


      out.write("\r\n");
      out.write("    </marquee>\r\n");
      out.write("</div>\r\n");
      out.write("\n");
      out.write("                   <div id=\"main\">\n");
      out.write("                       <img src=\"images/aiims4.jpg\" style=\"height:800px; width: 700px;\" /> \n");
      out.write("                 </div> \n");
      out.write("               </div>\n");
      out.write("                   ");
      out.write("<div id=\"footer\">\n");
      out.write("    <div id=\"lfooter\">\n");
      out.write("     <u>  Other Features </u><br/><br/>\n");
      out.write("       Hris <br/>\n");
      out.write("       HR Software<br/>\n");
      out.write("       Performance Management</br>\n");
      out.write("       Human Resource Management System\n");
      out.write("       \n");
      out.write("    </div>   \n");
      out.write("<div id=\"rfooter\"><u>Contact Us</u>\n");
      out.write("    <br/><br/> \n");
      out.write("    \n");
      out.write("HRMS Marc Pvt. Ltd.<br/>\n");
      out.write("19, Balaji Towers, Sector 30A, Vashi,<br/>\n");
      out.write("Near Sanpada Railway Station,<br/>\n");
      out.write("Navi Mumbai  400705 Maharashtra,\n");
      out.write("INDIA<br/>    \n");
      out.write("contact us : +91 8847515314\n");
      out.write("</div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("           </div>\n");
      out.write("           </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write(" ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
