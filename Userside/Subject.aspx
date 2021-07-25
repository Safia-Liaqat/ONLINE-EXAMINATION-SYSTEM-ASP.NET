<%@ Page Title="" Language="C#" MasterPageFile="~/Userside/UserSide.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="ExaminationSystem.Userside.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/StyleSheet1.css" rel="stylesheet" />

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <!--    
    <asp:GridView runat="server" ID="GVSearch" CssClass="table table-borderless border-0" AutoGenerateColumns="false" OnRowCommand="GVSearch_RowCommand" >
                        <Columns>
                           
                            <asp:TemplateField  >
                <ItemStyle Font-Italic="true"  />
                <ItemTemplate>
                   <asp:Label runat="server" ID="lblSubjectName" Text=></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                  </Columns>
                     </asp:GridView>
    -->
    <asp:Repeater runat="server" ID="rv">
        <ItemTemplate>
            <div class="col-md-4" style="float:left;">
                        <div class="card mb-4" >
                            
                <table>
                    <div class="card-header">
                    <tr><th>Subject</th></tr>
                    </div>
                     <tr><td>SubjectName</td><td><%# Eval("SubjectName") %></td></tr>
                      
              <asp:HyperLink runat="server" ID="rptLnkEdit" CssClass="btn "  Text="Click Here" 
                                    NavigateUrl='<%# Eval("SubjectID","QuestionPaper.aspx?stid={0}") %>'></asp:HyperLink>
                </table>
                           
            </div>
                </div>
          
        </ItemTemplate>
    </asp:Repeater>
      <asp:Label runat="server" ID="lblsubjctname" Text='<%# Eval("SubjectName") %>'  Visible="false"></asp:Label>
    </div>
</asp:Content>
