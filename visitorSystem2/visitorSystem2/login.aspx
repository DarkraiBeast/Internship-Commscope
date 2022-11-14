<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="visitorSystem2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="~/Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            height: 5px;
        }
        .auto-style6 {
            height: 91px;
        }
        .auto-style7 {
            height: 25px;
        }
        .auto-style10 {
            position: absolute;
            padding: 7px 8px;
            margin: 8px 9px;
            left: 484px;
            top: 161px;
            width: 574px;
            height: 552px;
            background-color: white;
            border-radius: 20px;
        }
        .auto-style11 {
            height: 474px;
            text-align: center;
        }
        .auto-style13 {
            width: 99%;
            height: 351px;
        }
        .auto-style14 {
            text-align: left;
            height: 48px;
        }
        .auto-style15 {
            font-size: x-large;
            text-decoration:none;
        }
        .auto-style16 {
            text-align: left;
            font-size: x-large;
            height: 38px;
        }
        .auto-style18 {
            height: 49px;
            text-align: left;
        }
       
        .auto-style19 {
            font-size: large;
        }
       #Button2{
           position:absolute;
           left: -430px;
            top: -40px;
            width: 88px;
            height: 35px;
       }
        .auto-style20 {
            left: 23px;
            top: 197px;
        }
        
    </style>
</head>
<body>
    <form id="form2" runat="server" class="auto-style6">
        
    <div class="auto-style20">
        <br />
        <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
            ImageUrl="~/images/Screenshot (69).png" Width="289px" />

        <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style5"/>
        </div>
        <div class="auto-style7">
            
           <asp:Image ID="Image1" runat="server" CssClass="auto-style8" 
                ImageUrl="~/images/bg-01.png.jpg" 
                style="left: -6px; top: 92px; width: 1534px; height: 692px" />
            <div class="auto-style10">
                <asp:Button ID="Button2" class="button" runat="server" Text="Back" 
                Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Medium" OnClick="Button2_Click" 
                      />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Names="Bookman Old Style" Font-Size="XX-Large" Text="SIGN IN" 
                    ForeColor="#0000CC"></asp:Label>

                <br />
                <br />

                <div class="auto-style11">
                   

                    <table class="auto-style13">
                        <tr>
                            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                                    ID="Label2" runat="server" ForeColor="Red" 
                                    Text="Invalid Username or Password" Visible="False" 
                                    CssClass="auto-style19"></asp:Label>
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style15"> Username:</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" class="text" runat="server" Height="34px" Width="439px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" class="text" runat="server" Height="34px" 
                                    Width="439px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" class="button" Text="LOGIN" 
                                    OnClick="Button1_Click1" Font-Bold="True" Font-Names="Bookman Old Style" 
                                    Height="40px" Width="102px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <a href="forgotPass.aspx">Forgot Password ?</a>

                            </td>
                        </tr>
                    </table>
                   </div>

            </div>
        </div>
    
    </form>
            
</body>
</html>
