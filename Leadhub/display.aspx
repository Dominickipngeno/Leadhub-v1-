
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="Leadhub.display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LEADHUB CONSULTANCY</title>
    <%-- css classes --%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="fontawesome/js/all.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
   
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/main.js"></script>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <script>
        var object = {
            status: false, ele: null

            };
        function confirmDelete(ev) {
            if (object.status) {
                return true;
            };
            swal({
                title: "Are you sure?",
                text: "Your will not be able to recover this Record!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                closeOnConfirm: true
            },
                function () {
                    object.status = true;
                    object.ele = ev;
                    object.ele.click();

                });
            return false;
        };
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div  class="col-md-8 col-md-offset-2">

                <asp:GridView ID="GridView1" CssClass="table table-bordered" AutoGenerateColumns="false" OnRowDeleting="Gridview1_RowDeleting" DataKeyNames="contact" runat="server" >
             <columns>
                 <asp:BoundField HeaderText="First Name" DataField="First_name" />
                  <asp:BoundField HeaderText="Last Name" DataField="Last_name" />
                  <asp:BoundField HeaderText="DOB" DataField="dob" />
                  <asp:BoundField HeaderText="Email" DataField="Email" />
                  <asp:BoundField HeaderText="Contact" DataField="contact" />
                  <asp:BoundField HeaderText="State" DataField="state" />
                  <asp:BoundField HeaderText="box" DataField="box" />
                  <asp:BoundField HeaderText="address" DataField="Address" />
                  <asp:BoundField HeaderText="Username" DataField="username" />
                  <asp:BoundField HeaderText="Password" DataField="password" />
                  <asp:BoundField HeaderText="status" DataField="account_status" />
                  <asp:TemplateField HeaderText="Action" >
                      <ItemTemplate>
                          <asp:Button CommandName="Delete" CssClass="btn btn-danger" runat="server" Text="Remove" OnClientClick="return confirmDelete(this); " />
                      </ItemTemplate>
                  </asp:TemplateField>


             </columns>
                    </asp:GridView>
        </div>
    </form>
</body>
</html>
