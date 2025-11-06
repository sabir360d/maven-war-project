<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NIT Academy DevOps Innovation Lab</title>
<style>
  body {
    background: #f5f7fa;
    color: #1e2a38;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    padding: 50px 20px;
  }

  h1 {
    font-size: 2.4em;
    font-weight: 800;
    color: #004c91;
  }

  p.subtitle {
    font-size: 1.1em;
    color: #444;
    margin: 0.5em 0 1.5em;
  }

  p.highlight {
    font-weight: 600;
    color: #0077b6;
    margin-bottom: 40px;
    font-size: 1.1em;
  }

  /* Infinity Loop Container */
  .infinity-container {
    position: relative;
    width: 600px;
    height: 300px;
    margin: 40px auto;
  }

  svg {
    width: 100%;
    height: 100%;
  }

  .label {
    font-size: 14px;
    font-weight: 600;
    fill: #1e2a38;
  }

  .dev {
    fill: #f4c542;
  }

  .ops {
    fill: #1e73be;
  }

  .btn-launch {
    display: inline-block;
    background-color: #0077b6;
    border: none;
    color: #fff;
    padding: 12px 30px;
    border-radius: 8px;
    font-size: 1em;
    font-weight: 600;
    cursor: pointer;
    text-decoration: none;
    transition: background-color 0.3s ease;
  }

  .btn-launch:hover {
    background-color: #005f8d;
  }
</style>
</head>
<body>

  <h1>🚀 Welcome to the <span style="color:#0077b6;">NIT Academy DevOps Innovation Lab</span></h1>
  <p class="subtitle">Where Ideas Build. Pipelines Flow. Deployments Fly.</p>
  <p class="highlight">Master the art of Code → Build → Test → Release → Deploy → Monitor → Plan → Repeat</p>

  <div class="infinity-container">
    <svg viewBox="0 0 600 300">
      <!-- Left Loop (DEV) -->
      <path d="M150,150
               C150,70 50,70 50,150
               C50,230 150,230 150,150
               Z" class="dev"></path>

      <!-- Right Loop (OPS) -->
      <path d="M450,150
               C450,70 550,70 550,150
               C550,230 450,230 450,150
               Z" class="ops"></path>

      <!-- Connector -->
      <path d="M150,150 C200,100 400,100 450,150 
               C400,200 200,200 150,150 Z" fill="#eaeaea"></path>

      <!-- Labels -->
      <text x="100" y="110" class="label">Code</text>
      <text x="100" y="200" class="label">Build</text>
      <text x="220" y="100" class="label">Test</text>
      <text x="280" y="150" class="label">Release</text>
      <text x="380" y="100" class="label">Deploy</text>
      <text x="480" y="150" class="label">Operate</text>
      <text x="380" y="210" class="label">Monitor</text>
      <text x="230" y="210" class="label">Plan</text>

      <!-- DEV / OPS center labels -->
      <text x="120" y="155" font-size="30" font-weight="800" fill="#1e2a38">DEV</text>
      <text x="430" y="155" font-size="30" font-weight="800" fill="#1e2a38">OPS</text>
    </svg>
  </div>

  <p style="color:#333; font-weight: 600; margin-bottom: 10px;">
    ✅ JSP environment is live and production-ready!
  </p>

  <a href="<%= request.getContextPath() %>/webapp/hello" class="btn-launch" role="button" aria-label="Launch servlet">
    Launch Servlet
  </a>

</body>
</html>
