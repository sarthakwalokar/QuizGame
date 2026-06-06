<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/login.css">
</head>
<% String error = (String) request.getAttribute("error"); %>

<script>
    var errorMsg = "<%= error != null ? error : "" %>";

    if(errorMsg !== ""){
        alert(errorMsg);
    }
</script>
<body>
<div class="header">
<svg width="400" height="80" viewBox="0 0 400 120" xmlns="http://www.w3.org/2000/svg">

    <circle cx="60" cy="60" r="40" fill="#2563EB"/>

    <path d="M45 35V85M75 35V85M45 60H75"
          stroke="white"
          stroke-width="6"
          stroke-linecap="round"/>

    <path d="M50 68L60 78L80 48"
          stroke="#22C55E"
          stroke-width="5"
          fill="none"
          stroke-linecap="round"
          stroke-linejoin="round"/>

    <text x="120" y="68"
          font-family="Segoe UI, Arial, sans-serif"
          font-size="36"
          font-weight="bold"
          fill="#111827">
        Hire<tspan fill="#2563EB">Sync</tspan>
    </text>

    <text x="122" y="92"
          font-family="Segoe UI, Arial, sans-serif"
          font-size="12"
          fill="#6B7280"
          letter-spacing="2">
        SMART HIRING PLATFORM
    </text>

</svg>

</div>
<form action="${pageContext.request.contextPath}/login" method="post">
    <h2>Login</h2>

    
    <input type="email" name="email" placeholder="Email" required>
    <br><br>

    <input type="password" name="password" placeholder="Password" required>
    <br><br>

    
    <button type="submit">Login</button><br><br>
    <a href="signup.jsp" >Sign Up</a>
</form>

</body>
</html>