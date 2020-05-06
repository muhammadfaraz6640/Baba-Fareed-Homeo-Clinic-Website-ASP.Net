<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="HomeoClinic.AdminHome" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home</title>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script type="text/javascript" src="dropdown.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <header>
        <div class="header bg-light shadow p-3 mb-5 bg-white rounded" >
            <a href="AdminHome.html" style="text-decoration: none;"><h1 style="font-size: 23px; color: black;">BabaFareed<span style="color:red">HomeoClinic</span></h1></a>
            <asp:Button ID="Button8" runat="server" Text="SignOut" class="btn btn-primary" OnClick="Button8_Click"/>
            <asp:Label ID="Label3" class="font-weight-bold m-1" runat="server" Text=""></asp:Label>
        </div>
    </header>
    <div class="container">
        <div class="row">
          <div class="cardss col-sm m-1">            
              <a data-toggle="modal" data-target="#modalLoginForm"><img src="Images/Admin/HomeCards/Doctor.png" width="80" height="80" class="image-card"/></a>              
              <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold text-primary">Add Doctor</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body mx-3">
                    <div class="md-form ">                      
                      <label data-error="wrong" data-success="right">Name</label>
                      <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control validate"></asp:TextBox>                      
                    </div>                    
                    <div class="md-form">                      
                        <label data-error="wrong" data-success="right" >Email</label>
                        <asp:TextBox ID="TextBox2" runat="server" type="email" class="form-control validate" ></asp:TextBox>                                
                    </div>                    
                    <div class="md-form">                      
                        <label data-error="wrong" data-success="right" >Contact Number</label>
                        <asp:TextBox ID="TextBox3" runat="server" type="password"  class="form-control validate" MaxLength="11"></asp:TextBox>                                              
                    </div>
                    <div class="md-form">                      
                        <label data-error="wrong" data-success="right" for="defaultForm-email">Gender</label><br />
                            <div class="btn-group btn-group-toggle" data-toggle="buttons">          
                    <label class="btn btn-primary active">
                    <asp:RadioButton ID="RadioButton1" runat="server" value="Male" type="radio" name="Gender" checked/>Male
                    </label>
                        <label class="btn btn-primary">
                    <asp:RadioButton ID="RadioButton2" runat="server" name="Gender"  value="Female" type="radio"/> Female
                    </label>              
                    </div>
                    </div>

                    
                    <div class="md-form">                      
                        <label data-error="wrong" data-success="right" >Qualification</label>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" class="form-control validate" Rows="10" Columns="20" MaxLength="500" ></asp:TextBox>                        
                    </div>
                    <div class="md-form">                      
                        <label data-error="wrong" data-success="right" >Photo</label><br />
                        <asp:Image ID="Image1" runat="server"  Height="120px" Width="118px"/><br />
                        <asp:FileUpload ID="FileUpload1" class="btn btn-primary" runat="server"/> <br />                       
                        <asp:Label ID="Label1" runat="server" Text="Path"></asp:Label><br />
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Upload" OnClick="Button1_Click"/>                        
                    </div>
                  </div>
                  <div class="modal-footer d-flex justify-content-center">
                      <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-primary" OnClick="Button2_Click"/><br />                    
                  </div>
                </div>
              </div>
            </div>
           <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Add Doctor</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">
            <a data-toggle="modal" data-target="#modalLoginFormTime"><img src="Images/Admin/HomeCards/timeicon.png" width="80" height="80" class="image-card"/></a>                          
            <div class="modal fade" id="modalLoginFormTime" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold text-primary">Add Time</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <div class="md-form">                       
                            <label data-error="wrong" data-success="right">Free Time</label>     
                            <asp:TextBox ID="TextBox5" runat="server" type="text" class="form-control validate"></asp:TextBox>                            
                            </div>                            
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Add" OnClick="Button3_Click" CausesValidation="False"/>                            
                        </div>
                        </div>
                    </div>
                    </div>
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Add Available Time</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">
            <a data-toggle="modal" data-target="#modalLoginFormBlog"><img src="Images/Admin/HomeCards/Blog.png" width="80" height="80" class="image-card"/></a>                          
            <div class="modal fade" id="modalLoginFormBlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold text-primary">Add Blogs and Researches</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <div class="md-form">                       
                            <label data-error="wrong" data-success="right"> blog Title</label>     
                            <asp:TextBox ID="TextBox6" runat="server" type="text" class="form-control validate" ></asp:TextBox>                            
                            </div>                            
                            <div class="md-form">                      
                                <label data-error="wrong" data-success="right" >Blog Description</label>
                                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" class="form-control validate" Rows="10" MaxLength="500" Columns="20" ></asp:TextBox>                                
                            </div>
                            <div class="md-form">                      
                               <label data-error="wrong" data-success="right" >Photo</label><br />
                        <asp:Image ID="Image2" runat="server"  Height="120px" Width="118px"/><br />
                        <asp:FileUpload ID="FileUpload2" class="btn btn-primary" runat="server" /> <br />                       
                        <asp:Label ID="Label2" runat="server" Text="Path"></asp:Label><br />
                        <asp:Button ID="Button4" runat="server" class="btn btn-primary" Text="Upload" OnClick="Button4_Click"/>                        
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <asp:Button ID="Button5" runat="server" class="btn btn-primary" Text="Insert" OnClick="Button5_Click"/>                            
                        </div>
                        </div>
                    </div>
                    </div>
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Add Blogs and Researches</h1>
          </div>
        </div>
      </div>
      <br />
      <div class="container">
        <div class="row">
          <div class="cardss col-sm m-1">              
           <a href="https://outlook.office.com/mail/inbox"><img class="image-card" src="Images/Admin/HomeCards/CheckEmail.jpg" width="80" height="80"></a>
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Check Your Mail</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">          
           <a data-toggle="modal" data-target="#modalLoginFormEmail"><img src="Images/Admin/HomeCards/Blog.png" width="80" height="80" class="image-card"/></a>                          
           <div class="modal fade" id="modalLoginFormEmail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                       aria-hidden="true">
                   <div class="modal-dialog" role="document">
                       <div class="modal-content">
                       <div class="modal-header text-center">
                           <h4 class="modal-title w-100 font-weight-bold text-primary">Sent Emails</h4>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                       </div>
                       <div class="modal-body mx-3">
                           <div class="md-form">                       
                            <label data-error="wrong" data-success="right">Select Name Of Recipient</label>
                           <div class="dropdown" style="margin-left:0px">            
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" style="width: 200px;" type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle" aria-haspopup="true" aria-labelledby="dropdownMenuButton" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                            </div>        
                           </div>
                           <div class="md-form ">                      
                                <label data-error="wrong" data-success="right">Email</label>
                                <asp:TextBox ID="TextBox8" runat="server" type="email" class="form-control validate"></asp:TextBox>                            
                          </div>                    
                          <div class="md-form ">                      
                            <label data-error="wrong" data-success="right">Subject</label>
                            <asp:TextBox ID="TextBox9" runat="server" type="text" class="form-control validate" MaxLength="100"></asp:TextBox>                            
                          </div>                                                
                           <div class="md-form">                      
                               <label data-error="wrong" data-success="right" >Description Body</label>
                               <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" class="form-control validate" Rows="10" Columns="20"></asp:TextBox>                                                     
                           </div>                           
                       </div>
                       <div class="modal-footer d-flex justify-content-center">                           
                           <asp:Button ID="Button7" runat="server" class="btn btn-primary" Text="Sent" OnClick="Button7_Click"/>
                       </div>
                       </div>
                   </div>
                   </div>
            <h1 style="color:#0066ff; font-size: 30px;text-align: center;">Sent Mail</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">            
            <a data-toggle="modal" data-target="#modalLoginFormAdmin"><img src="Images/Admin/HomeCards/Admin.jpg" width="80" height="80" class="image-card"></a>                          
            <div class="modal fade" id="modalLoginFormAdmin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold text-primary">Add New Admin</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <div class="md-form">                       
                            <label data-error="wrong" data-success="right">Name</label> 
                            <asp:TextBox ID="TextBox11" runat="server" class="form-control validate" type="text"></asp:TextBox>                                 
                            </div>                            
                            <div class="md-form">                      
                                <label data-error="wrong" data-success="right" >Email</label>
                                <asp:TextBox ID="TextBox12" runat="server" class="form-control validate" type="email"></asp:TextBox>                              
                            </div>
                            <div class="md-form">                      
                                <label data-error="wrong" data-success="right" >Your password</label>
                              <asp:TextBox ID="TextBox13" runat="server" class="form-control validate" type="password"></asp:TextBox>                              
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <asp:Button ID="Button6" runat="server" class="btn btn-primary" Text="Register" OnClick="Button6_Click"/>                            
                        </div>
                        </div>
                    </div>
                    </div>
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Add Another Admin</h1>
          </div>        
        </div>
      </div>
      <br />      
            <div class="container">
        <div class="row">
          <div class="cardss col-sm m-1">
           <a href="CheckApp.aspx"><img class="image-card" src="Images/Admin/HomeCards/App.png" width="80" height="80"/></a>
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Check Appointments</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">
           <a href="CheckQuest.aspx"><img src="Images/Admin/HomeCards/quest.png" width="80" class="image-card" height="80"/></a> 
            <h1 style="color:#0066ff; font-size: 30px;text-align: center;">Check Questions</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">
            <a href="Users.aspx"><img src="Images/Admin/HomeCards/user.jpg" width="80" height="80" class="image-card"/></a> 
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Check Users</h1>
          </div>        
        </div>
      </div>
        <br />      
            <div class="container">
        <div class="row">
          <div class="cardss col-sm m-1">
           <a href="CheckTime.aspx"><img class="image-card" src="Images/Admin/HomeCards/timeicon.png" width="80" height="80"/></a>
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">Check Consultation Time</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">
           <a href="CheckBlogs.aspx"><img src="Images/Admin/HomeCards/Blog.png" width="80" class="image-card" height="80"/></a> 
            <h1 style="color:#0066ff; font-size: 30px;text-align: center;">Check Your Blogs</h1>
          </div>
          <br />
          <div class="cardss col-sm m-1">
            <a href="SeeDoctors.aspx"><img src="Images/Admin/HomeCards/Doctor.png" width="80" height="80" class="image-card"/></a> 
            <h1 style="color: #0066ff; font-size: 30px;text-align: center;">See All Doctors</h1>
          </div>        
        </div>
      </div>
      <br />

    <footer>
        <div class="footer-copyright text-center py-3 bg-light shadow p-3 mb-5 bg-white rounded" >© 2020 Copyright:
            <a href="https://babafareedhomeoclinic.com/">babafareedhomeoclinic.com</a>
          </div>
    </footer>  

    </form>
</body>
</html>
