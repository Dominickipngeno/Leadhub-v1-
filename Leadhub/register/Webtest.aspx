<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webtest.aspx.cs" Inherits="Leadhub.register.Webtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
  

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css"/>

 
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
      <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="100px" src="images/reg.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>NEW MEMBER REGISTRATION</h3>
                                </center>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr >
                            </div>
                        </div>
                        <div class ="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtfname" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtlname" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class ="row">
                            <div class="col-md-6">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdob" Textmode="Date" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtemail" textmode="Email" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class ="row">
                            <div class="col-md-4">
                                <label>Contact</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtcontact" CssClass="form-control" TextMode="Number"  runat="server"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control"  runat="server">
                                     <asp:ListItem Text="Select" value="Bomet" />
                                         <asp:ListItem Text="Select" value="Kericho" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Box NO.</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtbox" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtaddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge bg-warning text-dark">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                        <div class ="row">
                            <div class="col-md-6">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtusername" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpassword" TextMode="Password" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                         <div class="row">
                          <div class="col-4">
                              <div class="form-group">
                              <center>
                               <asp:Button ID="Button1" CssClass="btn btn-primary btn-block" runat="server"  Text="Register" OnClick="Button1_Click" />
                              </center>
                              </div>
                          </div>
                             <div class="col-4">
                                 <div class="form-group">
                              <center>
                               <asp:Button ID="Button2" CssClass="btn btn-info btn-block" runat="server" Text="Cancel" />
                              </center>
                              </div>
                             </div>
                          
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
