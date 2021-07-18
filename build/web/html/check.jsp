<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="../style/homecss.css" rel="stylesheet" type="text/css"/>
        <link href="../style/checkcss.css" rel="stylesheet" type="text/css"/>
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
            
        <!-- CHECKING SECTION --> 
        <section id="check">
            <div class="check container">               
                <div class="bg-text">
                    <table id="content">
                        <tr>
                            <th><center>Room Type</center></th>
                            <th><center>No. of rooms available on these dates</center></th>
                        </tr>
                        <tr>
                          <td>Single A/c</td>
                          <td><%=session.getAttribute("csa")%></td>
                        </tr>
                        <tr>
                          <td>Single Non-A/c</td>
                          <td><%=session.getAttribute("csna")%></td>
                        </tr>
                        <tr>
                          <td>Duplex A/c</td>
                          <td><%=session.getAttribute("cda")%></td>
                        </tr>
                        <tr>
                          <td>Duplex Non-A/c</td>
                          <td><%=session.getAttribute("cdna")%></td> 
                        </tr>
                        <tr>
                          <td>Family A/c</td>
                          <td><%=session.getAttribute("cfa")%></td>    
                        </tr>
                        <tr>
                          <td>Family Non-A/c</td>
                          <td><%=session.getAttribute("cfna")%></td>   
                        </tr>
 
 
                        <tr>  
                          <td>
                             <form>
                                <input type="submit" class="btn" name="btncheck" value="Proceed to Book"/>
                             </form>
                          </td>
                          <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if(session.getAttribute( "email")==  null)
                response.sendRedirect("../login.jsp");%>
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
    </body>
</html>

<%try
{
    if(request.getParameter("btncheck")!=null)
    {
        response.sendRedirect("rooms.jsp");
    }
}catch(Exception e){}
%> 