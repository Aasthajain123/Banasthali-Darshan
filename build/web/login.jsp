<%-- 
    Document   : login
    Created on : Feb 12, 2020, 6:54:57 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LOGIN</title>
        <link rel="stylesheet" type="text/css" href="style/logincss.css" >
        
    </head>
    <body>
        <div class="loginbox">
            <img src="images/user.png" class="avatar">
            <h1>Login Here</h1>
            <form>
                <p>E-mail:</p>
                <input type="text" name="txtid" placeholder="Enter e-mail id"/>
                <p>Password:</p>
                <input type="password" name="txtpwd" placeholder="Enter Password" />
                <input type="submit" name="btnlogin" value='LOGIN'/>
                <a href="${pageContext.request.contextPath}/html/forgot.jsp">Forgot Password?</a><br/>
                <a href="${pageContext.request.contextPath}/html/register.jsp">Don't have an account? SIGN UP!</a>
      
<%
    try
    {
        String eid,psswd;
        eid=request.getParameter("txtid");
        session.setAttribute("email",eid);
        psswd=request.getParameter("txtpwd");
        session.setAttribute("password",psswd);
        if(request.getParameter("btnlogin")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/ADBLogin");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("Select * from login where eid='"+eid+"'and password='"+psswd+"'");
            boolean status=rs.next();
            if(status)
            {
                response.sendRedirect("html/index.html") ;
            }
            else
            {
                %><p>INVALID USER!<br/>ENTER AGAIN!</p><%
            }
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