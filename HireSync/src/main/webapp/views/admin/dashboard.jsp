<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin dashboard</title>
</head>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/dashboard.css">
<body>

<%
String name=(String)session.getAttribute("name");
%>
<div class="header">
<svg width="400" height="120" viewBox="0 0 400 120" xmlns="http://www.w3.org/2000/svg">

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
<h3>Welcome , <%=name %></h3>
</div>
</body>
</html>