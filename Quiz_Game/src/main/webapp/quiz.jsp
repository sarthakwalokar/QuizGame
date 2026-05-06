<%@ page import="model.Question" %>
<%
Question q=(Question) request.getAttribute("q");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Quiz Question</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #0f172a;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: #1e293b;
            padding: 30px;
            border-radius: 12px;
            width: 400px;
            box-shadow: 0 0 20px rgba(0,0,0,0.5);
        }

        h2 {
            margin-bottom: 20px;
        }

        .option {
            display: block;
            background: #334155;
            padding: 10px;
            margin: 8px 0;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.2s;
        }

        .option:hover {
            background: #475569;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #22c55e;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
        }

        button:hover {
            background: #16a34a;
        }
        body {
    background: radial-gradient(circle at center, #0f172a, #020617);
    height: 100vh;
}

h4{
 position: fixed;
    top: 20px;
    left: 20px;
}
h3{
 position: fixed;
    top: 50px;
  left: 20px;
    }
/* Position */
.top-right {
    position: fixed;
    top: 20px;
    right: 20px;
}

/* Dropdown Style */
.dropdown {
    padding: 10px 14px;
    border-radius: 10px;
    border: 1px solid rgba(255,255,255,0.1);
    background: rgba(30, 41, 59, 0.6); /* dark glass */
    color: rgba(255,255,255,0.6); /* faded default text */
    backdrop-filter: blur(8px);
    outline: none;
    font-size: 14px;
    transition: 0.3s;
}

/* Hover */
.dropdown:hover {
    background: rgba(30, 41, 59, 0.8);
}

/* When selected */
.dropdown:valid {
    color: #fff;
}

/* Focus glow */
.dropdown:focus {
    border-color: #3b82f6;
    box-shadow: 0 0 8px rgba(59,130,246,0.5);
}
    </style>
</head>
<%
String name=(String)session.getAttribute("name");
int score=(int)session.getAttribute("score");
%>
<h4>Welcome, <%=name %></h4><br>
<h3>Points :<%=score %></h3>
<body>
<div class="top-right">
    <form action="category" method="get">
        <select class="dropdown" name="category" onchange="this.form.submit()">
            <option value="">Select Category</option>
            <option value="tech">Programming</option>
            <option value="dsa">DSA</option>
            <option value="web">Web Development</option>
            <option value="gk">General Knowledge</option>
            <option value="aptitude">Aptitude</option>
        </select>
    </form>
</div>

<div class="card">
    <h2><%= q.getQuestion() %></h2>

    <form action="answer" method="post">

        <label class="option">
            <input type="radio" name="answer" value="A"> <%= q.getOptionA() %>
        </label>

        <label class="option">
            <input type="radio" name="answer" value="B"> <%= q.getOptionB() %>
        </label>

        <label class="option">
            <input type="radio" name="answer" value="C"> <%= q.getOptionC() %>
        </label>

        <label class="option">
            <input type="radio" name="answer" value="D"> <%= q.getOptionD() %>
        </label>

        <input type="hidden" name="correct" value="<%= q.getCorrectAnswer() %>">

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>