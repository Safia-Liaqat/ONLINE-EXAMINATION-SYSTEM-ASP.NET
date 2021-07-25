<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="ExaminationSystem.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
   <div class="content">
    <div class="conatiner">
        
        <div style="margin:20px auto;">
            <label>Class Name</label>
    <asp:TextBox runat="server" ID="txtClassName" CssClass="table table-hover" Width="20%"></asp:TextBox><br />
            <asp:Button runat="server" ID="btnAdd" CssClass="btn" Text="Add Class" OnClick="btnAdd_Click" />
            <asp:Button runat="server" ID="btnback"  OnClick="btnback_Click" Text="Back" CssClass="btn " />
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
               </div>
        </div>
       </div>
</asp:Content>
