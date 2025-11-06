<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NIT Academy DevOps Innovation Lab</title>
<style>
  body {
    background: #f5f7fa;
    color: #1e2a38;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
    padding: 60px 20px;
  }

  h1 {
    font-size: 2.4em;
    font-weight: 800;
    color: #004c91;
    margin-bottom: 0.2em;
  }

  p.subtitle {
    font-size: 1.1em;
    color: #444;
    margin: 0.2em 0 1em;
  }

  p.highlight {
    font-weight: 600;
    color: #0077b6;
    margin-bottom: 40px;
    font-size: 1.1em;
  }

  /* Infinity Loop Container */
  .infinity-wrapper {
    position: relative;
    width: 320px;
    height: 150px;
    margin: 40px auto;
  }

  /* Infinity Loop Circles */
  .loop::before,
  .loop::after {
    content: "";
    position: absolute;
    width: 140px;
    height: 140px;
    border: 4px solid #0077b6;
    border-radius: 50%;
    top: 5px;
    background-color: transparent;
  }

  .loop::before {
    left: 0;
  }

  .loop::after {
    right: 0;
  }

  /* Connecting middle curve to complete infinity shape */
  .loop::after {
    clip-path: polygon(0 0, 50% 0, 50% 100%, 0 100%);
  }
  .loop::before {
    clip-path: polygon(50% 0, 100% 0, 100% 100%, 50% 100%);
  }

  /* DevOps Steps */
  .step {
    position: absolute;
    font-size: 0.9em;
    font-weight: 600;
    color: #004c91;
    transition: transform 0.2s ease;
    cursor: default;
  }

  .step:hover {
    transform: scale(1.15);
  }

  /* Step positions */
  .step1 { top: 12%; left: 18%; }   /* Code */
  .step2 { top: 12%; right: 18%; }  /* Build */
  .step3 { top: 45%; right: 5%; }   /* Test */
  .step4 { bottom: 12%; right: 24%; } /* Deploy */
  .step5 { bottom: 12%; left: 24%; }  /* Monitor */
  .step6 { top: 45%; left: 5%; }    /* Repeat */

  /* Button Styling */
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
  <p class="highlight">Master the art of Code → Build → Deploy → Scale</p>

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

  <p style="color:#333; font-weight: 600; margin-bottom: 10px;">
    ✅ JSP environment is live and production-ready!
  </p>

  <a href="<%= request.getContextPath() %>/webapp/hello" class="btn-launch" role="button" aria-label="Launch servlet">
    Launch Servlet
  </a>

</body>
</html>
