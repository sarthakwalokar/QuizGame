<!DOCTYPE html>
<html>
<head>
    <title>Quiz Quest</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            background: #0f172a;
            color: white;
        }

        .container {
            margin-top: 150px;
        }

        h1 {
            font-size: 40px;
            margin-bottom: 20px;
        }

        button {
            padding: 12px 25px;
            font-size: 18px;
            background: #22c55e;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            color: white;
        }

        button:hover {
            background: #16a34a;
        }
    </style>
</head>

<body>
    <div class="container">
    <%
String name=(String)session.getAttribute("name");
int score=(int)session.getAttribute("score");
%>
<h2>Welcome, <%=name %></h2>
<h2>XP:<%=score %></h2>
        <h1>Quiz Quest</h1>
        <p>Test your brain. Earn XP. Level up </p>

        <form action="question" method="get">
            <button type="submit">Start Game</button>
        </form>
    </div>
</body>
</html>