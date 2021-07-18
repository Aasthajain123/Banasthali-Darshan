package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>LOGIN</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/logincss.css\" >\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"loginbox\">\n");
      out.write("            <img src=\"images/user.png\" class=\"avatar\">\n");
      out.write("            <h1>Login Here</h1>\n");
      out.write("            <form>\n");
      out.write("                <p>E-mail:</p>\n");
      out.write("                <input type=\"text\" name=\"txtid\" placeholder=\"Enter e-mail id\"/>\n");
      out.write("                <p>Password:</p>\n");
      out.write("                <input type=\"password\" name=\"txtpwd\" placeholder=\"Enter Password\" />\n");
      out.write("                <input type=\"submit\" name=\"btnlogin\" value='LOGIN'/>\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/html/forgot.jsp\">Forgot Password?</a><br/>\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/html/register.jsp\">Don't have an account? SIGN UP!</a>\n");
      out.write("      \n");

    try
    {
        String eid,psswd;
        eid=request.getParameter("txtid");
        session.setAttribute("email",eid);
        psswd=request.getParameter("txtpwd");
        session.setAttribute("password",psswd);
        if(request.getParameter("btnlogin")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("Select * from login where eid='"+eid+"'and password='"+psswd+"'");
            boolean status=rs.next();
            if(status)
            {
                response.sendRedirect("html/index.html") ;
            }
            else
            {
                
      out.write("<p>INVALID USER!<br/>ENTER AGAIN!</p>");

            }
        }
    }catch(Exception ex)
    {
        ex.getMessage();
    }

      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
