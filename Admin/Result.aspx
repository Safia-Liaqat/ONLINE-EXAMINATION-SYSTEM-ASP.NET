<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="ExaminationSystem.Admin.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .data{
            margin:20px auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
   <asp:GridView runat="server" ID="gv" AutoGenerateColumns="false" CssClass="data">
          
         <Columns>

                   <asp:BoundField DataField="UserFirstName" HeaderText="FirstName" />  
                <asp:BoundField DataField="UserLastName" HeaderText="LastName" />
             <asp:BoundField DataField="SubjctName" HeaderText="SubjectName" />
             <asp:BoundField DataField="Score" HeaderText="Marks" />
             <asp:BoundField DataField="Date" HeaderText="Date" />
                    

                </Columns>

   </asp:GridView>
        </div>
</asp:Content>
