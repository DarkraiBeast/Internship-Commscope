<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestList.aspx.cs" Inherits="visitorSystem2.RequestList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="~/Content/style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 5px;
        }
        #GridView1{
            text-align: center;
        }
        .auto-style6 {
            margin-top: 0px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
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

        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style5"/>
        </div>

   
    <div id="container">
        <p style="text-align:center;font-size:40px;" class="auto-style4">&nbsp;<strong>REQUEST 
            LIST</strong></p>
        <hr style="background-color: darkblue; "  size="6" />
    </div>
         <div class="auto-style7">

             

             <div class="auto-style8">
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date:
                 <asp:TextBox ID="TextBox1" class="text" runat="server" TextMode="Date"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Date:
                 <asp:TextBox ID="TextBox2" class="text" runat="server" TextMode="Date"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button1" class="button" runat="server" Text="Search" 
                     Height="32px" Width="84px" OnClick="Button1_Click" />
                 <br />
                 <br />

             

             <br />

             

             </div>

             

             <asp:GridView ID="GridView1" runat="server" border="1" Height="186px" Width="1498px" 
                 CellPadding="4" ForeColor="#333333" GridLines="None" 
                 CssClass="auto-style6" Visible="False" >
                 <AlternatingRowStyle BackColor="White" />
                 <EditRowStyle BackColor="#2461BF" />
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#2461BF" ForeColor="White" 
                     HorizontalAlign="Center" />
                 <RowStyle BackColor="#EFF3FB" />
                 <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
             </asp:GridView>

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
