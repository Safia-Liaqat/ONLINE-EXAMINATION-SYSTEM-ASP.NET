<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="ExaminationSystem.Admin.Questions1" %>
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
    padding: 4px 6px;
    text-align:center;
    background: #eee;
   
    background-color:#036ffc; 
    width:120px;
        }
                         .edit:hover{
            border: 1px solid #aaa;
            border-radius:20px;
    text-decoration: none;
    font-family: Arial;
    color: black;
    padding: 1px 6px;
    text-align:center;
    background: #eee;
   padding:12px;
    background-color:#036ffc; 
    width:120px;
        }
        .delete{
            border: 1px solid #aaa;
            border-radius:20px;
    text-decoration: none;
    font-family: Arial;
    color: black;
    padding: 3px 6px;
    text-align:center;
    background: #eee;
    
    background-color:#fc3103; 
    width:120px;
        }
          .delete:hover{
            border: 1px solid #aaa;
            border-radius:20px;
    text-decoration: none;
    font-family: Arial;
    color: black;
    padding: 4px 6px;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
     <!--   <div class="row">
    <div class="col-md-3"></div>
   <div class="form-group col-md-5">
    <asp:TextBox runat="server" ID="txtSearch"  CssClass="form-control"  placeholder="Search paper" ></asp:TextBox>
       <asp:RequiredFieldValidator runat="server" ID="RV" ControlToValidate="txtSearch" Text="Please Seaarch Something" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>  
       </div>
    <div class="form-group col-md-2">
    <asp:Button runat="server" ID="btnSearch" Text="GO"  CssClass="btn btn-primary" />
    </div>
             
                 <div  class="col-md-12 form-group bg-white">
                    <asp:GridView runat="server" ID="GVSearch" CssClass="table table-borderless border-0" AutoGenerateColumns="false"   >
                        <Columns>
                            <asp:BoundField DataField="Questions" HeaderText="Questions" />
                  <asp:BoundField DataField="opt1" HeaderText="option1" />
            <asp:BoundField DataField="opt2" HeaderText="option 2" />
                  <asp:BoundField DataField="opt3" HeaderText="option3" />
            <asp:BoundField DataField="opt4" HeaderText="option4" />
                  <asp:BoundField DataField="Answer" HeaderText="CorrectAnswwer" />
            <asp:BoundField DataField="ClassName" HeaderText="Class" />
                  <asp:BoundField DataField="SubjectName" HeaderText="Subject" />
            <asp:TemplateField HeaderText="Action" FooterStyle-BackColor="Black">
                
            </asp:TemplateField>
               
              
            </Columns>
                     </asp:GridView>
                     <asp:Label runat="server" ID="lblSearch"></asp:Label>
                 </div>
            
                 <div  class="col-md-12 form-group bg-white"></div>
            </div>
        </div>
    -->
   
        <div style="padding:10px; ">
        <a href="QuestionSetUp.aspx"  class="btn addbutton"  >New Question</a></div>
    <asp:GridView runat="server" AutoGenerateColumns="false"  CssClass="table table-hover table-bordered"  ID="GV" OnRowDeleting="GV_RowDeleting" OnRowEditing="GV_RowEditing" OnRowCommand="GV_RowCommand">
        <Columns>
                <asp:BoundField DataField="Questions" HeaderText="Questions" />
                  <asp:BoundField DataField="opt1" HeaderText="option1" />
            <asp:BoundField DataField="opt2" HeaderText="option 2" />
                  <asp:BoundField DataField="opt3" HeaderText="option3" />
            <asp:BoundField DataField="opt4" HeaderText="option4" />
                  <asp:BoundField DataField="Answer" HeaderText="CorrectAnswwer" />
            <asp:BoundField DataField="ClassName" HeaderText="Class" />
                  <asp:BoundField DataField="SubjectName" HeaderText="Subject" />
            <asp:TemplateField HeaderText="Action" FooterStyle-BackColor="Black">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="lnkedit" CommandName="edit" CssClass="edit" ForeColor="Black" Text="edit" CommandArgument='<%# Bind("questionID") %>' ></asp:LinkButton>
                    /
                            <asp:LinkButton runat="server" ID="Lnkdel" CssClass="delete" CommandName="delete" ForeColor="Black" OnClientClick="return confirm('are you sure you want to delte this?');" Text="Delete"  CommandArgument='<%# Bind("questionID") %>' ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
               
              
            </Columns>
    </asp:GridView>
    </div>
</asp:Content>
