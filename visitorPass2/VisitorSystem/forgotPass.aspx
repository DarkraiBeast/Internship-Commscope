<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPass.aspx.cs" Inherits="visitorSystem2.forgotPass" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="~/Content/style.css" rel="stylesheet" />
    <style type="text/css">
       
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
        #Menu1{
            position: absolute;
        }
        #sec {
            padding: 6px 5px;
            margin: 26px 1023px;
            position: absolute;
        }
        .container2{
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
        
        .auto-style23 {
            font-size: x-large;
        }
        .auto-style24 {
            width: 100%;
            height: 115px;
        }
        .auto-style25 {
            font-size: large;
        }
        
        .auto-style26 {
            text-align: center;
             position:absolute;
            margin:-15px 180px;
        }
                
        .auto-style29 {
            position: absolute;
            padding: 7px 8px;
            margin: 8px 9px;
            left: 484px;
            top: 161px;
            width: 574px;
            height: 584px;
            background-color: white;
            border-radius: 20px;
            text-align: center;
        }
       
        .auto-style30 {
            text-align: left;
        }
       
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style12">
        
    <div class="auto-style20">
        <br />
        <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
            ImageUrl="~/images/Screenshot (69).png" Width="289px" />

                    <asp:Button class="button"  id="sec" runat="server" Text="LOGIN" Font-Bold="True" 
            Font-Italic="True" PostBackUrl="~/login.aspx"  />
       
        <br />

        <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style21"/>
        </div> 

            <asp:Image ID="Image1" runat="server" CssClass="auto-style8" 
                ImageUrl="~/images/bg-01.png.jpg" 
                style="left: -6px; top: 107px; width: 1539px; height: 676px" />

            <div class="auto-style29">

                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em><span 
                    class="auto-style23" style= "color:#0000CC;"><strong>FORGOT PASSWORD.....<br /></strong>
                &nbsp;
                        <table class="auto-style24" align="center">
                    <tr>
                        <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span 
                    class="auto-style25" style= "color:black;"><strong>Enter&nbsp;your 
                            Username:</strong></span></td>
                    </tr>
                        
                    <tr>
                        <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="438px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">
                            <br />
                            
                            <div class="auto-style26">
                            
                            <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" 
                                    CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" 
                                    CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" 
                                    BackColor="#00CC00" CaptchaChars="1234567890" Height="46px" 
                                    Width="200px" />

                                </div>

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" Width="48px" 
                                    ImageUrl="~/images/refresh-icon-10853.png" />


                            
                            <br />
                            </span><span 
                    class="auto-style25" style= "color:black;"> <strong>&nbsp;&nbsp;&nbsp; Captcha</strong></span><span 
                    class="auto-style23">:</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="207px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Large" 
                                ForeColor="Red"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            <br />
                            <asp:Button ID="Button1" class="button" runat="server" Text="SUBMIT" 
                                Font-Bold="True" Font-Italic="False" Font-Names="Bookman Old Style" 
                                Height="38px"  Width="97px" OnClientClick="Button1_Click"/>
                            <br />
                        </td>
                    </tr>
                </table>
                    
                    <br />
                    
                 
    
         
    
                   
                   
                 
                
            </div>
    
   
         </form> 
            </body>
</html>
