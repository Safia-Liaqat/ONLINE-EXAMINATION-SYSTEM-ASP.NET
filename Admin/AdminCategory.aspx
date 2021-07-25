<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminCategory.aspx.cs" Inherits="ExaminationSystem.Admin.AdminCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}
              .edit{
            border: 1px solid #aaa;
            border-radius:20px;
    text-decoration: none;
    font-family: Arial;
    color: black;
    padding: 1px 6px;
    text-align:center;
    background: #eee;
    padding:10px;
    background-color:#036ffc; 
    width:120px;
        }
        .delete{
            border: 1px solid #aaa;
            border-radius:20px;
    text-decoration: none;
    font-family: Arial;
    color: black;
    padding: 1px 6px;
    text-align:center;
    background: #eee;
    padding:10px;
    background-color:#fc3103; 
    width:120px;
        }
           .addbutton{
               color:black;
               background-color:#00b33c;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <div style="margin-top:10px;">      
        <a href="AddCategory.aspx" class="btn  addbutton">Add Class</a>         
        </div>
          <div style="margin-top:10px;"></div>
    <asp:GridView runat="server" ID="GV"  CssClass="table table-hover table-bordered"   AutoGenerateColumns="false"   OnRowEditing="GV_RowEditing"  OnRowCommand="GV_RowCommand"> 
         <Columns>

                   <asp:BoundField DataField="ClassName" HeaderText="Category" />    
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="lnkedit" CommandName="edit" CssClass="edit" ForeColor="Black" Text="edit" CommandArgument='<%# Bind("ClassID") %>' ></asp:LinkButton>
                            /
                            <asp:LinkButton runat="server" ID="Lnkdel" CommandName="Delete" CssClass="delete" ForeColor="Black"  OnClientClick="return confirm('are you sure you want to delte this?');" Text="Delete"  CommandArgument='<%# Bind("ClassID") %>' ></asp:LinkButton>
                       
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
    </asp:GridView>
        </div>
  
</asp:Content>
