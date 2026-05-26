<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Recover Account | ISRO Portal</title>
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700;800&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body style="display: flex; align-items: center; justify-content: center; min-height: 100vh;">

  <div class="glass-card auth-card">
    
    <h2>Recover Access</h2>
    
    <p style="text-align: center; color: var(--text); margin-bottom: 25px; font-size: 0.9rem;">
      Enter your registered email address to receive a secure password reset link.
    </p>

    <div class="input-box">
      <input type="email" id="recoveryEmail" placeholder="Registered Email Address">
    </div>

    <button class="btn-primary">Send Recovery Link</button>

    <div class="auth-links" style="margin-top: 20px;">
      <a href="index.jsp">Back to Login</a>
    </div>
    
  </div>

</body>
</html>