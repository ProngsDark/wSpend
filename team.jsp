<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>wSpend</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg"
    crossorigin="anonymous">
  <link rel="icon" href="../res/icons/logo.png">
  <link rel="stylesheet" href="../styles/master.css">
  <link rel="stylesheet" href="../styles/team.css">
  <link rel="stylesheet" href="../styles/animate.css">
</head>

<body>
  <header>
    <!--This is the navbar on the top of the screen-->
    <nav class="navbar navbar-expand-lg">
      <a class="navbar-brand" href="../../index.jsp">wSpend</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#content" aria-controls="content">
        <span>
          <i class="fas fa-bars"></i>
        </span>
      </button>

      <div class="collapse navbar-collapse" id="content">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link active" href="#">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pricing.jsp">Pricing</a>
          </li>
          <li class="nav-item" id="login-item">
            <a href="#" class="nav-link" id="login" data-toggle="modal" data-target="#loginModal">LogIn</a>
          </li>
          <li class="nav-item" id="signup-item">
            <a href="#" class="nav-link" id="signup" data-toggle="modal" data-target="#signupModal">SignUp</a>
          </li>
        </ul>
      </div>
    </nav>

    <!--Modals launched from the login/signup links in the navbar are placed here.-->

    <!--Login modal launched from login link-->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalTitle">Welcome back!</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </div>
          <form action="login" id="logForm" method="post">
            <div class="modal-body">
              <div class="row mr-auto ml-auto">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
              </div>
              <div class="row mr-auto ml-auto">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
              </div>
              <p class="text-center">Or
                <br>Log in with</p>
              <div class="row socialMedia ml-auto mr-auto">
                <div class="col">
                  <button class="btn btn-primary fab fa-facebook-square"></button>
                </div>
                <div class="col">
                  <button class="btn btn-danger fab fa-google"></button>
                </div>
                <div class="col">
                  <button class="btn btn-info fab fa-twitter"></button>
                </div>
              </div>
            </div>

            <div class="modal-footer">
              <a class="mr-auto" href="#signup" data-toggle="modal" data-target="#signupModal" data-dismiss="modal">Sign Up</a>
              <a id="forgot" href="#">Forgot your password?</a>
              <button type="submit" class="btn btn-primary">Log In</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!--Signup modal launched from signup link-->
    <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalTitle">Sign up for free</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </div>
          <form action="signup" id="signForm" method="post">
            <div class="modal-body">

              <div class="row mr-auto ml-auto sign-row">
                <div class="col">
                  <input type="text" name="firstName" class="form-control" placeholder="First Name" required>
                </div>
                <div class="col">
                  <input type="text" name="lastName"class="form-control" placeholder="Last Name" required>
                </div>
              </div>
              <div class="row sign-row2 ml-auto mr-auto">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
              </div>
              <div class="row sign-row2 ml-auto mr-auto">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
              </div>
            </div>
            <p class="text-center">Or
              <br>Sign up with</p>
            <div class="row mr-auto ml-auto socialMedia">
              <div class="col">
                <button class="btn btn-primary fab fa-facebook-square"></button>
              </div>
              <div class="col">
                <button class="btn btn-danger fab fa-google"></button>
              </div>
              <div class="col">
                <button class="btn btn-info fab fa-twitter"></button>
              </div>
            </div>

            <div class="modal-footer">
              <a href="#login" class="mr-auto" data-toggle="modal" data-target="#loginModal" data-dismiss="modal">Already a member? Log In instead.</a>
              <button type="submit" class="btn btn-primary">Sign Up</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>

  <main>
    <div class="banner">
      <img src="../res/icons/teamLogo.png">
    </div>
    <section class="present">
      <div class="grid">
        <div class="row ml-auto mr-auto">
          <div class="col">
            <img src="../res/photos/team/giovanni.png" class="rounded-circle" alt="">
            <h3 class="text-center">Giosanu Andrei</h3>
            <p class="text-center">
			Developer who does everything to solve the proposed problem.
			I like software development that helps me learn new things</p>
            <h5>Things about him:</h5>
            <ul>
              <li>Happy with the projects organized within the students' association.</li>
			  <li>Thank you for taking this project to the end.</li>
            </ul>
          </div>
          <div class="col">
            <img src="../res/photos/team/luiza.png" class="rounded-circle">
            <h3 class="text-center">Ivlev Luiza</h3>
            <p class="text-center">Student in the 2nd year in The University of Bucharest.</p>
            <h5 class="text-center">Things about her:</h5>
            <ul>
              <li>Proud to have successfully passed the first year</li>
              <li>Aspiring diamond in League of Legends (currently platinum)</li>
              <li>Developed small but really nice software</li>
            </ul>
          </div>
          <div class="col">
            <img src="../res/photos/team/dummy.jpeg" class="rounded-circle" alt="">
            <h3 class="text-center">Misaila Alina</h3>
            <p class="text-center">Something about me here!</p>
            <h5>Things about her:</h5>
            <ul>
              <li>Accomplishments</li>
            </ul>
          </div>
          <div class="col">
            <img src="../res/photos/team/alex.jpg" class="rounded-circle" alt="">
            <h3 class="text-center">Balan Alexandru</h3>
            <p class="text-center">I am a passionate developer and a hard-worker.
              <br>I like to develop software that trully benefits people and makes the world a better place.</p>
            <h5 class="text-center">Things about him:</h5>
            <ul>
              <li>Has a lovely wife</li>
              <li>Knows to program in too many languages</li>
              <li>Aspiring team leader</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
  </main>


  <!--Bootstrap js scripts-->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
</body>

</html>