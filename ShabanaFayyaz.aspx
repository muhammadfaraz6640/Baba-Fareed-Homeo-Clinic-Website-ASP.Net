<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShabanaFayyaz.aspx.cs" Inherits="HomeoClinic.ShabanaFayyaz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel = "stylesheet" href = "style.css"/>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script type="text/javascript" src="dropdown.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dr Shabana Fayyaz</title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="header">
        <div class="links">
          <a class="fb-ic" href="facebook.com/ansarfaraz9">
            <i class="fab fa-facebook-f fa-lg white-text "> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic" href="#">
            <i class="fas fa-video"></i>
          </a>
          <!-- Google +-->
          <a class="you-ic" href="#">
            <i class="fab fa-skype fa-lg white-text"></i>
          </a>
          <!--Linkedin -->
          <a class="what-ic" href="https:/wa.me/03352722117">
            <i class="fab fa-whatsapp fa-lg white-text"></i>
          </a>                        
        </div>                  
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 shadow-sm">
        <div class="container">
          <a href="index.aspx" class="navbar-brand font-weight-bold text-primary">BabaFareed<span style="color: red;">HomeoClinic</span></a>
          <button type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbars" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler">
                    <span class="navbar-toggler-icon"></span>
                </button>
      
                
          <div id="navbarContent" class="collapse navbar-collapse">            
              <asp:Button ID="Button1" runat="server" Text="Login/Regiser" class="btn btn-primary" OnClick="Button1_Click"/>
              <asp:Label ID="Label1" class="font-weight-bold m-1" runat="server" Text=""></asp:Label>
            <ul class="navbar-nav ml-auto">
              <!-- Level one dropdown -->
              <li class="nav-item active"><a href="index.aspx" class="nav-link">Home</a></li>
              <li class="nav-item dropdown">
                <a id="dropdownMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">About</a>
                <ul aria-labelledby="dropdownMenu1" class="dropdown-menu border-0 shadow">
                  <li><a href="ShabanaFayyaz.aspx" class="dropdown-item">Dr Shabana Fayyaz</a></li>
                  <li><a href="FayyazRehman.aspx" class="dropdown-item">Dr Fayyaz UR Rehman</a></li>                        
                </ul>
              </li>
              <!-- End Level one -->
      
              <li class="nav-item"><a href="Blogs.aspx" class="nav-link">Blogs</a></li>
              <li class="nav-item"><a href="Questions.aspx" class="nav-link">Ask Doctor</a></li>
              <li class="nav-item"><a href="#contact" class="nav-link">Contact</a></li>
              <li class="nav-item"><a href="Appointment.aspx" class="nav-link">Appointment</a></li>
            </ul>
          </div>
        </div>
      </nav>      
      <div style="border: none;" class="card bg-dark text-white">
        <img  src="Images/Homeo1.jpg" height="500" class="card-img" alt="...">
        <div class="card-img-overlay">
          <h4 style="color: black;" class="card-title text-primary">Our<span style="color: red;">Challenge</span></h4>
          <p style="color: white;" class="card-text">We will Be Available 24/7 for your queries and emergergency.</p>          
          <a href="https:/wa.me/923352722117" class="btn btn-primary">WhatsApp Now <i class="fab fa-whatsapp fa-lg white-text"></i></a>
        </div>
      </div>           
      <br />    
      <div class="Pic-doc card mb-3" style="max-width: 540px;">
        <div class="pic row no-gutters">
          <div class="col-md-4">
            <img src="Images/faraz.jpg" class="card-img" alt="...">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h4 class="card-title">Dr Shabana Fayyaz</h4>
              <h6><span style="color:red; font-weight:bold;">Female Doctor</span></h6>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dicta nisi possimus enim omnis eaque non nulla, voluptatum reprehenderit consequuntur officiis totam beatae quod incidunt ad odio deleniti corrupti culpa.</p>
              <p class="card-text"><small class="text-muted">20 Years of Experience</small></p>
            </div>
          </div>
        </div>
      </div>
<!-- Footer -->
<footer class="page-footer font-small mdb-color lighten-3 pt-4" style="background-color:#87CEEB;">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">
  
      <!-- Grid row -->
      <div class="row">
  
        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">
  
          <!-- Content -->
          <h5 class="font-weight-bold text-uppercase mb-4">About Clinic</h5>
          <p>Here you can use rows and columns to organize your footer content.</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit amet numquam iure provident voluptate
            esse
            quasi, veritatis totam voluptas nostrum.</p>             
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none">
  
        <!-- Grid column -->
        <div id="contact" class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">
  
          <!-- Links -->
          <h5 class="font-weight-bold text-uppercase mb-4">Links</h5>
  
          <ul class="list-unstyled">
            <li>
                <p class="Link">
                  <a href="index.aspx">Home</a>                
              </li>
            <li>
              <p class="Link">
                <a href="Blogs.aspx">Blogs</a>
              </p>
            </li>
            <li>
              <p class="Link">
                <a href="AppointmentConsultation.aspx">Appointment</a>
              </p>
            </li>
            <li>
              <p class="Link">
                <a href="Questions.aspx">Ask Doctor</a>
              </p>
            </li>            
          </ul>
  
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">
  
          <!-- Contact details -->
          <h5 class="font-weight-bold text-uppercase mb-4">Address</h5>
  
          <ul class="list-unstyled">
            <li>
              <p>
                <i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
            </li>
            <li>
              <p>
                <i class="fas fa-envelope mr-3"></i> info@example.com</p>
            </li>
            <li>
              <p>
                <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
            </li>
            <li>
              <p>
                <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
            </li>
          </ul>
  
        </div>
        <!-- Grid column -->      
      </div>
      <!-- Grid row -->
  
    </div>
    <!-- Footer Links -->
  
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3" style="background-color: #1E90FF ;">© 2020 Copyright:
      <a style="color:white" href="https://babafareedhomeoclinic.com/">babafareedhomeoclinic.com</a>
    </div>
    <!-- Copyright -->
  
  </footer>

    </form>
</body>
</html>
