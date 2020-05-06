<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HomeoClinic.index" %>

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
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header" style="background-color:#1E90FF">
        <div class="links" style="background-color:#1E90FF">
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
              <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Login/Register" OnClick="Button1_Click"/>
              <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="SignOut" OnClick="Button2_Click"/>
              <asp:Label ID="Label1" class="font-weight-bold m-1" runat="server" Text="Label"></asp:Label>
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
              <li class="nav-item"><a href="AppointmentConsultation.aspx" class="nav-link">Appointment</a></li>
            </ul>
          </div>
        </div>
      </nav>      
    <div style="border: none;" class="card bg-dark text-white">
        <img  src="Images/Homeo.jpg" height="500" class="card-img" alt="...">
        <div class="card-img-overlay">
          <h4 class="card-title text-primary">Our<span style="color: red;">Challenge</span></h4>
          <p style="color: red;" class="card-text font-weight-bold">Our First Motive is to Reduce The Diseases as much as Possible by giving our Formulas and Advices.</p>          
          <a href="AppointmentConsultation.aspx" class="btn btn-primary">Make Appointment Now</a>
        </div>
      </div>
        <br />
     <div class="header bg-light shadow p-3 mb-5 bg-white rounded">
         <h1 class="text-primary">Our <span style="color:red">Doctors</span></h1>
     </div>
        <br />
      <div class="Pic-doc card mb-3" style="max-width: 540px;">
        <div class="pic row no-gutters">
          <div class="col-md-4" >
            <img src="Images/faraz.jpg" class="card-img" alt="..."/>
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
        <br />
        <div class="Pic-doc card mb-3" style="max-width: 540px;">
        <div class="pic row no-gutters">
          <div class="col-md-4">
            <img src="Images/faraz.jpg" class="card-img" alt="..."/>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">Dr Fayyaz Ur Rehman</h5>
                <h6><span style="color:red; font-weight:bold;">Male Doctor</span></h6>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia dicta nisi possimus enim omnis eaque non nulla, voluptatum reprehenderit consequuntur officiis totam beatae quod incidunt ad odio deleniti corrupti culpa.</p>
              <p class="card-text"><small class="text-muted">20 Years of Experience</small></p>
            </div>
          </div>
        </div>
      </div>
        <br />
     <div class="header bg-light shadow p-3 mb-5 bg-white rounded">
         <h1 class="text-primary">Our <span style="color:red">Researches and Blogs</span></h1>
     </div>
        <br />
               <div style="display:inline-block">
            <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <div class="col-lg-4" runat="server" style="float:left; overflow:hidden; display:block">
                        <div class="container" style="display:inline-block">                            
                            <div class="card pic item" style="width:auto;display:inline-block;height:700px;overflow:auto">
                                <asp:Image ID="Image1" runat="server" class="card-img-top"  alt="Card image" style="width: 100%; height: 300px" ImageUrl='<%#Eval("BPic")%>'/>                                                    
                                <div class="card-body">
                                    <h4 class="card-title"><%#Eval("BName")%></h4>
                                    <p class="card-text description"><%#Eval("BDescription")%></p>                                    
                                    <p class="text-muted"><%#Eval("DateTime")%></p>
                                </div>  
                                <br />
                            </div>
                            <br />                                                       
                        </div>                      
                    </div>
                  
            </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
        <div class="header bg-light shadow p-3 mb-5 bg-white rounded">
         <h1 class="text-primary">Our <span style="color:red">Location</span></h1>
     </div>
        <br />
      <div class="container len embed-responsive embed-responsive-21by9 border pic">
          <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3616.9475803978935!2d67.05244341532344!3d24.967898047091413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb340f30f8b41bf%3A0xab975156ed5ab39b!2sPlot%20R%20458%2C%20Sector%2010%20North%20Karachi%20Twp%2C%20Karachi%2C%20Karachi%20City%2C%20Sindh%2C%20Pakistan!5e0!3m2!1sen!2s!4v1588586581071!5m2!1sen!2s"  frameborder="0" style="border:0;" aria-hidden="false" tabindex="0" allowfullscreen></iframe>
    </div>

<br />

      <!-- footer -->      
<footer class="page-footer font-small mdb-color lighten-3 pt-4" style="background-color:#87CEEB	 ;">

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
        <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">
  
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
        <div id="contact" class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">
  
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
    <div class="footer-copyright text-center py-3" style="background-color:#1E90FF  ;">© 2020 Copyright:
      <a style="color:white" href="https://babafareedhomeoclinic.com/">babafareedhomeoclinic.com</a>
    </div>
    <!-- Copyright -->
  
  </footer>

    </form>
</body>
</html>
