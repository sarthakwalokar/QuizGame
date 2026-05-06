<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<style>
/* 🌌 Background */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: radial-gradient(circle at top, #0f172a, #020617);
    color: #fff;
}

/* 🧊 Glass Card */
form {
    background: rgba(30, 41, 59, 0.75);
    backdrop-filter: blur(12px);
    padding: 30px;
    border-radius: 16px;
    width: 360px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.6);
}

/* ✨ Inputs */
input[type="text"],
input[type="email"] {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid rgba(255,255,255,0.1);
    border-radius: 10px;
    background: rgba(15, 23, 42, 0.6);
    color: #fff;
    outline: none;
    transition: 0.2s;
}

input:focus {
    border-color: #38bdf8;
    box-shadow: 0 0 10px rgba(56,189,248,0.3);
}

/* 🚀 Button */
button {
    width: 100%;
    padding: 12px;
    margin-top: 12px;
    border: none;
    border-radius: 10px;
    background: linear-gradient(135deg, #22c55e, #16a34a);
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.2s;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(34,197,94,0.3);
}

/* 🔗 Link */
a {
    display: block;
    text-align: center;
    margin-top: 12px;
    color: #38bdf8;
    text-decoration: none;
    font-size: 14px;
}

a:hover {
    text-decoration: underline;
}
</style>
   <form action="register" method="post">
   <input type="text" name="name" placeholder="Name" required><br>
   <input type="email" name="email" placeholder="Email" required><br><br>
   
   <button type="submit">Complete</button>
   <a href="login.jsp">Already have account</a>
   </form>
</body>
</html>