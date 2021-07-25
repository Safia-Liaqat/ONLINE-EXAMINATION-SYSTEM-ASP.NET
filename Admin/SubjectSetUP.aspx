<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubjectSetUP.aspx.cs" Inherits="ExaminationSystem.Admin.StudentSetUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .addbutton{
               color:black;
               background-color:#00b33c;
           }
         .btn{
             color:white;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
   <div class="content" >
    <div class="conatiner">
       <div style="margin-left:10px">
          
        
       
       <div class="form-group">
           <label>Subject</label>
    <asp:TextBox runat="server" ID="txtSubject"  CssClass="form-control" ></asp:TextBox>
       </div>
            
       <div class="form-group"> 
                <label>Class</label>
      <asp:DropDownList runat="server" ID="ddlClass" CssClass="form-control" ></asp:DropDownList>
            </div>
        <div class="row">
   
            <asp:Button runat="server" ID="btnAdd" Text="Add Subject" CssClass="btn" OnClick="btnAdd_Click" />
        
            
            <asp:Button runat="server" ID="btnback" OnClick="btnback_Click"  Text="Back" CssClass="btn " BackColor="#00264d"  />
               
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
         </div>
            
       </div>
       </div>
       </div>
</asp:Content>
