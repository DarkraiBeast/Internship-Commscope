<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsEmp.aspx.cs" Inherits="visitorSystem2.detailsEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 52%;
            height: 373px;
        }
        .auto-style3 {
            width: 358px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 420px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        #appro{
            position:absolute;
            margin:7px 8px;
            border: 2px solid black;
            border-radius:10px;
        }
        .auto-style8 {
            height: 5px;
        }
        .auto-style9 {
            font-size: xx-small;
        }
        .auto-style10 {
            text-align: center;
            height: 26px;
        }
        #status{
            position: absolute;
        }
        .auto-style11 {
            left: 488px;
            top: 148px;
            position:absolute;
            margin:-9px -36px;
            width: 157px;
            height: 29px;
            border-radius: 30px;
            padding: 8px 13px;
        }
        #Button1{
            position: absolute;
            left: 1124px;
            top: 137px;
        }
        
        .auto-style12 {
            width: 358px;
            text-align: center;
            margin: 6px 900px;
        }
        .div{
           
            position: absolute;
            height: 70px;
            width: 230px;
            margin: -69px 397px;
            border-radius: 30px;
            background-color: yellow;
            border:1px solid black;
        }
        .auto-style13 {
            width: 358px;
            text-align: center;
            margin: 6px 900px;
            height: 46px;
        }
        .auto-style14 {
            width: 420px;
            text-align: center;
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div >
            <br />
            <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
                ImageUrl="~/images/Screenshot (69).png" Width="289px" />

             <hr class="auto-style8" style="background-color: black; "/>
             <br class="auto-style9" />
             <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             </span>
             <asp:Label ID="status" runat="server" Text="       ...pending for approval" 
                 CssClass="auto-style11" BackColor="#6DD2FE" BorderStyle="Groove" 
                 BorderColor="Black" Font-Bold="True"></asp:Label>
             <!--<div class="div"></div>-->
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
             <asp:TextBox ID="TextBox1" class="text" runat="server" TextMode="MultiLine" Height="45px" 
                     Width="241px"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" class="button" runat="server" Height="39px" Text="Approve / Reject" 
                 Width="191px" Font-Bold="True" Font-Names="Bookman Old Style" 
                 OnClick="Button1_Click"  
                 style="left: 919px; top: 141px" />
             <br />
             <hr style="background-color: darkblue; "  size="6" />
             <div class="auto-style6">
             <br /><span class="auto-style4">VISITOR'S DETAILS</span><br 
                 class="auto-style4" />
             <br />
             </div>
             <table border="1" align="center" class="auto-style2" 
>
                 <tr>
                     <td class="auto-style12">Visitor ID</td>
                     <td class="auto-style5">
                         <asp:Label ID="v_id" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style12">Date :</td>
                     <td class="auto-style5">
                         <asp:Label ID="date" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style13">Name :</td>
                     <td class="auto-style14">
                         <asp:Label ID="name" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style12">Email Id :</td>
                     <td class="auto-style5">
                         <asp:Label ID="email" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style12">Mobile No :</td>
                     <td class="auto-style5">
                         <asp:Label ID="mob" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style12">Purpose of Visit :</td>
                     <td class="auto-style5">
                         <asp:Label ID="visit" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style12">Description (Optional) :</td>
                     <td class="auto-style5">
                         <asp:Label ID="desp" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style12">Employee Email :</td>
                     <td class="auto-style5">
                         <asp:Label ID="e_email" runat="server"></asp:Label>
                     </td>
                 </tr>
             </table>
             <div class="auto-style10">
                 <br />
                 <br />
                 <br />
                 <br />
             </div>
        </div>
        
    </form>
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
</body>
</html>
