<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Security.aspx.cs" Inherits="visitorSystem2.Security" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Security</title>
        <link href="~/Content/style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 31px;
            text-align: left;
        }
        #GridView2 {
            
            margin: 4px 8px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 327px;
            text-align: center;
            height: 30px;
        }
        .auto-style9 {
            width: 327px;
            height: 26px;
            text-align: center;
        }
        .auto-style10 {
            height: 26px;
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            height: 30px;
        }
        .auto-style12 {
            height: 30px;
        }
        #ImageButton1{
            position:absolute;
        }
        .auto-style13 {
            left: 894px;
            top: 358px;
            height: 49px;
            width: 51px;
        }
        .auto-style14 {
            margin-left: 20px;
        }
        
        .auto-style15 {
            width: 297px;
            height: 44px;
            position:absolute;
            left: 1129px;
            top: 43px;
            background-color: #9dd4ee;
            border-radius: 20px;
            border: solid black 3px;
            padding: 0px 30px;
        }
        
        .auto-style16 {
            font-size: xx-small;
        }
        #Button3{
            background-color:#2727c8;
            border-radius:20px;
            color:white;
            position:absolute;
            margin:-10px 44px;
        }
        #Button3:hover {
        background-color: #154bea;
         border-radius:20px;
         color:white;
         position:absolute;
         margin:-10px 44px;
        }
        .auto-style17 {
            left: 227px;
            top: 8px;
            width: 88px;
            height: 47px;
        }
        .auto-style18 {
            font-size: large;
            color: #0a0b9d;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        
    <div class="auto-style20">
        <br />
        <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
            ImageUrl="~/images/Screenshot (69).png" Width="289px" />

        <div class="auto-style15">

            <strong>

            <br class="auto-style16" />
            </strong>
            <span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> </span>
            <strong>&nbsp;

            </strong><span class="auto-style18"><strong><em>WELCOME,</em></strong>&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="#0A0B9D" Font-Italic="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" 
                Text="LOGOUT" CssClass="auto-style17" Font-Bold="True" Font-Italic="True" 
                Font-Names="Cooper Black" />

        </div>

        <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style21"/>
        <p style="text-align:center;font-size:40px;" class="auto-style4">
            <em><strong>Details of Visitors</strong></em></p>
        <hr style="background-color: darkblue; "  size="6" />
        </div>
        <div class="auto-style5">
            <br />
            
            <div class="auto-style6">
                <br />
            
                <br />
                <br />
            </div>
        </div>
    <div class="auto-style6">

            <br />

            <table class="auto-style7" border="1">
                <tr>
                    <td class="auto-style9"><strong>Visitor id</strong></td>
                    <td class="auto-style10"><strong>Start Time</strong></td>
                    <td class="auto-style10"><strong>End Time</strong></td>
                    <td class="auto-style10"><strong>Status</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox class="text" ID="TextBox2" runat="server" Font-Bold="True" ></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox class="text" ID="TextBox1" runat="server" TextMode="Time" 
                            Height="25px" Width="182px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox class="text" ID="TextBox3" runat="server" TextMode="Time" 
                            Height="25px" Width="182px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <strong>
                        <asp:DropDownList class="text" ID="DropDownList1" runat="server" Height="20px" 
                            Width="182px">
                            <asp:ListItem>---select---</asp:ListItem>
                            <asp:ListItem>Not Started</asp:ListItem>
                            <asp:ListItem Value="ongoing">on going</asp:ListItem>
                            <asp:ListItem>Completed</asp:ListItem>
                        </asp:DropDownList>
                        </strong>
                    </td>
                </tr>
            </table>

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" class="button" runat="server" Height="45px" Text="Update" 
                Width="97px" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/images/icons8-refresh-64.png" CssClass="auto-style13" OnClick="ImageButton1_Click"  
                 />
        
            <br />
            <br />
            <br />

            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" border="1" Height="163px" Width="1485px" 
                CssClass="auto-style14" OnRowDataBound="GridView1_RowDataBound" 
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPaging">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
             <Columns>
                <asp:BoundField DataField="Visitor_Id" HeaderText="Visitor Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email ID" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile No" />
                 <asp:BoundField DataField="Date" HeaderText="Date" />
                 <asp:BoundField DataField="Employee_Name" HeaderText="Employee Name" />
                 
                 <asp:TemplateField>
                    <HeaderTemplate>
                        Request Approval 
                        <asp:DropDownList ID="Approve" runat="server" OnSelectedIndexChanged="AppChanged" AutoPostBack="true" AppendDataBoundItems="true">
                            <asp:ListItem Text="ALL" Value="ALL"></asp:ListItem>
                            <asp:ListItem Text="Approved" Value="Approved"></asp:ListItem>
                            <asp:ListItem Text="Rejected" Value="Rejected"></asp:ListItem>
                        </asp:DropDownList> 
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Eval("Request_Approval") %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:BoundField DataField="Start_Time" HeaderText="Start Time" />
                 <asp:BoundField DataField="End_Time" HeaderText="End Time" />
                 <asp:TemplateField>
                    <HeaderTemplate>
                        Visit Status 
                        <asp:DropDownList ID="Req" runat="server" OnSelectedIndexChanged="ReqChanged" AutoPostBack="true" AppendDataBoundItems="true">
                            <asp:ListItem Text="All" Value="All"></asp:ListItem>
                            <asp:ListItem Text="Not Started" Value="Not Started"></asp:ListItem>
                            <asp:ListItem Text="On going" Value="ongoing"></asp:ListItem>
                            <asp:ListItem Text="Completed" Value="Completed"></asp:ListItem>
                        </asp:DropDownList> 
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Eval("visit_status") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

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
