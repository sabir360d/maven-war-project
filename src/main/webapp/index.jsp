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
    margin: 40px auto;
  }

  /* Infinity Loop Structure */
  .loop {
    position: relative;
    width: 100%;
    height: 100%;
  }

  .loop::before,
  .loop::after {
    content: "";
    position: absolute;
    width: 130px;
    height: 130px;
    border: 6px solid #00ffc8;
    border-radius: 50%;
    top: 10px;
    box-shadow: 0 0 20px #00ffc8;
  }

  .loop::before {
    left: 0;
  }

  .loop::after {
    right: 0;
  }

  /* DevOps Step Labels */
  .step {
    position: absolute;
    font-size: 0.9em;
    font-weight: bold;
    color: #00ffc8;
    text-shadow: 0 0 5px #00ffc8;
    transition: color 0.3s ease, text-shadow 0.3s ease, transform 0.2s ease;
    cursor: pointer;
  }

  .step:hover {
    color: #0a1930;
    text-shadow: 0 0 20px #00ffc8, 0 0 40px #00ffc8;
    transform: scale(1.2);
  }

  /* Step positions inside the loop */
  .step1 { top: 10%; left: 15%; }   /* Code */
  .step2 { top: 10%; right: 15%; }  /* Build */
  .step3 { top: 45%; right: 5%; }   /* Test */
  .step4 { bottom: 10%; right: 25%; } /* Deploy */
  .step5 { bottom: 10%; left: 25%; }  /* Monitor */
  .step6 { top: 45%; left: 5%; }    /* Repeat */

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

  <p style="color:#a3fff4; font-weight: 600; margin-bottom: 10px;">
    ✅ JSP environment is live and futuristic!
  </p>

  <a href="<%= request.getContextPath() %>/webapp/hello" class="btn-launch" role="button" aria-label="Launch servlet">
    Launch Servlet
  </a>

</body>
</html>
