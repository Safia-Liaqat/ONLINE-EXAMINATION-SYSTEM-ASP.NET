<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuestionSetUp.aspx.cs" Inherits="ExaminationSystem.Admin.Questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col=md-6"></div>
                <div class="col=md-6">


                        <asp:TextBox runat="server" Font-Bold="false" CssClass="txtbox" Text="Question" TextMode="MultiLine" ID="txtQuestions"></asp:TextBox>

                  

                    <div class="form-group">
                        <asp:Label runat="server" ID="lblQuestion"></asp:Label>
                       <!-- <asp:RadioButton ID="RDopt1" runat="server" CssClass="radiobutton" GroupName="opt" Checked="false" />-->
                        <asp:TextBox runat="server" Text="option 1" CssClass="txtbox" Font-Bold="false" ID="txtop1"></asp:TextBox>
                       <!-- <asp:Label runat="server" ID="lblMsgOpt1"></asp:Label>-->

                    </div>
                    <div class="form-group">

                       
                        <asp:TextBox runat="server" Text="option 2" CssClass="txtbox" Font-Bold="false" ID="txtopt2"></asp:TextBox>
                       

                    </div>
                    <div class="form-group">

                        <asp:TextBox runat="server" CssClass="txtbox" Text="option 3" Font-Bold="false" ID="Txtop3"></asp:TextBox>

                    </div>
                    <div class="form-group">

                        <asp:TextBox runat="server" Text="option 4" CssClass="txtbox" Font-Bold="false" ID="Txtopt4"></asp:TextBox>
                '    </div>
                    <div class="form-group">
                        <asp:TextBox ID="Txtanswer" Text="Answer(in number):" runat="server" CssClass="txtbox"></asp:TextBox>
                    </div>
                    <div class="txtbox">
                    <asp:DropDownList runat="server" ID="ddlClass" CssClass="form-control"  ></asp:DropDownList>
                        </div>
                    <div class="txtbox">
                    <asp:DropDownList runat="server" ID="ddlsubject" CssClass="form-control" ></asp:DropDownList>
               </div>
                  <div  id="btn">
                   
                    <asp:Button runat="server"   ID="btnsave" Text="Save"  CssClass="btn" Width="150px" OnClick="btnsave_Click" />
                     
                    <asp:Button runat="server"  ID="btnback" OnClick="btnback_Click"   Width="150px"  Text="Back" CssClass="btn" />
                          
                   </div>
                    </div>
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
                </div>
                    
          
       
    
    </div>
</asp:Content>

