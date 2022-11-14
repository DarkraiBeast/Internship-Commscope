<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="visitorSystem2.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="~/Content/style.css" rel="stylesheet" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>--%>
    <!-- Required library for webcam -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.24/webcam.js"></script>
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="~/Scripts/jquery-3.6.1.min.js"></script>
    <script src="~/Scripts/webCam/WebCam.js" ></script>
        

    <script type="text/javascript">
        var pageurl = "~/visitorPass.aspx/";
        $(function () {
            Webcam.set({
                width: 301,
                height: 215,
                mode: "save",
                image_format: 'jpg',
                jpeg_quality: 90,
                flip_horiz: true,
                onSave: function (data) {
                    $.ajax({
                        type: "POST",
                        url: pageurl + "/GetCapturedImage",
                        data: '',
                        contentType: "application/json; charset-utf-8",
                        dataType: "json",
                        success: function (r) {
                            $("[id*=idcaptured]").css("visibility", "visible");
                            $("[id*=idcaptured]").attr("src", r.d);
                            $find("mpe").hide();

                        },
                        failure: function(response) {
                            alert(response.d);
                        }
                    })
                },
                onCapture: function () {
                    webcam.save(pageurl);
                }
            }
                
            )
            Webcam.attach('#idwebcam')

            $("#btnCapture").click(() => {
                Webcam.snap((data_uri) => {
                    $('#idcaptured')[0].src= data_uri
                })
                Webcam.upload(data_uri, 'visitorPass.aspx', function () {
                        $('#Image1')[0].src = data_uri

                });
               
            })

           
            
                
        })
    </script>
    <style type="text/css">
        .auto-style20 {
            position: fixed;
            left: 10px;
            top: 15px;
        }
        .auto-style21 {
            width: 60%;
            height: 574px;
        }
        .auto-style22 {
            width: 313px;
        }
        .auto-style23 {
            width: 313px;
            height: 70px;
        }
        .auto-style24 {
            height: 70px;
        }
        .auto-style25 {
            width: 313px;
            height: 53px;
        }
        .auto-style26 {
            height: 53px;
        }
        .auto-style32 {
            text-align: center;
        }
        .auto-style35 {
            width: 97%;
            height: 241px;
        }
        .auto-style39 {
            width: 319px;
            height: 251px;
        }
        .auto-style42 {
            text-align: left;
        }
        .auto-style45 {
            width: 273px;
            height: 251px;
        }
        .auto-style48 {
            width: 301px;
            height: 216px;
        }
        .auto-style49 {
            width: 1507px;
            height: 5px;
        }
        .auto-style50 {
            width: 1507px;
            height: 4px;
        }
        .auto-style51 {
            height: 5px;
        }
        .auto-style53 {
            left: 966px;
            top: 601px;
            }
        #TextBox1{
            position:absolute;
        }
        .auto-style54 {
            width: 313px;
            height: 82px;
        }
        .auto-style55 {
            height: 82px;
        }
        .auto-style56 {
            width: 313px;
            height: 80px;
        }
        .auto-style57 {
            height: 80px;
        }
        </style>
    
</head>
<body>
    <form id="form1" runat="server" class="auto-style12">
    <div class="auto-style20">
        <br />
        <asp:ImageButton ID="commscope_logo" runat="server" Height="62px" 
            ImageUrl="~/images/Screenshot (69).png" Width="289px" />

        <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
            class="auto-style50"/>
        </div>

        <div id="container">
        <br />
        <br />
        <br />
        <br />
        <br />
            <p style="text-align:center;font-size:40px;">
                <em><strong>Register Yourself for Visitor Pass</strong></em></p>
        <hr style="background-color: darkblue; "  size="6" class="auto-style51" />
    </div>


        <div class="auto-style32">
            <br />
            <table align="center" class="auto-style21">
                <tr>
                    <td class="auto-style23">Enter Your Full Name: </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="regName" class="text" runat="server" Height="39px" Width="459px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">College Name: </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="regClg" class="text" runat="server" Height="39px" Width="459px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style54">Correspondece Address:</td>
                    <td class="auto-style55">
                        <asp:TextBox ID="regAdd" class="text" runat="server" Height="45px" TextMode="MultiLine" 
                            Width="450px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style56">Permanent Address: </td>
                    <td class="auto-style57">
                        <asp:TextBox ID="regPAdd" class="text" runat="server" Height="48px" TextMode="MultiLine" 
                            Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Choose Photo:
                        </td>
                    <td class="auto-style42">&nbsp;&nbsp;&nbsp;&nbsp;
                        <table class="auto-style35" >
                            <tr>
                                <td class="auto-style45">
                                    <div id="idwebcam" class="auto-style48" ></div>
		
                                </td>
                                <td class="auto-style39">
                                    <asp:Image ID="idcaptured" runat="server" CssClass="auto-style53" 
                                        Height="214px" Width="301px" />
                                </td>
                            </tr>
                        </table>

                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnCapture" class="button" runat="server" Height="33px" 
                            Width="79px" Text="Capture"  OnClientClick="return false;" 
                         />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;
                     

                        <asp:Button ID="btnUpload" class="button" runat="server" Height="33px" Text="Upload" 
                            Width="79px" OnClientClick="return false;" OnClick="btnUpload_Click" />
                     

                    </td>
                </tr>
            </table>
            <br />
        <hr style="margin-top: 3px; background-color:black; "  size="5" 
                class="auto-style49"/>
            <br />
            <br />
            <asp:Button ID="Button1" class="button" runat="server" Text="SUBMIT" 
                OnClick="Button1_Click" Height="46px" Width="107px" />
            <br />
            <br />
        </div>


    </form>
    
</body>
   <script>
       function upload(){
           alert("Photo uploaded successfully")
     
       }
   </script>
</html>
