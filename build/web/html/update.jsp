<%-- 
    Document   : update
    Created on : May 28, 2020, 4:35:08 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE_PROFILE</title>
        <link rel="stylesheet" type="text/css" href="../style/registercss.css" />
        <link rel="stylesheet" type="text/css" href="../style/homecss.css" />
    </head>
    <body style="background: url('../images/pexels.jpeg') no-repeat center fixed;">
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
            
        <form name="update">
            <div class="registerbox" style="height: 35vw;">
                <p style="margin-top: 2.5vw;">Name:</p>
                <input type="text" name="txtfname1" required placeholder="Enter Updated Name"/>
                <p>Last Name:</p>
                <input type="text" name="txtlname1" required placeholder="Enter Updated Name"/>
                <p>Contact No.:</p>
                <input type="text" name="txtno1" placeholder="Enter Updated Number"/>
                <p>What is your Native Place:</p>
                <input type="text" name="txtfor1" required placeholder="Enter Updated Place"/>
                
                <input type="submit" name="btnupda" value="UPDATE"/>
            </div>
            
<%  
    try{
        String e_mail,fname,lname,number,forgot;
        fname=request.getParameter("txtfname1");
        lname=request.getParameter("txtlname1");
        number=request.getParameter("txtno1");
        forgot=request.getParameter("txtfor1");
        System.out.println("outerji "+fname);
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        if(session.getAttribute( "email")==  null)
            response.sendRedirect("../login.jsp");
        if(request.getParameter("btnupda")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
            Statement stat=conn.createStatement();
            int x =stat.executeUpdate("update login set fname='"+fname+"', lname='"+lname+"', mobno="+number+", forgot='"+forgot+"' where EID='"+session.getAttribute("email")+"'");
            if(x>0)
            {
                response.sendRedirect("../html/profile.jsp");
            }
            else
            {
                response.sendRedirect("register.jsp");
%>     
                <p>Error in Registration! Please Enter your Details again</p>
<%            }
        }
    }catch(Exception ex)
     { 
        ex.getMessage();
    }
%>
        
        </form>    
    </body>
</html>
