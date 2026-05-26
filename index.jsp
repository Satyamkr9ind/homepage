<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ISRO Enterprise Recruitment Portal</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700;800&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/all.min.css">  <script src="js/gsap.min.js"></script>
</head>

<body>

<div class="earth-glow"></div>

<jsp:include page="navbar.jsp" />

<section class="hero">

  <div class="glass-card carousel-container">
    <div class="carousel-track" id="carouselTrack">
      <img src="image/feature1.jpg" alt="Mission Highlight 1" class="carousel-img">
      <img src="image/feature2.jpg" alt="Mission Highlight 2" class="carousel-img">
      <img src="image/feature3.jpg" alt="Mission Highlight 3" class="carousel-img">
    </div>
    
    <div class="carousel-dots">
      <span class="dot active" onclick="moveCarousel(0)"></span>
      <span class="dot" onclick="moveCarousel(1)"></span>
      <span class="dot" onclick="moveCarousel(2)"></span>
    </div>
  </div>

    <div class="glass-card auth-card" style="margin-top: 7%;">
    <h2>System Login</h2>
    <p id="loginError" class="error-msg"></p>

    <div class="input-box input-group">
      <input type="text" id="userId" placeholder="Enter username">
      <span class="domain-suffix">@gmail.com</span>
    </div>

    <div class="input-box">
      <input type="password" id="passwordInput" placeholder="Password">
    </div>

    <button class="btn-primary" onclick="handleLogin()">
      Authenticate
    </button>

    <div class="auth-links">
      <a href="recover.jsp">Recover Access</a>
      <a href="signup.jsp">New User? Register</a>
    </div>
  </div>

</section>

<div class="auth-success-overlay" id="authSuccessOverlay">
    <div class="countdown" id="countdown">3</div>
    <div class="launch-area">
        <div class="rocket-wrapper" id="rocketWrapper">
            <div class="rocket-body">
                <div class="rocket-window"></div>
                <div class="rocket-fin left-fin"></div>
                <div class="rocket-fin right-fin"></div>
                <div class="rocket-engine"></div>
                <div class="flame"></div>
            </div>
        </div>
        <div class="smoke-container" id="smokeContainer"></div>
    </div>
</div>

<section>
  <h2 class="section-title">System Statistics</h2>
  <div class="stats-grid">
    <div class="glass-card stat-card">
      <div class="stat-number" data-target="150000">0</div>
      <div class="stat-text">Total Visitors</div>
    </div>
    <div class="glass-card stat-card">
      <div class="stat-number" data-target="54000">0</div>
      <div class="stat-text">Total Applications</div>
    </div>
    <div class="glass-card stat-card">
      <div class="stat-number" data-target="1200">0</div>
      <div class="stat-text">Active Requisitions</div>
    </div>
    <div class="glass-card stat-card">
      <div class="stat-number" data-target="46000">0</div>
      <div class="stat-text">Approved Requests</div>
    </div>
  </div>
</section>

<section id="tracking">
  <h2 class="section-title">Track Application</h2>
  <div class="glass-card tracking-module">
    <h3>Verification Console</h3>
    <div class="tracking-input">
      <input type="text" id="referenceId" placeholder="Enter Application Reference ID">
      <button class="tracking-btn" onclick="fetchJobStatus()">
        Check Status
      </button>
    </div>

    <div class="radar" id="radar"></div>

    <div class="glass-card result-card" id="resultCard">
      <p><strong>Reference Number:</strong> ISRO-2045-X</p>
      <p><strong>Candidate Name:</strong> Aryan Sharma</p>
      <p><strong>Department:</strong> Orbital Research</p>
      <p><strong>Status:</strong> Under Review</p>
      <p><strong>Verification State:</strong> Verified</p>
      <p><strong>Approval State:</strong> Pending Final Approval</p>
    </div>
  </div>
</section>

