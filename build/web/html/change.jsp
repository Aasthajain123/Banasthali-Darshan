<%-- 
    Document   : change.jsp
    Created on : May 26, 2020, 9:06:59 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body style="background: url(../images/login2.jpg) no-repeat center fixed; background-size: cover;">
      <form name="change" method="post">
        <div style="width: 28vw; height: 15vw; background: #000; color: #fff;box-sizing: border-box;
                top: 40%;left: 50%;position:absolute;transform: translate(-50%,-50%);padding: 6.5vw 3vw; 
                padding-top: 2vw;">
            <label style="margin: 0; padding: 0;font-weight: bold;font-size: 1.5vw;">Enter New Password: </label>
            <input type="text" name="txtpas1" style="border: none;border-bottom: 1px solid #fff;
                background: transparent; outline: none; height: 3.5vw; color: #ff9; font-size: 1.5vw;
                margin-bottom:0.75vw;" required placeholder="Enter Password"/>
            <input type="submit" name="btnpas" style="border: none; outline: none;height: 3vw;
                background: aquamarine ;color: #000;font-size: 1.8vw;margin-top: 1vw;" value="CHANGE"/>
        </div>
<%
    try{
        String newpwd;
        newpwd =request.getParameter("txtpas1");
        if(request.getParameter("btnpas")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
            Statement stat=conn.createStatement();
            int x =stat.executeUpdate("update login set password='"+newpwd+"' where EID='"+session.getAttribute("eid")+"'");
            if(x>0)
            {
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                if(session.getAttribute( "email")==  null)
                    response.sendRedirect("../login.jsp");
            }
            else
            {
%>
                <p>ERROR!<br/>ENTER AGAIN!</p>
<%
            }
        }
    }catch(Exception ex){ex.getMessage();}
%>   
      </form>
    </body>
</html>