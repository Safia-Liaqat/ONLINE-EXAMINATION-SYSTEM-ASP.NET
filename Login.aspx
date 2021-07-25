<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExaminationSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        .btn{
            background-color:#00264d;
            color:white;
            width:150px;
            margin-bottom:10px;
        }
         .btn:hover{
            background-color:#ff8000;
            color:white;
            width:150px;
        }
         #name {
   padding:30px;
    color: Black;
    font-family: Segoe Print;
}
.header{
    background-color:white;
   height:100px;
}
    </style>
</head>
<body style="background-color:#f5f5f0;">
    <form id="form1" runat="server">
         <div>
                <div class="header">

                  
           
            <img src="images/logo.jpg" style="height:100px;width:100px; float:left;" />
            <div class="h">
    <p id ="name"> Online Examination System</p>
     </div>
           
        </div>
        <div class="container">
                  <div class="row">
            <div class="col-lg-3"></div>
            <div class=" col-lg-6 card" style="margin-top:10%;">
  
               
            <h3 style="text-align:center;" >Login</h3>
       
                    <div class="form-group">
                        <label>Email adress</label>
                        <asp:TextBox runat="server" ID="Txtemail" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ID="REV1" SetFocusOnError="true" ForeColor="Red" ControlToValidate="Txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid email"></asp:RegularExpressionValidator>
                   <asp:RequiredFieldValidator runat="server" ID="RFemail" ControlToValidate="Txtemail" ForeColor="Red" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                        </div>
           
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ID="RFpassword" ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Enter Pasword"></asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <a href="ForgetPassword.aspx">forget Password</a>
                    </div>
                <div style="text-align:center;">
                <asp:Button runat="server" ID="btnLogin"   CssClass="btn " OnClick="btnLogin_Click" Text="Login" />
                    <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label></div>
                <div style="text-align:center;">
                    <a href="SignUp.aspx" style="text-align:center;">Register Account</a>
                </div>
           
         </div>
            </div>
          
        </div>
        
    </form>
</body>
</html>
