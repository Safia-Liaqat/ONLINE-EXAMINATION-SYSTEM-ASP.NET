<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ExaminationSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<head runat="server">
    <title>SignUp</title>
     <style>
        .btn{
            background-color:#00264d;
            color:white;
            
            margin-bottom:10px;
        }
         .btn:hover{
            background-color:#ff8000;
            color:white;
           
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
<body  style="background-color:#f5f5f0;">
    <form id="form1" runat="server">
           
                <div class="header">

                  
           
            <img src="images/logo.jpg" style="height:100px;width:100px; float:left;" />
            <div class="h">
    <p id ="name"> Online Examination System</p>
     </div>
           
        </div>
          <div class="container">
            
            <div class="row " style="margin-bottom:20px;">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 card" style="margin-top:6%;" >
            <h3 >Sign UP</h3>
               
        
                    <div class="form-group">
                        <label>First Name</label>
                        <asp:TextBox runat="server" ID="TxtFirstName" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" ID="RFFirstName" ControlToValidate="txtFirstName" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
                    </div>
   
                    <div class="form-group">
                        <label>Last Name</label>
                        <asp:TextBox runat="server" ID="TxtLastName" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" ID="RFtxtLastName" ControlToValidate="txtLastName" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Name"></asp:RequiredFieldValidator>
                    </div>
   

                    <div class="form-group">
                        <label>Email adress</label>
                        <asp:TextBox runat="server" ID="Txtemail" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ID="REV1" SetFocusOnError="true" ForeColor="Red" ControlToValidate="Txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid email"></asp:RegularExpressionValidator>
                    </div>
           
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RF2" ControlToValidate="txtPassword"  ForeColor="Red" SetFocusOnError="true" ErrorMessage="Enter Pasword"></asp:RequiredFieldValidator>
                    </div>
          
                <div style="text-align:center;">
                <asp:Button runat="server" ID="btnSignUp" OnClick="btnSignUp_Click" Width="150px"   CssClass="btn "   Text="SignUp" /> <br />
      
                    <a href="Login.aspx" style="text-align:center;margin:auto;">Already have an account</a>
                   </div>
                      <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
                </div>
                 
   
              
            </div>
    </form>
</body>
</html>
