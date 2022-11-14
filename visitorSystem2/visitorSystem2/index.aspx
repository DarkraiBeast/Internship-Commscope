<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="visitorSystem2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/style.css" rel="stylesheet" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>--%>
    <style type="text/css">
        .auto-style13 {
            width: 1060px;
            height: 42px;
        }
        .auto-style14 {
            width: 192px;
            height: 42px;
        }
        .auto-style15 {
            width: 1060px; 
            height: 43px;
        }
        .auto-style16 {
            width: 192px;
            height: 43px;
        }
        .auto-style17 {
            width: 1060px;
            height: 41px;
        }
        .auto-style18 {
            width: 192px;
            height: 41px;
        }
        .auto-style19 {
            text-align: center;
        }
        .nav {
            position: fixed;
            background-color: white;
        }
        .auto-style20 {
            position: fixed;
            background-color: white;
            left: 8px;
            top: 2px;
            text-align: left;
        }
        .auto-style21 {
            width: 1507px;
            height: 3px;
        }
        .auto-style22 {
            height: 6px;
        }
        .auto-style23 {
            left: 13px;
            top: 289px;
        }
        .auto-style24 {
            margin: 6px 869px;
            width: 565px;
        }
        #Menu1{
            position: absolute;
        }
        #sec {
            padding: 6px 5px;
            margin: 26px 1023px;
            position: absolute;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style12">
        <div class="auto-style19">
    <div class="auto-style20">
        <br />
        <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
            ImageUrl="~/images/Screenshot (69).png" Width="289px" />

                    <asp:Button class="button"  id="sec" runat="server" Text="SECURITY" Font-Bold="True" 
            Font-Italic="True" PostBackUrl="~/login.aspx"  />

        <br />

        <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style21"/>
        </div>

   
    <div id="container">
        <br />
        <br />
        <p style="text-align:center;font-size:40px;" class="auto-style22">&nbsp;</p>
        <p style="text-align:center;font-size:40px;" class="auto-style22">&nbsp;<strong>WELCOME</strong></p>
        <hr style="background-color: darkblue; "  size="6" />
    </div>
   
        
   
        
   
        
   
        <br />
                <h1 style="text-align:center;"><em>
   
        
   
        
   
        
   
        <asp:Image ID="Image1" runat="server" Height="366px" 
            ImageUrl="~/images/920824-homepage-topic-banner-desktop-q3-21-1920px.jpg" 
            Width="871px" ImageAlign="Left" CssClass="auto-style23" />
        
                    Apply for Visitor Pass Here</em></h1>
            <p style="text-align:center;">&nbsp;</p>

                    <table class="auto-style24" align="center">
                    <tr>
                        <td class="auto-style13">Full Name: </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox1" class="text" runat="server" Height="27px" Width="290px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Email:</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox6" class="text" runat="server" Height="27px" 
                                Width="290px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Mobile No:</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox7" class="text" runat="server" Height="27px" 
                                Width="290px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Purpose of Visit:</td>
                        <td class="auto-style16">
                            <asp:DropDownList ID="DropDownList1" class="text" runat="server" Height="21px" Width="293px">
                                <asp:ListItem>---select---</asp:ListItem>
                                <asp:ListItem>Vendor/ Contractor</asp:ListItem>
                                <asp:ListItem>Business Visit</asp:ListItem>
                                <asp:ListItem>Guest/ Kid/ Friend</asp:ListItem>
                                <asp:ListItem>other</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">other (description): </td>
                        <td class="auto-style16">
                        <asp:TextBox ID="descrip" class="text" runat="server" Height="28px" TextMode="MultiLine" 
                            Width="291px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Employee Email: </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="TextBox9" class="text" runat="server" Height="25px" 
                                Width="291px"></asp:TextBox>
                        </td>
                    </tr>                      
                </table>

                
                <br />
                <p class="auto-style19" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button class="button"  id="sub" runat="server" Text="SUBMIT" 
                        OnClick="Unnamed1_Click" Height="32px" Width="84px" />
            </p>
           
            
   

     
        

   
    <footer>
        <div >

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </footer>
        </div>
    </form>
    
   </body>
</html>
