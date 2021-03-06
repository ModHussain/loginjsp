<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflae.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<center>
<img class="img-circle" src="img\one.png"  width="150" height="155"> 

<Font size=8>Zero Cost Hiring</font></center>
  <div class="form">
      
      <ul class="tab-group">
		     <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab "><a href="#signup">Sign Up</a></li>
     
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up Here</h1>
          
          <form method="post" action="registration.jsp">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" name="fname" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" name="lname" required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="off"/>
          </div>
          
           <div class="field-wrap">
            <label>
              User Name<span class="req">*</span>
            </label>
            <input type="text" name="uname" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" name="pass" required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form method="post" action="login.jsp">
          
            <div class="field-wrap">
            <label>
              User Name<span class="req">*</span>
            </label>
            <input type="text" name="uname" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="pass" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div>
      
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>
