<%-- 
    Document   : logout
    Created on : May 23, 2020, 10:59:18 PM
    Author     : Acer
--%>

<%
    try{
        session.removeAttribute("email");
        session.removeAttribute("password");
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.sendRedirect("../login.jsp");
    }catch(Exception e){}
%>