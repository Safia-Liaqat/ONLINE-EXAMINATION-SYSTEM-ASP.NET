<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="ExaminationSystem.Admin.Subject" %>

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
               background-color:#00b33c;
           }
    </style>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="contaner">
            <div style="margin-top:50px;" >

            <a href="SubjectSetUP.aspx" class="btn addbutton" >Add Subject</a>
                </div>
           <div style="margin-top:10px;" ></div>
        <asp:GridView runat="server" AutoGenerateColumns="false"   ID="GV" OnRowEditing="GV_RowEditing" OnRowDeleting="GV_RowDeleting" OnRowCommand="GV_RowCommand" CssClass="table table-borderd table-hover">

            <Columns>
                 <asp:BoundField DataField="SubjectName" HeaderText="Subject" /> 
                 <asp:BoundField DataField="ClassName" HeaderText="Category" /> 
                <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="lnkedit" CommandName="edit" Width="70px" CssClass="edit" ForeColor="Black" Text="edit" CommandArgument='<%# Bind("SubjectID") %>' ></asp:LinkButton>
                            /
                            <asp:LinkButton runat="server" ID="Lnkdel" CssClass="delete" CommandName="delete"   Font-Bold="true" BorderColor="Black" ForeColor="Black" OnClientClick="return confirm('are you sure you want to delte this?');" Text="Delete"  CommandArgument='<%# Bind("SubjectID") %>' ></asp:LinkButton>
                       
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
    </div>
</asp:Content>