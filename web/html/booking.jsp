<%-- 
    Document   : booking
    Created on : 1 May, 2020, 10:49:06 AM
    Author     : arushi
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.time.LocalDate"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="../style/homecss.css" rel="stylesheet" type="text/css"/>
        <link href="../style/bookcss.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-2.2.4.js"></script><!--past dates disable-->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><!--past dates disable-->
        <!--mindate=current banane k lie maxdate-->
        <script>
            $(
                function(){
                    var dtToday = new Date();

                    var month = dtToday.getMonth() + 1;
                    var day = dtToday.getDate();
                    var year = dtToday.getFullYear();
                    if(month < 10)
                        month = '0' + month.toString();
                    if(day < 10)
                        day = '0' + day.toString();

                    var maxDate = year + '-' + month + '-' + day;//aaj ki date
                    $('#cout').attr('min',maxDate); //usko min                    
                    $('#cin').attr('min', maxDate);//banaa
                }
            );
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
            
            <!-- BOOKING SECTION --> 
            <section id="book">
                <div class="book container">   
                    <div class="bookhead">
                        <h1 class="title">W<span>E</span>LCOME T<span>O</span> AT<span>I</span>THI GR<span>A</span>H</h1>
                    </div>
                    <div class="wrapper">
                        <div class="t1"> Book here</div>
                            <form class="form">
                                <div class="input_field">
                                    <label>Check-in</label>
                                    <input type="date" class="input" name="cin" id="cin"/> 
                                </div>
                                <div class="input_field">
                                    <label>Check-out</label>
                                    <input type="date" class="input" name="cout" id="cout"/>
                                </div>
                                <div class="input_field">
                                    <input type="submit"  value="Check availability" class="btn" name="btncheck"/>
                                </div>
                            </form>
                    </div>
                </div>
            </section>
            <!-- END OF BOOKING SECTION -->
                
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
            <!-- aaj ka date as alert-->
            <script>
                var maxDate = year + '-' + month + '-' + day;
                alert(maxDate);
                $('#cin').attr('min', maxDate);
            </script>    
       

<%try
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
%>
<script>
    alert("INVALID DATE!");
</script>
<%
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
%>
 </body>
</html>