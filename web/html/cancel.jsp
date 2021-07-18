<%-- 
    Document   : cancel
    Created on : 30 May, 2020, 9:13:25 AM
    Author     : ruchi
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="../style/homecss.css" rel="stylesheet" type="text/css"/>
        <link href="../style/cartcss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
            <!-- HEADER SECTION --> 
            <section id="header">
                <div class="header container">
                    <div class="navbar">
                        <div class="brand">
                            <a href="index.html"><h1>B<span>A</span>NASTHALI  D<span>A</span>RS<span>H</span>AN</h1></a>
                        </div>
                        <div class="navlist">
                            <div class="listing">
                                <ul>
                                    <li><a href="booking.jsp">ROOM BOOKING</a></li>
                                    <li><a href="aboutus.html">ABOUT</a></li>
                                    <li><a href="contact.html">CONTACT US</a></li>
                                    <li><a href="profile.jsp">MY PROFILE</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END OF HEADER SECTION -->
            
         <section id="cart">
            <div class="cart container">
                <div class="bg-text">
  
  <form>
  <table id="content" style="margin-top: 2vw;">
  <tr>
      <th><center>Room Type</center></th>
  <th><center>Room Number</center></th>
  <th><center>Check-in Date</center></th>
<th><center>Check-out Date</center></th>
  </tr>
  <%
      try
      {
        int count,i=1;
        String room;
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        if(session.getAttribute( "email")==  null)
            response.sendRedirect("../login.jsp");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin"); 
        Statement stat=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);  
        ResultSet x=stat.executeQuery("select * from room where eid='"+session.getAttribute("email")+"'"); 
        while(x.next())
        {
            int rno=Integer.parseInt(x.getString(2));
            String rtype=x.getString(3);
            Date cin=x.getDate(4);
            Date cout=x.getDate(5);
            %>
        <tr>
            <td><%out.println(rtype);%></td>
             <td><%out.println(rno);%></td>
              <td><%out.println(cin);%></td>
               <td><%out.println(cout);%></td>
               <td> <input type="submit" value="Cancel" class="btn" name=<%="btn"+i%> /></td>
        </tr>
    <%
            i++;

        }
        for(count=1;count<=i;count++) 
        {
            if(request.getParameter("btn"+count)!=null)
            {
    %>
                <p> BOOKING CANCELLED</p>
<%
            x.absolute(count);
            room=x.getString(2); 

            int x1=stat.executeUpdate("delete from room where eid='"+session.getAttribute("email")+"' and rno='"+room+"'");
            Thread.sleep(500);
            response.sendRedirect("cancel.jsp");
            }
        }
    }catch(Exception ex)
    {
       out.println(ex);
    }
%>
  </table>
  </form>
                </div>
            </div>
         </section>
    <!--FOOTER SECTION-->
        <section id="footer">
            <div class="footer container">
            	<div class='contactHandles'>
                    <a href="http://www.banasthali.org/banasthali/wcms/en/home/"><img src="../images/web.png"/></a>
                    <a href="https://twitter.com/banasthali_vid?lang=en"><img src="../images/twit.png"/></a>
                    <a href="https://www.linkedin.com/company/banasthalividyapith"><img src="../images/lin.png"/></a>
                    <a href="http://www.banasthali.org/banasthali/wcms/en/home/international/continfo.html"><img src="../images/gmail.png"/></a>
                    <a href="https://www.instagram.com/explore/tags/banasthali/?hl=en"><img src="../images/insta.png"/></a>
		</div>
		<div class='footerGreeting'>Thanks</div>				
		<div class="creatorName">BANASTHALI VIDYAPITH</div>
		<div class="copyright">&copy Copyright 2020 - 2025</div>
		<div class="cccc">AllRightsReserved Powered by <i style="color: silver;"><b>Vidyapith</b></i></div>
		</div>
	</section>
        <!-- END OF FOOTER SECTION -->
    </body>
</html>
 
    

                