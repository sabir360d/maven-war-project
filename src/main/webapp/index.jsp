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
    font-size: 2.6em;
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
    font-size: 1.25em;
  }

  /* Infinity Loop Wrapper */
  .infinity-wrapper {
    position: relative;
    width: 320px;
    height: 160px;
    margin: 0 auto 40px;
    perspective: 1200px;
    animation: float 6s ease-in-out infinite;
  }

  /* Infinity Loop */
  .loop {
    position: absolute;
    width: 100%;
    height: 100%;
    border: 8px solid #00ffc8;
    border-radius: 50% 50% 0 50%;
    box-shadow: 0 0 40px #00ffc8;
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
    box-shadow: 0 0 40px #00ffc8;
    transform: rotate(90deg);
  }

  /* Labels */
  .label {
    position: absolute;
    font-size: 1em;
    font-weight: 700;
    color: #00ffc8;
    text-shadow: 0 0 10px #00ffc8;
    transform-origin: 50% 90px;
    animation: orbit 12s linear infinite;
  }
  .label span {
    background: rgba(10, 25, 47, 0.85);
    padding: 6px 12px;
    border-radius: 8px;
    border: 1.5px solid rgba(0, 255, 200, 0.5);
  }

  /* Label positions around the loop */
  .label:nth-child(2) { transform: rotate(0deg) translateY(-105px); animation-delay: 0s; }
  .label:nth-child(3) { transform: rotate(60deg) translateY(-105px); animation-delay: -2s; }
  .label:nth-child(4) { transform: rotate(120deg) translateY(-105px); animation-delay: -4s; }
  .label:nth-child(5) { transform: rotate(180deg) translateY(-105px); animation-delay: -6s; }
  .label:nth-child(6) { transform: rotate(240deg) translateY(-105px); animation-delay: -8s; }
  .label:nth-child(7) { transform: rotate(300deg) translateY(-105px); animation-delay: -10s; }

  /* Animations */
  @keyframes spin {
    from { transform: rotate(45deg); }
    to { transform: rotate(405deg); }
  }

  @keyframes orbit {
    0%   { transform: rotate(var(--start,0deg)) translateY(-105px) rotate(0deg); }
    100% { transform: rotate(calc(var(--start,0deg) + 360deg)) translateY(-105px) rotate(-360deg); }
  }

  @keyframes float {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-15px); }
  }

  /* Button Styling */
  .btn-launch {
    display: inline-block;
    background-color: transparent;
    border: 2px solid #00ffc8;
    color: #00ffc8;
    padding: 12px 30px;
    border-radius: 12px;
    font-size: 1.15em;
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

  <div class="infinity-wrapper" aria-label="Animated infinity loop representing DevOps cycle">
    <div class="loop"></div>
    <div class="label" style="--start: 0deg;"><span>Code</span></div>
    <div class="label" style="--start: 60deg;"><span>Build</span></div>
    <div class="label" style="--start: 120deg;"><span>Test</span></div>
    <div class="label" style="--start: 180deg;"><span>Deploy</span></div>
    <div class="label" style="--start: 240deg;"><span>Monitor</span></div>
    <div class="label" style="--start: 300deg;"><span>Repeat</span></div>
  </div>

  <p style="color:#a3fff4; font-weight: 600; margin-bottom: 10px;">✅ JSP environment is live and futuristic!</p>

  <a href="<%= request.getContextPath() %>/webapp/hello" class="btn-launch" role="button" aria-label="Launch servlet">Launch Servlet</a>

</body>
</html>
