<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitorPass.aspx.cs" Inherits="visitorSystem2.visitorPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/style.css" rel="stylesheet" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>--%>
    <style type="text/css">
        .auto-style1 {
            position: fixed;
            background-color: white;
            left: 8px;
            top: 2px;
            height: 99px;
        }
        .auto-style2 {
            width: 1507px;
            height: 4px;
        }
        .auto-style3 {
            width: 1203px;
            height: 727px;
            margin: -1px -136px;
        }
        .auto-style4 {
            text-align: center;
        }
        .image {
            margin: 146px -350px;
            position: absolute;
        }
        
        .auto-style5 {
            left: 1003px;
            top: 396px;
            width: 238px;
            height: 305px;
            right: 250px;
        }
        #Image1{
            margin:6px 7px;
            position:absolute;
        }
        .visitName {
            margin: -547px -474px;
            position: absolute;
            font-size: 20px;
            float: left;
        }
        .visitFirm {
            margin: -490px -420px;
            position: absolute;
            font-size: 20px;
        }

        .visitPurVisit {
            margin: -427px -342px;
            position: absolute;
            font-size: 20px;
        }

        .visitDate {
            margin: -599px -492px;
            position: absolute;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style12">
    <div class="auto-style1">
        <br />
        <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
            ImageUrl="~/images/Screenshot (69).png" 
            OnClientClick="https://www.commscope.com/" Width="289px" />

        <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style2"/>
        </div>

   
    <div id="container">
        <br />
        <br />
        <br />
        <br />
        <p style="text-align:center;font-size:40px;">&nbsp;<strong><em>VISITOR PASS</em></strong></p>
        <hr style="background-color: darkblue; "  size="6" />
        <br />
        <br />
    </div>





        <div>
            <div class="auto-style4">
                <img alt="pass.jpg" class="auto-style3" src="images/Book1_page-0001.jpg" 
                    style="position: inherit" />
                <asp:Image ID="Image1" runat="server" CssClass="auto-style5" />
                <br />
                <br />

                <asp:Label ID="nam" runat="server" class="visitName"></asp:Label>
                <asp:Label ID="firm" runat="server" class="visitFirm"></asp:Label>
                <asp:Label ID="purVisit" runat="server" class="visitPurVisit"></asp:Label>
                <asp:Label ID="date" runat="server" class="visitDate"></asp:Label>


                <br />
                <asp:Button class="button" runat="server" Height="36px" Text="Print" 
                    Width="67px" />
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
            <br />

        </div>
    </footer>
</body>
    <script>
        $(document.ready(()=> {
            $('#Image1') = data_uri
        }))
    </script>
</html>