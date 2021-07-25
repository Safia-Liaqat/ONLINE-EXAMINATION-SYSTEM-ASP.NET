<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionPaper.aspx.cs" Inherits="ExaminationSystem.Userside.QuestionPaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .lbloptions{
           

        }
        .lbloptions:hover{
            
        }
          .btn{
            background-color:#00264d;
            color:white;
            width:150px;
            margin-bottom:10px;
        }
         .btn:hover{
            background-color:#ff8000;
            color:white;
            width:150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     
        <div class="container">
          
            <asp:Label runat="server" ID="lblscore"  ></asp:Label>
               
            <asp:Repeater runat="server" ID="rv">
                <ItemTemplate>
                    <div  style="width:auto; margin:auto; margin-top:50px;" >
                       
                        
                        
                  
                            <div>
                                <asp:Label runat="server" Text='<%# Eval("Questions") %>'></asp:Label>
                                
                            </div>

                            <div class="lbloptions">
                                 <asp:RadioButton runat="server" ID="rdopt1" GroupName="options" Text='<%# Eval("opt1") %>' />
                                                        
                        </div>
                        

                         <div class="lbloptions">
                                 <asp:RadioButton runat="server" ID="rdopt2" GroupName="options" Text='<%# Eval("opt2") %>' />
                                                      
                        </div>
                       
                         <div class="lbloptions">
                                 <asp:RadioButton runat="server" ID="rdopt3" GroupName="options"  Text='<%# Eval("opt3") %>'/>
                                                       
                        </div>
                     
                         <div class="lbloptions">
                                 <asp:RadioButton runat="server" ID="rdopt4"  GroupName="options" Text='<%# Eval("opt4") %>' />
                            
                                                       
                        </div>
                        <div>
                            <asp:Label runat="server" ID="lblcorrectAns" Text='<%# Eval("Answer") %>' Visible="false"></asp:Label>
                        </div>

                        <div>
                            <asp:Label runat="server" ID="LblUserSelected" ></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <br />

            <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn m-4" />
           
        </div>
    </form>
</body>
</html>
