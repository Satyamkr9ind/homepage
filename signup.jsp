<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>User Registration | ISRO Portal</title>
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700;800&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body style="display: flex; align-items: center; justify-content: center; min-height: 100vh; padding: 20px;">

  <div class="glass-card auth-card" style="width: 100%; max-width: 500px;">
    
    <h2>Create Account</h2>
    
    <div class="input-box">
      <input type="text" id="regFullName" placeholder="Full Name">
    </div>
    <div class="input-box">
      <input type="email" id="regEmail" placeholder="Email Address">
    </div>
    <div class="input-box">
      <input type="password" id="regPassword" placeholder="Create Password">
    </div>
    <div class="input-box">
      <input type="password" id="regConfirmPassword" placeholder="Confirm Password">
    </div>

    <button class="btn-primary">Register User</button>

    <div class="auth-links" style="margin-top: 20px;">
      <a href="index.jsp">Already have an account? Login here</a>
    </div>
    
  </div>

</body>
</html>