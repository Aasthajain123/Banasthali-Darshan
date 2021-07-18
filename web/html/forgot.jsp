<%-- 
    Document   : forgot
    Created on : May 26, 2020, 7:59:51 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password: </title>
    </head>
    <body style="background: url(../images/login2.jpg) no-repeat center fixed; background-size: cover;">
      <form name="forgot" method="post">
          <div style="width: 28vw; height: 20vw; background: #000; color: #fff;box-sizing: border-box;
                top: 40%;left: 50%;position:absolute;transform: translate(-50%,-50%);padding: 6.5vw 3vw; 
                padding-top: 2vw;">
              <label style="margin: 0; padding: 0;font-weight: bold;font-size: 1.5vw;">E-MAIL: </label>
              <input type="text" name="text" style="border: none;border-bottom: 1px solid #fff;
                background: transparent; outline: none; height: 3.5vw; color: #ff9; font-size: 1.5vw;
                margin-bottom:0.75vw;" required placeholder="Enter email"/><br/>
            <label style="margin: 0; padding: 0;font-weight: bold;font-size: 1.5vw;">What is your Native Place: </label>
            <input type="text" name="txtform" style="border: none;border-bottom: 1px solid #fff;
                background: transparent; outline: none; height: 3.5vw; color: #ff9; font-size: 1.5vw;" 
                required placeholder="Enter Place"/>
            <input type="submit" name="btnform" style="border: none; outline: none;height: 3vw;
                background: aquamarine ;color: #000;font-size: 1.8vw;margin-top: 1vw;"
                value="NEXT"/>
        </div>
<%
    try{
        String forpwd,txt;
        forpwd=request.getParameter("txtform");
        txt=request.getParameter("text");
        System.out.println("for: "+forpwd);
        System.out.println("text: "+txt);
        if(request.getParameter("btnform")!=null)
        {
        System.out.println("for: "+forpwd);
        System.out.println("text: "+txt);            
        System.out.println("in");
        
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("Select eid from login where forgot='"+forpwd+"' and eid='"+txt+"'");
            boolean status=rs.next();
            if(status)
            {
        System.out.println("inner");
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                session.setAttribute("eid", txt);
                response.sendRedirect("change.jsp") ;
            }
            else
            {
%>
                <p>INVALID!<br/>ENTER AGAIN!</p>
<%
            }
        }
    }catch(Exception ex){ex.getMessage();}
%>
      </form>
    </body>
</html>