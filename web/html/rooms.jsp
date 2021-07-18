
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <link href="../style/homecss.css" rel="stylesheet" type="text/css"/>
            <link href="../style/roomcss.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
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
            
            <!--ROOM SECTION-->
            
        <section id="room">
              <div class="room container">   
                  <div class="wrapper">
                  <div class="t1"> Online Room Booking</div>
                  <form class="form">
                      <div class="input_field">
                          <label>
                          Single A/c
                          </label>
                    
                          <div class="custom_select">
                              <select name="txtid">
                                  <option value="0" selected>0</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                              </select>
                      </div>
                         
                          </div>
                       <div class="input_field">
                             <label>
                          Single Non-A/c
                          </label>
                          <div class="custom_select">
                              <select name="txtid1">
                                  <option value="0" selected>0</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                              </select>
                      </div>
                            
                      </div>
                       <div class="input_field">
                             <label>
                          Duplex A/c
                          </label>
                          <div class="custom_select">
                              <select name="txtid2">
                                  <option value="0" selected>0</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                              </select>
                      </div>
                     
                      </div>
                      <div class="input_field">
                             <label>
                          Duplex Non-A/c
                          </label>
                          <div class="custom_select">
                              <select name="txtid3">
                                  <option value="0" selected>0</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                              </select>
                      </div>
                      
                      </div>
                      <div class="input_field">
                             <label>
                          Family A/c
                          </label>
                          <div class="custom_select">
                              <select name="txtid4">
                                  <option value="0" selected>0</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                              </select>
                      </div>
                      
                      </div>
                      <div class="input_field">
                             <label>
                          Family Non-A/c
                          </label>
                          <div class="custom_select">
                              <select name="txtid5">
                                  <option value="0" selected>0</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                              </select>
                      </div>
                      
                      </div>
                       <div class="input_field">
                         
                          <input type="submit"  value="View Cart" class="btn" name="btncart6"/>
                      </div>
                  </form>
                  </div>
              
              <div class="internal"> 
		      		<ul>
                                    <li><a href="#single-ac">Single A/c</a></li>
			            <li><a href="#single-nonac">Single Non-A/c</a></li>
			            <li><a href="#duplex-ac">Duplex A/c</a></li>
			            <li><a href="#duplex-nonac">Duplex Non-A/c</a></li>
                                    <li><a href="#family-ac">Family A/c</a></li>
                                    <li><a href="#family-nonac">Family Non-A/c</a></li>
			        </ul>
				</div>
              </div>             
        </section>             
        <section id="single-ac">
            <div class="single-ac container">   
                  <div class="Single-achead">
                      <h1 class="title">S<span>I</span>NGLE<span> A</span>/C </h1>
	   			</div> 
              <div> 
                  
                      <img src="../images/singleac.jpg" style="float:left; margin-left: 0px;  width:50%;">
                 
                      <br><br><br>
                      <p style="font-size:1.8vw; ">Single A/c<br><br>
                      
                      price : 700Rs<br><br> Capacity: 1 people<br><br>A/c Available<br><br>
                         Wi-Fi internet available
			       
                      </p> 
 
            </div>
            </div>
        </section>
        <section id="single-nonac">
            <div class="single-nonac container">   
                  <div class="Single-nonachead">
                      <h1 class="title">S<span>I</span>NGLE<span> N<span>O</span>N-A</span>/C </h1>
	   			</div> 
              <div> 
                  
                      <img src="../images/singlenonac1.jpeg" style="float:left; margin-left: 0px; width:50%;">
                 
                      <br/><br/><br><br><br>
                      <p style="font-size:1.8vw; ">Single Non-A/c<br><br>
                          price : 500Rs<br><br> Capacity: 1 people<br><br>
                         Wi-Fi internet available<br><br>Flat Screen Tv
			       
                                </p>
 
            </div>
            </div>
        </section>
        <section id="duplex-ac">
            <div class="duplex-ac container">   
                  <div class="duplex-achead">
                      <h1 class="title">D<span>U</span>PLEX<span> A</span>/C </h1>
	   			</div> 
              <div> 
                  
                      <img src="../images/duplexac.jpeg" style="float:left; margin-left: 0px ;width:50%;  ">
                 
                      <br/><br/><br><br><br>
                      <p style="font-size:1.8vw;">Duplex A/c<br><br>
                          price : 1000Rs<br><br> Capacity: 2 people<br><br>A/c Available<br><br>
                         Wi-Fi internet available<br><br>Flat Screen Tv
			       
                                </p>
 
            </div>
            </div>
        </section>
        <section id="duplex-nonac">
            <div class="duplex-nonac container">   
                  <div class="duplex-nonachead" >
                      <h1 class="title">D<span>U</span>PLEX N<span>O</span>N A/C </h1>
	   			</div> 
              <div> 
                  
                      <img src="../images/duplexnonac1.jpg" style="float:left; margin-left: 0px;  width:50%;">
                 
                      <br/><br/><br><br><br>
                      <p style="font-size:1.8vw;">Duplex Non-A/c<br><br>
                          price : 800Rs<br><br> Capacity: 2 people<br><br>
                         Wi-Fi internet available<br><br>Flat Screen Tv
			       
                                </p>
 
            </div>
            </div>
        </section>
        <section id="family-ac">
            <div class="family-ac container">   
                  <div class="family-achead">
                      <h1 class="title">F<span>A</span>MILY<span> A</span>/C </h1>
                  </div> 
              <div> 
                  
                      <img src="../images/familyac1.jpeg" style="float:left; margin-left: 0px;  width:50%;">
                 
                      <br/><br/><br><br><br>
                      <p style="font-size:1.8vw;">Family A/c<br><br>
                          price : 1500Rs<br><br> Capacity: 3-5 people<br><br>A/c available<br><br>
                         Wi-Fi internet available<br><br>Flat Screen Tv
			       
                                </p>
 
            </div>
            </div>
        </section>
        <section id="family-nonac">
            <div class="family-nonac container">   
                  <div class="family-nonachead">
                      <h1 class="title" >F<span>A</span>MILY NON-<span>A</span>/C </h1>
                  </div>  
                <div style="display: flex; flex-direction: row;">
                    <div> 
                        <img src="../images/familynonac1.jpg" style="float:left; width:50vw;">
                    </div>
                    <div>
                          <br><br><br>
                          <p style="font-size:1.8vw; ">Single A/c<br><br>

                          price : 700Rs<br><br> Capacity: 1 people<br><br>A/c Available<br><br>
                             Wi-Fi internet available

                          </p> 
                    </div>
                </div>
 
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
            
    </body>
