<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="visitorSystem2.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style type="text/css">
		.auto-style1 {
			text-align: center;
            height: 714px;
        }
		.auto-style2 {
			width: 47%;
			height: 412px;
		}
		.auto-style4 {
			font-size: x-large;
		}
		#img {
			position: relative;
			margin: 6px -792px;
		}
		
		/*#detail {
			position: absolute;
			margin: 9px 402px;
		}
	    #man{
			opacity: 0.5;
		}*/
	    #Button3{
			position:absolute;
			left: 917px;
            top: 149px;
		}
	    
	    .auto-style14 {
            font-size: small;
        }
        .auto-style15 {
            width: 358px;
            height: 44px;
            margin: 6px 900px;
        }
        .auto-style16 {
            width: 420px;
            height: 44px;
        }
        .auto-style17 {
            width: 358px;
            height: 43px;
            margin: 6px 900px;
        }
        .auto-style18 {
            width: 420px;
            height: 43px;
        }
        .auto-style19 {
            width: 358px;
            height: 41px;
            margin: 6px 900px;
        }
        .auto-style20 {
            width: 420px;
            height: 41px;
        }
        	    
	    #Button3{
			position:absolute;
			left: 14px;
            top: 130px;
            width: 163px;
            height: 43px;
		}

	   
	    
	    .auto-style21 {
            left: 0px;
            top: 0px;
            height: 213px;
        }

	   
	    
	</style>
		<link rel="stylesheet" href="~/Content/style.css"  />
	
</head>
<body>
	<form id="form1" runat="server">
		<div id="print">
		    <div >
			<asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
				ImageUrl="~/images/Screenshot (69).png" Width="289px" />

			<br />
			<hr style="width: 1507px; margin-top: 3px; background-color:black; "  size="5"/>
		</div>
		 <div class="auto-style1">
			 <br />
			 <asp:Label ID="status" runat="server" Text="...pending for approval"></asp:Label>
			 <br />
			 <br class="auto-style14" />
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <asp:Button class="button" ID="refresh" runat="server" Text="Refresh" 
				 OnClick="Button1_Click" Height="35px" Width="93px" />
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &nbsp;&nbsp;&nbsp;&nbsp;
			 <br />
			 <hr style="background-color: darkblue; "  size="6" />
			 <br />
			 <span class="auto-style4">YOUR REQUEST HAS BEEN SENT. HERE ARE YOUR DETAILS !</span><br 
				 class="auto-style4" />
			 <br />

			 <table border="1" align="center" class="auto-style2" id="detail"
>
				 <tr>
					 <td class="auto-style15">Visitor ID :</td>
					 <td class="auto-style16">
						 <asp:Label ID="v_id" runat="server" ClientIDMode="Static"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style15">Date :</td>
					 <td class="auto-style16">
						 <asp:Label ID="date" runat="server"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style15">Name :</td>
					 <td class="auto-style16">
						 <asp:Label ID="name" runat="server"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style15">Email Id :</td>
					 <td class="auto-style16">
						 <asp:Label ID="email" runat="server"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style17">Mobile No :</td>
					 <td class="auto-style18">
						 <asp:Label ID="mob" runat="server"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style15">Purpose of Visit :</td>
					 <td class="auto-style16">
						 <asp:Label ID="visit" runat="server"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style19">Description (Optional) :</td>
					 <td class="auto-style20">
						 <asp:Label ID="desp" runat="server"></asp:Label>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style17">Employee Email :</td>
					 <td class="auto-style18">
						 <asp:Label ID="e_email" runat="server"></asp:Label>
					 </td>
				 </tr>
				 </table>
             <br />
             <br />
			 <asp:Button ID="Button3" runat="server" class="button" 
                 OnClick="Button3_Click" Text="Back to Home Page" 
                    />
			 <asp:Button ID="Button2" class="button" runat="server" Text="PRINT" 
                 Height="38px" Width="94px" Font-Bold="True"  OnClientClick="return PrintPage();" />
			 <br />
			 <br />
			 <br />
		 </div>
		</div>
	</form>
	
	<footer class="auto-style21">
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
	<script>
        function PrintPage() {
            var getpanel = document.getElementById("form1");
            var Mainwindow = window.open('', '', 'height=800,width=500')
            Mainwindow.document.write('<html><head><title>Visitor Details</title>')
            Mainwindow.document.write('</head><body>')
            Mainwindow.document.write(getpanel.innerHTML)
            Mainwindow.document.write('</body><html>')
            Mainwindow.document.close();
            setTimeout(() => {
                Mainwindow.print();
            }, 500)
            return false;
        }
    </script>
	
</body>
</html>
