
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="m.aspx.cs" Inherits="Leadhub.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
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
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfname" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator>  
                                    <asp:TextBox ID="txtfname" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtlname" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator>  
                                    <asp:TextBox ID="txtlname" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class ="row">
                            <div class="col-md-6">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdob" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator> 
                                    <asp:TextBox ID="txtdob" Textmode="Date" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator> 
                                    <asp:TextBox ID="txtemail" textmode="Email" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class ="row">
                            <div class="col-md-4">
                                <label>Contact</label>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcontact" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator> 
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtbox" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator> 
                                    <asp:TextBox ID="txtbox" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtaddress" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator> 
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator>  
                                    <asp:TextBox ID="txtusername" CssClass="form-control"  runat="server"></asp:TextBox>
                             
                                </div>
                                </div>
                                <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required*"   
                  ForeColor="Red"></asp:RequiredFieldValidator>  
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
                               <asp:Button ID="Button2" type="summit" CssClass="btn btn-info btn-block" runat="server" Text="Cancel" />
                              </center>
                              </div>
                             </div>
                          
                      </div>
                    </div>
                </div>
            </div>
           
        </div>
        
            </div>
    
</asp:Content>
