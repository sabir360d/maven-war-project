<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NIT Academy - DevOps Lab</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 60px 20px;
        }
        h1 {
            font-size: 2.8em;
            color: #00c6ff;
            text-shadow: 2px 2px 10px rgba(0,0,0,0.4);
            margin-bottom: 10px;
        }
        h2 {
            font-weight: 400;
            font-size: 1.5em;
            color: #e0e0e0;
            margin-top: 10px;
        }
        .highlight {
            color: #00ffb3;
            font-weight: 600;
        }
        .cta {
            margin-top: 40px;
            font-size: 1.2em;
        }
        a {
            color: #00c6ff;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #00ffb3;
        }
    </style>
</head>
<body>
    <h1>🚀 Welcome to <span class="highlight">NIT Academy DevOps Hub</span></h1>
    <h2>Continuous Integration • Continuous Deployment • Continuous Learning</h2>
    <h2>Empowering your journey from <span class="highlight">Code → Build → Deploy → Success</span></h2>

    <div class="cta">
        <p>✅ JSP is running successfully!</p>
        <p>Try the servlet here 👉 
           <a href="<%= request.getContextPath() %>/hello"><%= request.getContextPath() %>/hello</a>
        </p>
    </div>
</body>
</html>