<%@ page import="model.Question, java.util.List" %>

<%
List<Question> questions = (List<Question>) session.getAttribute("questions");
Integer index = (Integer) session.getAttribute("index");

Question q = null;

if(questions != null && index != null && index < questions.size()){
    q = questions.get(index);
}
%>

<!DOCTYPE html>
<html>
<head>
<%
String name=(String)session.getAttribute("name");
int score=(int)session.getAttribute("score");
%>
<h4>Welcome, <%=name %></h4><br>
<h3>Points :<%=score %></h3>
    <title>Quiz Question</title>

    <style>
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
        body {
            font-family: Arial, sans-serif;
            background: radial-gradient(circle at center, #0f172a, #020617);
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

        /* TOP RIGHT AREA */
        .top-right {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 9999;
            display: flex;
            gap: 10px;
            align-items: center;
        }

        /* Dropdown */
        .dropdown {
            padding: 10px 14px;
            border-radius: 10px;
            border: 1px solid rgba(255,255,255,0.1);
            background: rgba(30, 41, 59, 0.6);
            color: rgba(255,255,255,0.6);
            backdrop-filter: blur(8px);
            outline: none;
            font-size: 14px;
        }

        .dropdown:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 8px rgba(59,130,246,0.5);
            color: white;
        }

        .dropdown:valid {
            color: white;
        }

        /* Refresh Button */
        .refresh-btn {
            background: rgba(30,41,59,0.7);
            border: none;
            padding: 10px;
            border-radius: 10px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .refresh-btn:hover {
            background: rgba(255,255,255,0.1);
        }
    </style>
</head>

<body>

<!-- TOP RIGHT CONTROLS -->
<div class="top-right">

    <!-- REFRESH BUTTON -->
    <button type="button" class="refresh-btn" >
        <a href="question"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M21 12a9 9 0 0 0-15.36-6.36L3 7'/%3E%3Cpath d='M3 3v4h4'/%3E%3Cpath d='M3 12a9 9 0 0 0 15.36 6.36L21 17'/%3E%3Cpath d='M21 21v-4h-4'/%3E%3C/svg%3E"
        width="22" height="22"></a>
    </button>

    <!-- CATEGORY DROPDOWN -->
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

<!-- NO QUESTION -->
<% if(q == null) { %>
    <div class="card">
        <h2>Select category to start quiz </h2>
    </div>
<% } else { %>

<!-- QUESTION CARD -->
<div class="card">
    <h2><%= q.getQuestion() %></h2>

    <form action="answer" method="post">

        <label class="option">
            <input type="radio" name="answer" value="A">
            <%= q.getOptionA() %>
        </label>

        <label class="option">
            <input type="radio" name="answer" value="B">
            <%= q.getOptionB() %>
        </label>

        <label class="option">
            <input type="radio" name="answer" value="C">
            <%= q.getOptionC() %>
        </label>

        <label class="option">
            <input type="radio" name="answer" value="D">
            <%= q.getOptionD() %>
        </label>

        <input type="hidden" name="correct" value="<%= q.getCorrectAnswer() %>">

        <button type="submit">Submit</button>
    </form>
</div>

<% } %>

</body>
</html>