<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="College_Job_Portal.admin.index"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Login
    </title>
    <!-- Bootstrap Styles-->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- TABLE STYLES-->
    <link href="js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
 
    <script type="text/javascript" src="validation.js">
    </script>
    <link href="css/style.css" rel="stylesheet" />
</head>
<style>
    body {
        background-color: rgb(60,141,188);
    }

    #page-wrapper {
        box-shadow: none;
    }
</style>
<div class="container">
    <div class="col-lg-4 col-md-4 col-sm-4">
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 login text-center">
        <div class="header">
            <h1>Admin Panel 
        </h1>
        </div>
        <form action="" method="post" class="text-center" runat="server">
            <asp:textbox id="txtUserName" runat="server" cssclass="form-control" placeholder="Username" data-style="mb:7" >
      </asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="txtUserName" errormessage="*" ForeColor="Red" ></asp:requiredfieldvalidator>
            <asp:textbox id="txtPassword" runat="server" textmode="Password" cssclass="form-control" style="margin-top: 10px;" placeholder="Password" data-style="mb:7" >
       </asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="txtPassword" errormessage="*" ForeColor="Red" ></asp:requiredfieldvalidator>
            <br />
            <a href="forgot.aspx">Forgot My Password..?</a>
            <div class="err" style="color: red" id="err_id">
                <asp:label runat="server" id="Label" ></asp:label>
            </div>
            <asp:button runat="server" text="Login to My Account." Onclick="btnLogin_Click" style="margin-top: 20px;" class="btn btn-primary" />
        </form>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4">
    </div>
</div>
</div>
<!-- /. PAGE   -->
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="js/jquery-1.10.2.js">
</script>
<!-- Bootstrap Js -->
<script src="js/bootstrap.min.js">
</script>
<!-- Metis Menu Js -->
<script src="js/jquery.metisMenu.js">
</script>
<!-- DATA TABLE SCRIPTS -->
<script src="js/dataTables/jquery.dataTables.js">
</script>
<script src="js/dataTables/dataTables.bootstrap.js">
</script>
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    }
                     );
</script>
<!-- Custom Js -->
<script src="js/custom-scripts.js">
</script>
    <script src="js/AdminControl.js">
</script>
</html>
