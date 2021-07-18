<%-- 
    Document   : register
    Created on : Feb 13, 2020, 8:02:25 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>REGISTER</title>
        <link rel="stylesheet" type="text/css" href="../style/registercss.css" />
    </head>
    <body>
        <div class="registerbox">
            <h1>Register Here</h1>
            <form>
                <p>E-mail:</p>
                <input type="text" name="txtid" pattern=".+@gmail.com" required placeholder="Enter e-mail" title="Enter valid Email address"/>
                <p>Name:</p>
                <input type="text" name="txtfname" minlength=3 pattern="[a-zA-Z]+" title="Please enter alphabets only" required placeholder="Enter First Name" />
                <p>Last Name:</p>
                <input type="text" name="txtlname" pattern="[a-zA-Z]+" title="Please enter alphabets only" required placeholder="Enter Last Name"/>
                <p>Contact No.</p>
                <input type="text" name="txtno" pattern="[0-9]{10}" required placeholder="Enter Mobile Number" title="please enter 10 digit mobile no."/>
                <p>Password:</p>
                <input type="password" minlength=8 name="txtpwd" required placeholder="Enter Password"/>
                <p>What is your Native Place:</p>
                <input type="text" name="txtfor" required placeholder="Enter Place"/>
               
                <input type="submit" name="btnsup" value="SIGN UP"/>
                
<%
    try{
        String e_mail,fname,lname,number,psswd,forgot;
        e_mail=request.getParameter("txtid");
        fname=request.getParameter("txtfname");
        lname=request.getParameter("txtlname");
        number=request.getParameter("txtno");
        psswd=request.getParameter("txtpwd");
        forgot=request.getParameter("txtfor");
        if(request.getParameter("btnsup")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
            Statement stat=conn.createStatement();
            int x=stat.executeUpdate("insert into login values('"+e_mail+"', '"+fname+"', '"+lname+"', "+number+", '"+psswd+"', '"+forgot+"')");
            if(x>0)
            {
                response.sendRedirect("../login.jsp");
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
        </div>
    </body>
</html>
