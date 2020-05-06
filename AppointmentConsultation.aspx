<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentConsultation.aspx.cs" Inherits="HomeoClinic.AppointmentConsultation" %>

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
    <title>Engage The Doctor</title>
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
              <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Login/Regiser" OnClick="Button2_Click"/>
              <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="SignOut" OnClick="Button3_Click"/>
              <asp:Label ID="Label7" class="font-weight-bold m-1" runat="server" Text=""></asp:Label>
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
      <br />         
      <!-- Material form login -->
<div class="Login card" style="border: 2px solid #1E90FF;">

    <h5 class="card-head info-color white-text text-center py-4" style="background-color:#1E90FF;">
      <strong style="color:white">Make Appointment</strong>
    </h5>
  
    <!--Card content-->
    <div class="card-body">
  
      <!-- Form -->
      <div class="text-center" style="color: black;">
  
        <!-- Email -->
        <div class="md-form">
          <asp:Label ID="Label1" class="Log-lab" runat="server" Text="Patient's Full Name"></asp:Label>
          <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Patient's Full Name" style="width:200px;"></asp:TextBox>                    
        </div>
          <asp:Label ID="Label2" runat="server" class="Log-lab" Text="Select Doctor"></asp:Label><br />                    
        <div class="dropdown" style="margin-left:0px">            
             <asp:DropDownList ID="DropDownList1" runat="server" style="width: 200px;" type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle" aria-haspopup="true" aria-labelledby="dropdownMenuButton"></asp:DropDownList>
          </div>        
        <asp:Label ID="Label4" runat="server" class="Log-lab" Text="Date of Appointment"></asp:Label><br />
        <div class="dropdown">            
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" style="width: 200px;" class="btn btn-primary" type="button"></asp:TextBox>                                                  
          </div>          
          <asp:Label ID="Label5" runat="server" class="Log-lab" Text="Time of Appointment"></asp:Label>
          <div class="dropdown">               
            <asp:DropDownList ID="DropDownList3" runat="server" style="width: 200px; text-align:center; align-items:center" class="btn btn-primary dropdown-toggle" type="button"></asp:DropDownList>                              
            </div>            
          <asp:Label ID="Label3" runat="server" class="Log-lab" Text="Type of Appointment"></asp:Label>
            <div class="dropdown">                
            <asp:DropDownList ID="DropDownList2" runat="server" style="width: 200px;" class="btn btn-primary dropdown-toggle" type="button"></asp:DropDownList>                                  
              </div>    
              <div class="md-form">
            <asp:Label ID="Label6" runat="server" class="Log-lab" Text="Reason"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" cols="22" rows="10" placeholder="Reason of Appointment(short)" TextMode="MultiLine" style="width:200px;"></asp:TextBox>                                
              </div>          
        <br />
           <asp:Button ID="Button1" runat="server" Text="Make Appointment" OnClick="Button1_Click" type="submit" style="width: 200px;" name="sign in" class="btn btn-primary"/>            
      </div>
      <!-- Form -->
  
    </div>
  
  </div>
  <br />
  <!-- Material form login -->
      <!-- Footer -->
<!-- Footer -->
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
    <div class="footer-copyright text-center py-3" style="background-color:#1E90FF  ;">© 2020 Copyright:
      <a style="color:white" href="https://babafareedhomeoclinic.com/">babafareedhomeoclinic.com</a>
    </div>
    <!-- Copyright -->
  
  </footer>        
    </form>
</body>
</html>
<%--  --%>