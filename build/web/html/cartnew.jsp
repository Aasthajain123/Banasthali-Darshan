<%-- 
    Document   : cartnew
    Created on : 2 May, 2020, 8:01:35 PM
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
  <h2>CART</h2>
  <form>
  <table id="content">
  <tr>
      <th><center>Room Type</center></th>
  <th><center>Room Number</center></th>
  <th><center>Price</center>-</th>
  </tr>
   <tr>
                <td>Single A/c</td>
                <td><%int a1[]=(int[])session.getAttribute("a1");
                   for(int i=0;i<a1.length;i++)
                   {
                       if(a1[i]!=0)
                out.println(a1[i]+" ");
                   }
                   %></td>
                <td><%=session.getAttribute("p1")%> &nbsp;</td>   
            </tr>
             <tr>
                <td>Single Non-A/c</td>
                <td><%int a2[]=(int[])session.getAttribute("a2");
                   for(int i=0;i<a2.length;i++)
                   {
                       if(a2[i]!=0)
                out.println(a2[i]+" ");
                   }
                   %></td>
                <td><%=session.getAttribute("p2")%> &nbsp;</td>    
            </tr>
            <tr>
                <td>Duplex A/c</td>
                <td><%int a3[]=(int[])session.getAttribute("a3");
                   for(int i=0;i<a3.length;i++)
                   {
                       if(a3[i]!=0)
                out.println(a3[i]+" ");
                   }
                   %></td>
                <td><%=session.getAttribute("p3")%>  &nbsp;</td>   
            </tr>
             <tr>
                <td>Duplex Non-A/c</td>
                <td><%int a4[]=(int[])session.getAttribute("a4");
                   for(int i=0;i<a4.length;i++)
                   {
                       if(a4[i]!=0)
                out.println(a4[i]+" ");
                   }
                   %></td>
                <td><%=session.getAttribute("p4")%> &nbsp;</td>    
            </tr>
             <tr>
                <td>Family A/c</td>
                <td><%int a5[]=(int[])session.getAttribute("a5");
                   for(int i=0;i<a5.length;i++)
                   {
                       if(a5[i]!=0)
                out.println(a5[i]+" ");
                   }
                   %></td>
                <td><%=session.getAttribute("p5")%> &nbsp;</td>    
            </tr>
             <tr>
                <td>Family Non-A/c</td>
                <td><%int a6[]=(int[])session.getAttribute("a6");
                   for(int i=0;i<a6.length;i++)
                   {
                       if(a6[i]!=0)
                out.println(a6[i]+" ");
                   }
                   %></td>
                <td><%=session.getAttribute("p6")%>   &nbsp;</td>  
            </tr>
           
                
            <tr><td></td>
                <td></td>
                <td><input type="submit" name="btncnfm" value="Confirm Booking" class="btn"></tr>
 
</table>
  </form>
</div>


            </div>
        </section>
    </body>
</html>
<%
    try
    {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        if(session.getAttribute( "email")==  null)
                response.sendRedirect("../login.jsp");
        if(request.getParameter("btncnfm")!=null)
        {
            String rtype; 
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin"); 
            Statement stat=conn.createStatement(); 
            Statement stat1=conn.createStatement();
            ResultSet x=stat.executeQuery("select * from temp where eid='"+session.getAttribute("email")+"'");
            while(x.next())
            {
                Date cin=x.getDate(2);
                Date cout=x.getDate(3);
            if((int[])session.getAttribute("a1")!=null) 
            {
          
                rtype="Single A/c";
            
                 for(int i=0;i<a1.length;i++)
                 {
                    if(a1[i]!=0)
                    {
                 int rs=stat.executeUpdate("insert into room values('"+session.getAttribute("email")+"','"+a1[i]+"','"+rtype+"','"+cin+"','"+cout+"')");
                
               }
        }
            }
               if((int[])session.getAttribute("a2")!=null) 
            {
               
                rtype="Single Non-A/c";
                for(int i=0;i<a2.length;i++)
                 {
                    if(a2[i]!=0)
                    {
                 int rs1=stat1.executeUpdate("insert into room values('"+session.getAttribute("email")+"','"+a2[i]+"','"+rtype+"','"+cin+"','"+cout+"')");
                
               }
        }
        }
               if((int[])session.getAttribute("a3")!=null) 
            {
               
                rtype="Duplex A/c";
                for(int i=0;i<a3.length;i++)
                 {
                    if(a3[i]!=0)
                    {
                 int rs2=stat1.executeUpdate("insert into room values('"+session.getAttribute("email")+"','"+a3[i]+"','"+rtype+"','"+cin+"','"+cout+"')");
                
               }
        }
        }
                if((int[])session.getAttribute("a4")!=null) 
            {
               
                rtype="Duplex Non-A/c";
                for(int i=0;i<a4.length;i++)
                 {
                    if(a4[i]!=0)
                    {
                 int rs2=stat1.executeUpdate("insert into room values('"+session.getAttribute("email")+"','"+a4[i]+"','"+rtype+"','"+cin+"','"+cout+"')");
                
               }
        }
        }
                 if((int[])session.getAttribute("a5")!=null) 
            {
               
                rtype="Family A/c";
                for(int i=0;i<a3.length;i++)
                 {
                    if(a5[i]!=0)
                    {
                 int rs2=stat1.executeUpdate("insert into room values('"+session.getAttribute("email")+"','"+a5[i]+"','"+rtype+"','"+cin+"','"+cout+"')");
                
               }
        }
        }
                  if((int[])session.getAttribute("a6")!=null) 
            {
               
                rtype="Family Non-A/c";
                for(int i=0;i<a6.length;i++)
                 {
                    if(a6[i]!=0)
                    {
                 int rs2=stat1.executeUpdate("insert into room values('"+session.getAttribute("email")+"','"+a6[i]+"','"+rtype+"','"+cin+"','"+cout+"')");
                
               }
        }
        }
               
               
               
    
           int rs4=stat.executeUpdate("delete from temp where eid='"+session.getAttribute("email")+"'");
           response.sendRedirect("success.html"); 
            }
    }
    }
    catch(Exception e)
    {
    }
    %>
