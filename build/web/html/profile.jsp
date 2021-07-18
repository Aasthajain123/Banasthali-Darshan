<%-- 
    Document   : profile
    Created on : Feb 18, 2020, 11:28:48 AM
    Author     : ADMIN
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="../style/homecss.css" rel="stylesheet" type="text/css"/>
        <link href="../style/procsss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="profile" >
        <!-- HEADER SECTION --> 
                <section id="header">
                    <div class="header container">
                        <div class="navbar">
                            <div class="brand">
                                <a href="index.html"><h1>B<span>A</span>NASTHALI D<span>A</span>RSHAN <span></span></h1></a>
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

        <!-- Profile SECTION -->        
        <section id="profile"> 
            <div class="profile ">
                <div class="detail">
                    <h1 class="title">MY P<span>R</span>OFILE</h1>
<%
try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
        Statement stat=conn.createStatement();  
        ResultSet x=stat.executeQuery("select * from login where EID='"+session.getAttribute("email")+"' and PASSWORD='"+session.getAttribute("password")+"'");
        if(x.next())
        {
%>
                    <table>
                        <tr><th>E-MAIL:</th> <td><%out.println(x.getString(1));%></td></tr>
                        <tr><th>NAME:</th> <td><%out.println(x.getString(2));%></td></tr>
                        <tr><th>LAST NAME:</th> <td><%out.println(x.getString(3));%></td></tr>
                        <tr><th>CONTACT NUMBER:</th> <td><%out.println(x.getString(4));%></td></tr>  
                    </table>

<%                    
        }
%>                             
                </div>
                <div class="update">
                    <h1 class="title"> UPD<span>A</span>TE YOUR<br/>P<span>R</span>OFILE</h1>
                    <a href="${pageContext.request.contextPath}/html/update.jsp" type="button" class="btn">UPDATE</a>
                </div>                
             </div> 
                <section id="ppppp">
            <div class="jjj">
                <a href="${pageContext.request.contextPath}/html/cancel.jsp" type="button" class="btn">CHECK YOUR BOOKING</a>
                <a href="${pageContext.request.contextPath}/html/logout.jsp" type="button" class="btn" style="margin-right: 20vw; margin-left: 1vw;">LOGOUT</a>                
            </div>
        </section>
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
        </form>
    </body>
</html>

<%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        if(session.getAttribute( "email")==  null)
            response.sendRedirect("../login.jsp");
    }catch(Exception ex){ ex.getMessage();}

       
%> 