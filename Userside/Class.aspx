<%@ Page Title="" Language="C#" MasterPageFile="~/Userside/UserSide.Master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="ExaminationSystem.Userside.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        body{
            margin:0;
            padding:0;
        }
        .rptr{

        }
        table{
            
            padding:10px;
            margin:10px;
            height:100px;
            /*background-color:gainsboro;*/
            float:left;
        }
        th{
            background-color:coral;
            text-align:center;

        }
        td{
            color:black;
        }
         .btn{
            background-color:#00264d;
            color:white;
            width:150px;
            margin-bottom:10px;
        }
        .btn:hover {
             background-color:#009900;
              color:white;
            width:150px;
            margin-bottom:10px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <a href="logout.aspx"></a>
    <asp:Repeater runat="server" ID="rv">
        <ItemTemplate>
            <div class="col-md-3" style="float:left;">
                        <div class="card mb-4" >
                            
                <table>
                    <div class="card-header">
                    <tr><th>Class</th></tr>
                    </div>
                    
                     <tr><td>Class Name</td><td><%# Eval("ClassName") %></td></tr>
                      
              <asp:HyperLink runat="server" ID="rptLnkEdit" CssClass="btn " OnClick="rptLnkEdit_Click" Text="Click Here" 
                                    NavigateUrl='<%# Eval("ClassID","Subject.aspx?stid={0}") %>'></asp:HyperLink>
                </table>
                           
            </div>
                </div>
        </ItemTemplate>
    </asp:Repeater>
        </div>
</asp:Content>