</html>
<%!
    int count(String rtype,Date cin,Date cout,int i,int a[]) 
    { 
       int count=6,m=0,w=0;
       int j,k,s,t;
       int r[]=new int[6];
      
       try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin"); 
            Statement statroom1=conn.createStatement(); 
            ResultSet x1=statroom1.executeQuery("select * from room where rtype='"+rtype+"'");
      
     while(x1.next())
     {
           Date roomcid=x1.getDate(4);
           Date roomcout=x1.getDate(5);
            if((cin.after(roomcid)||cin.equals(roomcid))&& cin.before(roomcout))  
            {
            count--;
            r[m]=Integer.parseInt(x1.getString(2));
            m++;
            }
     }
     if(i>count)
     {
        a[0]=0;
     }
     else
     {
        ResultSet rs=statroom1.executeQuery("select * from roomprice where roomtype='"+rtype+"'");
        while(rs.next())
        {
            int rsid=rs.getInt(1);
            int reid=rs.getInt(2);
       for(j=1;j<=i;j++)
      {
          for(k=rsid;k<=reid;k++)
          {
              for(s=0;s<r.length;s++)
              {
                  if(r[s]==k )
                      break;
               }
              if(s==r.length)
              {
                  for(t=0;t<a.length;t++)
                  {
                      if(a[t]==k)
                       break;  
                  }
                  if(t==a.length)
                      break;
          }
          }
          a[w]=k;
          w++;      
      }
        
      }
     }
        }
     catch(Exception e)
     {
     }
        
        return(count);
     }
%>
     
<%!
         int price(String rtype,int i)
         {
             int tp=0,p;
             try{
                 Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin"); 
            Statement stat=conn.createStatement(); 
                 ResultSet rs1=stat.executeQuery("select * from roomprice where roomtype='"+rtype+"'");
          while(rs1.next())
          {
              p=rs1.getInt(4);
              tp=tp+i*p;
    
          }
         }catch(Exception e)
         {
         }
         return(tp);
         }
%>

<% 
  try{
      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if(session.getAttribute( "email")==  null)
                response.sendRedirect("../login.jsp");
      int a1[]=new int[6];
      int a2[]=new int[6];
      int a3[]=new int[6];
      int a4[]=new int[6];
      int a5[]=new int[6];
      int a6[]=new int[6];
      int p;
      if(request.getParameter("btncart6")!=null)
      {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin"); 
        Statement stat=conn.createStatement(); 
        ResultSet x=stat.executeQuery("select * from temp where eid='"+session.getAttribute("email")+"'");
        while(x.next())
        {
            Date cin=x.getDate(2); 
            Date cout=x.getDate(3);

            String rtype="Single A/c";
            int i=Integer.parseInt(request.getParameter("txtid"));
            int csa=count(rtype,cin,cout,i,a1); 
            System.out.println("csa= "+csa);
            
            session.setAttribute("a1",a1);
            if(a1[0]!=0) 
                p=price(rtype,i);
            else 
                p=0;            
            session.setAttribute("p1",p);
            
            rtype="Single Non-A/c";
            i=Integer.parseInt(request.getParameter("txtid1"));
            int csna=count(rtype,cin,cout,i,a2); 
            session.setAttribute("a2",a2);
            if(a2[0]!=0) 
                p=price(rtype,i); 
            else 
                p=0;
            session.setAttribute("p2",p);
            
            rtype="Duplex A/c";
            i=Integer.parseInt(request.getParameter("txtid2"));
            int cda=count(rtype,cin,cout,i,a3); 
            session.setAttribute("a3",a3); 
            if(a3[0]!=0) 
                p=price(rtype,i);
            else 
                p=0;
            session.setAttribute("p3",p);
    
            rtype="Duplex Non-A/c";
            i=Integer.parseInt(request.getParameter("txtid3"));
            int cdna=count(rtype,cin,cout,i,a4);  
            session.setAttribute("a4",a4);
            if(a4[0]!=0) 
                p=price(rtype,i);
            else 
                p=0;
            session.setAttribute("p4",p);
    
            rtype="Family A/c";
            i=Integer.parseInt(request.getParameter("txtid4"));
            int cfa=count(rtype,cin,cout,i,a5); 
            session.setAttribute("a5",a5);
            if(a5[0]!=0) 
                p=price(rtype,i);
            else 
                p=0;
            session.setAttribute("p5",p);

            rtype="Family Non-A/c";
            i=Integer.parseInt(request.getParameter("txtid5"));
            int cfna=count(rtype,cin,cout,i,a6); 
            session.setAttribute("a6",a6); 
            if(a6[0]!=0) 
                p=price(rtype,i);
            else 
                p=0;
            session.setAttribute("p6",p);
            
            response.sendRedirect("cartnew.jsp");
        }    
    }
  }catch(Exception e){} 
 %>