<section>
  <h2 class="section-title">Dashboard Analytics</h2>
  <h4 class="section-title">Surface Treatment</h4>
  <div class="dashboard-grid">
    <div class="glass-card dashboard-card blue-glow">
      ST Jobs
      <h1>245</h1>
    </div>
    <div class="glass-card dashboard-card purple-glow">
      TP Jobs
      <h1>186</h1>
    </div>
    <div class="glass-card dashboard-card green-glow">
      Approved
      <h1>542</h1>
    </div>
    <div class="glass-card dashboard-card orange-glow">
      Pending
      <h1>89</h1>
    </div>
  </div>
  <br><br>
  <h4 class="section-title">Thermal Painting</h4>
  <div class="dashboard-grid">
    <div class="glass-card dashboard-card blue-glow">
      ST Jobs
      <h1>245</h1>
    </div>
    <div class="glass-card dashboard-card purple-glow">
      TP Jobs
      <h1>186</h1>
    </div>
    <div class="glass-card dashboard-card green-glow">
      Approved
      <h1>542</h1>
    </div>
    <div class="glass-card dashboard-card orange-glow">
      Pending
      <h1>89</h1>
    </div>
  </div>
</section>

<section id="features">
  <h2 class="section-title">System Capabilities</h2>
  <div class="features-grid-modern">
    <div class="glass-card feature-card-modern">
      <div class="feature-watermark">01</div>
      <div class="feature-icon-box">
        <i class="fas fa-shield-alt"></i>
      </div>
      <h3>Secure Authentication</h3>
      <p>Advanced multi-layer authentication with encrypted enterprise-grade protection.</p>
    </div>
    <div class="glass-card feature-card-modern">
      <div class="feature-watermark">02</div>
      <div class="feature-icon-box">
        <i class="fas fa-satellite"></i>
      </div>
      <h3>Real-Time Tracking</h3>
      <p>Monitor application progress with live verification and approval updates.</p>
    </div>
    <div class="glass-card feature-card-modern">
      <div class="feature-watermark">03</div>
      <div class="feature-icon-box">
        <i class="fas fa-chart-line"></i>
      </div>
      <h3>Analytics Dashboard</h3>
      <p>Advanced operational metrics and modern data visualization modules.</p>
    </div>
    <div class="glass-card feature-card-modern">
      <div class="feature-watermark">04</div>
      <div class="feature-icon-box">
        <i class="fas fa-user-check"></i>
      </div>
      <h3>Multi-Level Verification</h3>
      <p>Integrated validation workflows for secure candidate approvals.</p>
    </div>
    <div class="glass-card feature-card-modern">
      <div class="feature-watermark">05</div>
      <div class="feature-icon-box">
        <i class="fas fa-lock"></i>
      </div>
      <h3>Data Security</h3>
      <p>Government-grade infrastructure with secure internal communication channels.</p>
    </div>
    <div class="glass-card feature-card-modern">
      <div class="feature-watermark">06</div>
      <div class="feature-icon-box">
        <i class="fas fa-bell"></i>
      </div>
      <h3>Automated Updates</h3>
      <p>Receive instant notifications and automated system alerts.</p>
    </div>
  </div>
</section>

<section id="contact">
  <h2 class="section-title">System Administration Team</h2>
  <div class="team-grid">
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member1.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Aryan Sharma</h3>
      <p class="member-role">Systems Director</p>
      <p class="member-email">aryan@isroportal.gov</p>
    </div>
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member2.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Priya Patel</h3>
      <p class="member-role">Software Engineer</p>
      <p class="member-email">priya@isroportal.gov</p>
    </div>
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member3.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Vikram Singh</h3>
      <p class="member-role">Security Specialist</p>
      <p class="member-email">vikram@isroportal.gov</p>
    </div>
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member4.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Neha Gupta</h3>
      <p class="member-role">Database Lead</p>
      <p class="member-email">neha@isroportal.gov</p>
    </div>
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member5.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Rohan Desai</h3>
      <p class="member-role">Data Analyst</p>
      <p class="member-email">rohan@isroportal.gov</p>
    </div>
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member6.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Ananya Rao</h3>
      <p class="member-role">Cloud Architect</p>
      <p class="member-email">ananya@isroportal.gov</p>
    </div>
    <div class="glass-card team-card">
      <div class="member-img-wrapper">
        <img src="image/member7.jpg" alt="Team Member" class="member-img">
      </div>
      <h3>Kabir Khan</h3>
      <p class="member-role">Infrastructure Architect</p>
      <p class="member-email">kabir@isroportal.gov</p>
    </div>
  </div>
</section>

<footer>
  © 2026 ISRO Enterprise Portal — All Rights Reserved
</footer>

<script src="js/script.js"></script>
</body>
</html>