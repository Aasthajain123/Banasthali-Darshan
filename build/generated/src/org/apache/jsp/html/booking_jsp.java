package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.util.Date;
import java.time.LocalDate;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <link href=\"../style/homecss.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../style/bookcss.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-2.2.4.js\"></script><!--past dates disable-->\n");
      out.write("        <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script><!--past dates disable-->\n");
      out.write("        <!--mindate=current banane k lie maxdate-->\n");
      out.write("        <script>\n");
      out.write("            $(\n");
      out.write("                function(){\n");
      out.write("                    var dtToday = new Date();\n");
      out.write("\n");
      out.write("                    var month = dtToday.getMonth() + 1;\n");
      out.write("                    var day = dtToday.getDate();\n");
      out.write("                    var year = dtToday.getFullYear();\n");
      out.write("                    if(month < 10)\n");
      out.write("                        month = '0' + month.toString();\n");
      out.write("                    if(day < 10)\n");
      out.write("                        day = '0' + day.toString();\n");
      out.write("\n");
      out.write("                    var maxDate = year + '-' + month + '-' + day;//aaj ki date\n");
      out.write("                    $('#cout').attr('min',maxDate); //usko min                    \n");
      out.write("                    $('#cin').attr('min', maxDate);//banaa\n");
      out.write("                }\n");
      out.write("            );\n");
      out.write("        </script>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("        <body>\n");
      out.write("            <!-- HEADER SECTION --> \n");
      out.write("            <section id=\"header\">\n");
      out.write("                <div class=\"header container\">\n");
      out.write("                    <div class=\"navbar\">\n");
      out.write("                        <div class=\"brand\">\n");
      out.write("                            <a href=\"index.html\"><h1>B<span>A</span>NASTHALI  D<span>A</span>RS<span>H</span>AN</h1></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"navlist\">\n");
      out.write("                            <div class=\"listing\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"booking.jsp\">ROOM BOOKING</a></li>\n");
      out.write("                                    <li><a href=\"aboutus.html\">ABOUT</a></li>\n");
      out.write("                                    <li><a href=\"contact.html\">CONTACT US</a></li>\n");
      out.write("                                    <li><a href=\"profile.jsp\">MY PROFILE</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- END OF HEADER SECTION -->\n");
      out.write("            \n");
      out.write("            <!-- BOOKING SECTION --> \n");
      out.write("            <section id=\"book\">\n");
      out.write("                <div class=\"book container\">   \n");
      out.write("                    <div class=\"bookhead\">\n");
      out.write("                        <h1 class=\"title\">W<span>E</span>LCOME T<span>O</span> AT<span>I</span>THI GR<span>A</span>H</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"wrapper\">\n");
      out.write("                        <div class=\"t1\"> Book here</div>\n");
      out.write("                            <form class=\"form\">\n");
      out.write("                                <div class=\"input_field\">\n");
      out.write("                                    <label>Check-in</label>\n");
      out.write("                                    <input type=\"date\" class=\"input\" name=\"cin\" id=\"cin\"/> \n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input_field\">\n");
      out.write("                                    <label>Check-out</label>\n");
      out.write("                                    <input type=\"date\" class=\"input\" name=\"cout\" id=\"cout\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input_field\">\n");
      out.write("                                    <input type=\"submit\"  value=\"Check availability\" class=\"btn\" name=\"btncheck\"/>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- END OF BOOKING SECTION -->\n");
      out.write("                \n");
      out.write("        <!--FOOTER SECTION-->\n");
      out.write("        <section id=\"footer\">\n");
      out.write("            <div class=\"footer container\">\n");
      out.write("            \t<div class='contactHandles'>\n");
      out.write("                    <a href=\"http://www.banasthali.org/banasthali/wcms/en/home/\"><img src=\"../images/web.png\"/></a>\n");
      out.write("                    <a href=\"https://twitter.com/banasthali_vid?lang=en\"><img src=\"../images/twit.png\"/></a>\n");
      out.write("                    <a href=\"https://www.linkedin.com/company/banasthalividyapith\"><img src=\"../images/lin.png\"/></a>\n");
      out.write("                    <a href=\"http://www.banasthali.org/banasthali/wcms/en/home/international/continfo.html\"><img src=\"../images/gmail.png\"/></a>\n");
      out.write("                    <a href=\"https://www.instagram.com/explore/tags/banasthali/?hl=en\"><img src=\"../images/insta.png\"/></a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class='footerGreeting'>Thanks</div>\t\t\t\t\n");
      out.write("\t\t<div class=\"creatorName\">BANASTHALI VIDYAPITH</div>\n");
      out.write("\t\t<div class=\"copyright\">&copy Copyright 2020 - 2025</div>\n");
      out.write("\t\t<div class=\"cccc\">AllRightsReserved Powered by <i style=\"color: silver;\"><b>Vidyapith</b></i></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</section>\n");
      out.write("        <!-- END OF FOOTER SECTION -->\n");
      out.write("            <!-- aaj ka date as alert-->\n");
      out.write("            <script>\n");
      out.write("                var maxDate = year + '-' + month + '-' + day;\n");
      out.write("                alert(maxDate);\n");
      out.write("                $('#cin').attr('min', maxDate);\n");
      out.write("            </script>    \n");
      out.write("       \n");
      out.write("\n");
try
{ 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if(session.getAttribute( "email")==  null)
            response.sendRedirect("../login.jsp");
    LocalDate today = LocalDate.now();
    Date datecin,datecout;
    String cin,cout; 
    datecin=new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("cin"));
    datecout=new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("cout"));
    cin=request.getParameter("cin");
    cout=request.getParameter("cout");
    int csa=6,csna=6,cda=6,cfa=6,cdna=6,cfna=6; 
    if(request.getParameter("btncheck")!=null)
    {
       
        if(datecout.before(datecin))
        {

      out.write("\n");
      out.write("<script>\n");
      out.write("    alert(\"INVALID DATE!\");\n");
      out.write("</script>\n");

        }
        else
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin"); 
            Statement stat=conn.createStatement();
            Statement stat1=conn.createStatement();
            int rs=stat.executeUpdate("insert into temp values('"+session.getAttribute("email")+"','"+cin+"','"+cout+"')"); 
            ResultSet x=stat.executeQuery("select * from temp where eid='"+session.getAttribute("email")+"'");
            while(x.next())
            {
                Date ncin=x.getDate(2);      
                Date ncout=x.getDate(3);
                String rtype="Single A/c";
                ResultSet x1=stat.executeQuery("select * from room where rtype='"+rtype+"'");
                while(x1.next())
                {

                    Date roomcid=x1.getDate(4);
                    Date roomcout=x1.getDate(5);
                    if((ncin.after(roomcid)||ncin.equals(roomcid))&& ncin.before(roomcout))  
                    {   csa--;
                    }
                }
                session.setAttribute("csa",csa);
                rtype="Single Non-A/c"; 
                ResultSet x2=stat.executeQuery("select * from room where rtype='"+rtype+"'");
                while(x2.next())
                {

                    Date roomcid=x2.getDate(4);
                    Date roomcout=x2.getDate(5);
                    if((ncin.after(roomcid)||ncin.equals(roomcid))&& ncin.before(roomcout))  
                    {   csna--;
                    }
                }
                session.setAttribute("csna",csna);
                rtype="Duplex A/c";
                ResultSet x3=stat.executeQuery("select * from room where rtype='"+rtype+"'");
                while(x3.next())
                {

                    Date roomcid=x3.getDate(4);
                    Date roomcout=x3.getDate(5);
                    if((ncin.after(roomcid)||ncin.equals(roomcid))&& ncin.before(roomcout))  
                    {   cda--;
                    }
                }
                session.setAttribute("cda",cda);         
                rtype="Duplex Non-A/c"; 
                ResultSet x4=stat.executeQuery("select * from room where rtype='"+rtype+"'");
                while(x4.next()) 
                {
                    Date roomcid=x4.getDate(4);
                    Date roomcout=x4.getDate(5);
                    if((ncin.after(roomcid)||ncin.equals(roomcid))&& ncin.before(roomcout))  
                    {   cdna--; 
                    }
                }
                session.setAttribute("cdna",cdna); 
                rtype="Family A/c"; 
                ResultSet x5=stat.executeQuery("select * from room where rtype='"+rtype+"'");
                while(x5.next()) 
                {
                    Date roomcid=x5.getDate(4);
                    Date roomcout=x5.getDate(5);
                    if((ncin.after(roomcid)||ncin.equals(roomcid))&& ncin.before(roomcout))  
                    {   cfa--;
                    }
                }
                session.setAttribute("cfa",cfa);
                rtype="Family Non-A/c";
                ResultSet x6=stat1.executeQuery("select * from room where rtype='"+rtype+"'");
                while(x6.next()) 
                {
                    Date roomcid=x6.getDate(4);
                    Date roomcout=x6.getDate(5);
                    if((ncin.after(roomcid)||ncin.equals(roomcid))&& ncin.before(roomcout))  
                    {   cfna--;
                    }
                }
                session.setAttribute("cfna",cfna);
                response.sendRedirect("check.jsp");
            }
        }
    }
}catch(Exception e){
    out.println(e);}

      out.write("\n");
      out.write(" </body>\n");
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
