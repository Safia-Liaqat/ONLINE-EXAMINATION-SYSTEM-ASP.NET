<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="ExaminationSystem.Userside.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:#f5f5f0;">
    <form id="form1" runat="server">
           <div>
         <nav class="navbar navbar-expand-md navbar-light " style="height:100px; background-color:white;margin-bottom:20px;">
             <img src="../images/logo.jpg" style="width:80px;height:80px;" />
   
             <p id="name" >Online Examination System</p>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav">
      
        </div>
        <div class="navbar-nav ml-auto">
             <a href="Class.aspx" class="nav-item nav-link">Class</a>
            <a href="logout.aspx" class="nav-item nav-link">Logout</a>
        </div>
    </div>
</nav>
				</div>
        <div class="container"  >
           
           
          
            <div style=" height:600px; padding:20px; text-align:center; margin:50px auto;  border: 10px solid #003399;background-color:White;">
<div style=" height:550px; padding:20px; text-align:center; border: 5px solid #0099e6">
       <span style="font-size:50px; font-weight:bold;color:#0099e6;">Certificate of Completion</span>
       <br><br>
       <span style="font-size:25px"><i>This is to certify that</i></span>
       <br><br>
       <span style="font-size:30px"><b><asp:Label runat="server" ID="lblusername"></asp:Label></b></span><br/><br/>
       <span style="font-size:25px"><i>has completed the Exam of</i></span> <br/><br/>
       <span style="font-size:30px"><b><asp:Label runat="server" ID="lblsubjectname" ></asp:Label></b></span> <br/><br/>
       <span style="font-size:30px">with score of <b><asp:Label runat="server" ID="score" ></asp:Label></b></span> <br/><br/>
     <span style="font-size:25px"><i>dated</i></span><br>
    <asp:Label runat="server" ID="Lbldate"></asp:Label>
      <!--
          width:800px;
          width:750px;
          <span style="font-size:20px">with score of <b>$grade.getPoints()%</b></span> <br/><br/><br/><br/>
       <span style="font-size:25px"><i>dated</i></span><br>
      #set ($dt = $DateFormatter.getFormattedDate($grade.getAwardDate(), "MMMM dd, yyyy"))
      <span style="font-size:30px">$dt</span> -->
</div>
</div>
        </div>
           
    </form>
</body>
</html>
