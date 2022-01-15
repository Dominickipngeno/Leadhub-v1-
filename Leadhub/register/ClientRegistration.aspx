<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientRegistration.aspx.cs" Inherits="Leadhub.register.ClientRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LeadHub-Registration</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css"/>
<head runat="server">
    <title></title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="fontawesome/js/all.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
   
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

      <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
</head>
<body>
      <div class="main">

            <div class="container">
           <form id="form1"  class="appointment-form" runat="server">
      
      
                <h2 style="color: #00498D;">LEADHUB-CLIENT REGISTRATION FORM</h2>
                <div class="form-group-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Title"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="First Name"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Last Name"></asp:TextBox>
                   
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
                   
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="number" placeholder="Phone Number"></asp:TextBox>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Services">
                        <asp:ListItem Text="Select Services" value="....." />
                         <asp:ListItem Text="IT services" value="IT services" />
                    </asp:DropDownList>
                </div>
                <div class="form-group-2">
                    <h3><span class="badge bg-warning text-dark" style="color: #00498D;">Create Password</span></h3>
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                   
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required"   
                    ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>      
                       
                <div class="form-check">
                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree to the  <a href="#" class="term-service">Terms and Conditions</a></label>
                </div>
                <div class="form-submit">
                    <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Create Account" OnClick="Button1_Click" />
                  
                </div>
                </div>
            </form>
        </div>

    </div>

</body>
</html>
