<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="ExaminationSystem.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                Enter you Register Email Id: <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br/>
                <asp:Button ID="btnpasword" runat="server" OnClick="btnpasword_Click" Text="Get Your Password" />
                <asp:Label ID="lblmsg" runat="server" > </asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
