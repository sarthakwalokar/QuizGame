<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #020617;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .result-box {
        background: #1e293b;
        padding: 40px;
        border-radius: 15px;
        text-align: center;
        width: 350px;
        box-shadow: 0 0 25px rgba(0,0,0,0.6);
    }

    h2 {
        font-size: 28px;
        margin-bottom: 20px;
    }

    .correct {
        color: #22c55e;
    }

    .wrong {
        color: #ef4444;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background: #3b82f6;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        transition: 0.2s;
    }

    a:hover {
        background: #2563eb;
    }
</style>

</head>
<body>

<div class="result-box">

    <h2 class="<%= request.getAttribute("result").toString().contains("Correct") ? "correct" : "wrong" %>">
        ${result}
    </h2>
    

    <a href="question">Next Question ➡️</a>

</div>

</body>
</html>