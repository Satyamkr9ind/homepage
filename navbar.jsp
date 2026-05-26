<div class="goi-ribbon">
  <div class="goi-content">
    
    <div class="goi-left">
      <h3>EJRC Management System</h3>
    </div>

    <div class="goi-right">
      <a href="#">MISD</a> <span class="divider">|</span>
      <a href="#">SAC MAIL</a> <span class="divider">|</span>
      <a href="#">Akash</a>
    </div>

  </div>
</div>

<nav class="navbar">
  <div class="logo-container">
      <img src="image/sac.png" alt="SAC Logo" class="nav-logo">
  </div>
  
  <ul class="nav-links">
    <li><a href="index.jsp">Home</a></li>
    <li><a href="#features">Features</a></li>
    <li><a href="#tracking">Track Job</a></li>
    <li><a href="#contact">Contact Us</a></li>
    
    <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">Previous Version <i class="fas fa-caret-down" style="font-size: 0.8em; margin-left: 5px;"></i></a>
      <div class="dropdown-content">
        <a href="#" onclick="changeVersion('v3.0')">Build: v3.0</a>
        <a href="#" onclick="changeVersion('v2.0')">Build: v2.0</a>
      </div>
    </li>
  </ul>
    <div class="version-selector">
      <label for="portalVersion">System Build:</label>
      <select id="portalVersion" onchange="changeVersion()">
        <option value="v3.0">v3.0 (Latest)</option>
        <option value="v2.0">v2.0 (Legacy)</option>
      </select>
    </div>

  <div class="logo-container">
      <img src="image/isro.png" alt="ISRO Logo" class="nav-logo">
  </div>
</nav>