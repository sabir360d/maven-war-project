<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NIT Academy DevOps Innovation Lab</title>
<style>
  body {
    background: #0a1930;
    color: #00ffc8;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    padding: 60px 20px;
  }

  h1 {
    font-size: 2.4em;
    font-weight: 900;
    text-shadow: 0 0 15px #00ffc8;
    margin-bottom: 0.2em;
  }

  p.subtitle {
    font-size: 1.2em;
    font-weight: 400;
    color: #85fff7cc;
    margin: 0.2em 0 1em;
  }

  p.highlight {
    font-weight: 700;
    color: #00ffe0;
    margin-bottom: 40px;
    font-size: 1.2em;
  }

  /* Infinity Loop Container */
  .infinity-wrapper {
    position: relative;
    width: 300px;
    height: 150px;
    margin: 0 auto 40px;
    perspective: 1200px;
  }

  /* Infinity Loop Shape */
  .loop {
    position: relative;
    width: 100%;
    height: 100%;
    border: 8px solid #00ffc8;
    border-radius: 50% 50% 0 50%;
    box-shadow: 0 0 20px #00ffc8;
    transform: rotate(45deg);
    animation: spin 12s linear infinite;
  }

  .loop::after {
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    border: 8px solid #00ffc8;
    border-radius: 50% 50% 0 50%;
    box-shadow: 0 0 20px #00ffc8;
    transform: rotate(90deg);
  }

  /* Infinity Loop Steps Inside */
  .step {
    position: absolute;
    font-size: 0.9em;
    font-weight: bold;
    color: #00ffc8;
    text-shadow: 0 0 5px #00ffc8;
  }

  /* Position steps dynamically inside the loop */
  .step1 { top: 10%; left: 5%; transform: rotate(-20deg); }   /* Code */
  .step2 { top: 5%; left: 55%; transform: rotate(20deg); }   /* Build */
  .step3 { top: 40%; left: 80%; transform: rotate(45deg); }  /* Test */
  .step4 { top: 70%; left: 55%; transform: rotate(70deg); }  /* Deploy */
  .step5 { top: 60%; left: 5%; transform: rotate(-45deg); }  /* Monitor */
  .step6 { top: 35%; left: 35%; transform: rotate(0deg); }   /* Repeat */

  /* Animation for spinning */
  @keyframes spin {
    from { transform: rotate(45deg); }
    to { transform: rotate(405deg); }
  }

  /* Button Styling */
  .btn-launch {
    display: inline-block;
    background-color: transparent;
    border: 2px solid #00ffc8;
    color: #00ffc8;
    padding: 12px 30px;
    border-radius: 12px;
    font-size: 1em;
    font-weight: 700;
    cursor: pointer;
    text-decoration: none;
    box-shadow: 0 0 15px #00ffc8;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  .btn-launch:hover {
    background-color: #00ffc8;
    color: #002c27;
  }

</style>
</head>
<body>

  <h1>🚀 Welcome to the <span style="color:#64fff2;">NIT Academy DevOps Innovation Lab</span></h1>
  <p class="subtitle">Where Ideas Build. Pipelines Flow. Deployments Fly.</p>
  <p class="highlight">Master the art of <strong>Code → Build → Deploy → Scale</strong></p>

  <div class="infinity-wrapper" aria-label="DevOps Infinity Loop">
    <div class="loop">
      <div class="step step1">Code</div>
      <div class="step step2">Build</div>
      <div class="step step3">Test</div>
      <div class="step step4">Deploy</div>
      <div class="step step5">Monitor</div>
      <div class="step step6">Repeat</div>
    </div>
  </div>

  <p style="color:#a3fff4; font-weight: 600; margin-bottom: 10px;">✅ JSP environment is live and futuristic!</p>

  <a href="<%= request.getContextPath() %>/webapp/hello" class="btn-launch" role="button" aria-label="Launch servlet">Launch Servlet</a>

</body>
</html>
