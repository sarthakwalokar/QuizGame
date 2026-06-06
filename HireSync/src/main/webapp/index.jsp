<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HireSync - Smart Hiring Platform</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
font-family:Times new roman,serif;
    background-color:#f8fafc;
}

/* Navbar */
.navbar{
    background:white;
    box-shadow:0 2px 10px rgba(0,0,0,0.05);
}

.logo{
    font-size:28px;
    font-weight:bold;
    color:#0d6efd;
}

/* Hero Section */
.hero{
    min-height:80vh;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
}

.hero h1{
    font-size:3.5rem;
    font-weight:700;
    color:#0f172a;
}

.hero p{
    font-size:1.2rem;
    color:#64748b;
    max-width:700px;
    margin:auto;
}

/* Feature Cards */
.feature-card{
    background:white;
    border:none;
    border-radius:15px;
    padding:25px;
    transition:0.3s;
    height:100%;
    box-shadow:0 4px 15px rgba(0,0,0,0.05);
}

.feature-card:hover{
    transform:translateY(-5px);
}

/* Footer */
footer{
    background:#0f172a;
    color:white;
    padding:20px;
    text-align:center;
    margin-top:80px;
}
</style>

</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">

       <svg width="300" height="80" viewBox="0 0 400 120" xmlns="http://www.w3.org/2000/svg">

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

        <div class="ms-auto">

            <a href="views/authentication/login.jsp"
               class="btn btn-outline-primary me-2">
                Login
            </a>

            <a href="views/authentication/signup.jsp"
               class="btn btn-primary">
                Sign Up
            </a>

        </div>

    </div>
</nav>

<!-- Hero Section -->
<section class="hero">
    <div class="container">

        <h1>Smart Hiring Made Simple</h1>

        <p class="mt-3">
            HireSync helps recruiters discover top talent and enables
            candidates to find the right opportunities through an
            intelligent hiring ecosystem.
        </p>

        <div class="mt-4">
            <a href="views/authentication/signup.jsp"
               class="btn btn-primary btn-lg me-2">
                Get Started
            </a>

            <a href="#features"
               class="btn btn-outline-secondary btn-lg">
                Learn More
            </a>
        </div>

    </div>
</section>

<!-- Features -->
<section id="features" class="container mb-5">

    <div class="text-center mb-5">
        <h2>Platform Features</h2>
        <p class="text-muted">
            Everything needed for a modern hiring process.
        </p>
    </div>

    <div class="row g-4">

        <div class="col-md-4">
            <div class="feature-card">
                <h4>Resume Management</h4>
                <p>
                    Upload, manage and organize resumes efficiently.
                </p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <h4>Job Posting</h4>
                <p>
                    Recruiters can create and manage job openings easily.
                </p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <h4>Candidate Ranking</h4>
                <p>
                    Rank applicants based on skills, experience and profile quality.
                </p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <h4>Interview Scheduling</h4>
                <p>
                    Schedule interviews and manage hiring workflows.
                </p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <h4>Notifications</h4>
                <p>
                    Stay updated with application and interview alerts.
                </p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <h4>Analytics Dashboard</h4>
                <p>
                    Gain insights into hiring trends and recruitment performance.
                </p>
            </div>
        </div>

    </div>

</section>

<!-- How It Works -->
<section class="container my-5">

    <div class="row">

        <div class="col-md-6">
            <h3>For Candidates</h3>
            <ul>
                <li>Create your profile</li>
                <li>Upload your resume</li>
                <li>Apply for jobs</li>
                <li>Track applications</li>
            </ul>
        </div>

        <div class="col-md-6">
            <h3>For Recruiters</h3>
            <ul>
                <li>Create company account</li>
                <li>Post jobs</li>
                <li>Review candidates</li>
                <li>Schedule interviews</li>
            </ul>
        </div>

    </div>

</section>

<!-- Footer -->
<footer>
    <h5>HireSync</h5>
    <p>Smart Hiring & Interview Platform</p>
    <p>© 2026 All Rights Reserved</p>
</footer>

</body>
</html>