<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NIT Academy | DevOps Innovation Lab</title>
    <style>
        /* --- Background Animation --- */
        @keyframes gradientFlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(-45deg, #0a192f, #172a45, #1e3c72, #2a5298);
            background-size: 400% 400%;
            animation: gradientFlow 12s ease infinite;
            color: #e6f1ff;
            text-align: center;
            margin: 0;
            padding: 60px 20px;
            overflow-x: hidden;
        }

        h1 {
            font-size: 3em;
            color: #64ffda;
            text-shadow: 0 0 15px rgba(100, 255, 218, 0.6);
            margin-bottom: 15px;
            letter-spacing: 1px;
            animation: fadeIn 1.5s ease-in-out;
        }

        h2 {
            font-weight: 400;
            font-size: 1.5em;
            color: #a8b2d1;
            margin-top: 10px;
            animation: fadeIn 2s ease-in-out;
        }

        .highlight {
            color: #00ffff;
            font-weight: 600;
            text-shadow: 0 0 10px rgba(0, 255, 255, 0.6);
        }

        /* --- Infinity Loop Container --- */
        .infinity-wrapper {
            position: relative;
            width: 250px;
            height: 120px;
            margin: 60px auto 40px;
            transform-style: preserve-3d;
            perspective: 1000px;
            animation: float 6s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        /* --- The Loop Shape --- */
        .loop {
            position: absolute;
            width: 100%;
            height: 100%;
            border: 5px solid #64ffda;
            border-radius: 50% 50% 0 50%;
            transform: rotate(45deg);
            box-shadow: 0 0 30px rgba(100, 255, 218, 0.6);
            animation: spin 10s linear infinite;
        }

        .loop::after {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            border: 5px solid #64ffda;
            border-radius: 50% 50% 0 50%;
            transform: rotate(90deg);
        }

        @keyframes spin {
            from { transform: rotate(0deg) scale(1); }
            to { transform: rotate(360deg) scale(1); }
        }

        /* --- Lifecycle Labels --- */
        .label {
            position: absolute;
            font-size: 0.9em;
            color: #64ffda;
            text-shadow: 0 0 5px rgba(100,255,218,0.7);
            animation: orbit 10s linear infinite;
            transform-origin: 50% 80px;
        }

        .label span {
            background: rgba(10, 25, 47, 0.8);
            padding: 3px 8px;
            border-radius: 6px;
            border: 1px solid rgba(100,255,218,0.4);
        }

        @keyframes orbit {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .label:nth-child(1) { transform: rotate(0deg) translateY(-90px); }
        .label:nth-child(2) { transform: rotate(60deg) translateY(-90px); }
        .label:nth-child(3) { transform: rotate(120deg) translateY(-90px); }
        .label:nth-child(4) { transform: rotate(180deg) translateY(-90px); }
        .label:nth-child(5) { transform: rotate(240deg) translateY(-90px); }
        .label:nth-child(6) { transform: rotate(300deg) translateY(-90px); }

        /* --- CTA Button --- */
        .cta {
            margin-top: 60px;
            font-size: 1.2em;
            animation: fadeInUp 2.5s ease-in-out;
        }

        a {
            color: #64ffda;
            text-decoration: none;
            font-weight: bold;
            padding: 12px 24px;
            border: 2px solid #64ffda;
            border-radius: 8px;
            transition: all 0.4s ease;
            display: inline-block;
            box-shadow: 0 0 15px rgba(100, 255, 218, 0.3);
        }

        a:hover {
            color: #0a192f;
            background: #64ffda;
            box-shadow: 0 0 25px rgba(100, 255, 218, 0.8);
            transform: scale(1.05);
        }

        footer {
            margin-top: 80px;
            font-size: 0.9em;
            color: #8892b0;
            animation: fadeIn 3s ease-in-out;
        }

        /* --- Animations --- */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <h1>🚀 Welcome to the <span class="highlight">NIT Academy DevOps Innovation Lab</span></h1>
    <h2>Where Ideas Build. Pipelines Flow. Deployments Fly.</h2>
    <h2>Master the art of <span class="highlight">Code → Build → Deploy → Scale</span></h2>

    <!-- Infinity Loop Animation -->
    <div class="infinity-wrapper">
        <div class="loop"></div>
        <div class="label"><span>Code</span></div>
        <div class="label"><span>Build</span></div>
        <div class="label"><span>Test</span></div>
        <div class="label"><span>Deploy</span></div>
        <div class="label"><span>Monitor</span></div>
        <div class="label"><span>Repeat</span></div>
    </div>

    <div class="cta">
        <p>✅ JSP environment is live and futuristic!</p>
        <p>Experience the Servlet in action 👇</p>
        <a href="<%= request.getContextPath() %>/hello">
            Launch Servlet
        </a>
    </div>

    <footer>
        <p>© <%= java.time.Year.now() %> NIT Academy | Built with ⚙️ Automation & 💡 Innovation</p>
    </footer>
</body>
</html>
