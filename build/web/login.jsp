<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String email = request.getParameter("email");

    session.setAttribute("email", email);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Processing</title>
</head>
<body>
    <script>
        var email = '<%= session.getAttribute("email") %>';
        
        localStorage.setItem("email", email);
        
        window.location.href = 'profile.html';
    </script>
</body>
</html>
