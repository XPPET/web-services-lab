<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestWebSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Καλημέρα</title>
    <style type="text/css">
        .auto-style1 {
            color: #990033;
        }
        .auto-style2 {
            width: 49%;
        }
        .auto-style3 {
            width: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #00FFFF" title="ΣΟΣ">
        <div>
            <h1 class="auto-style1" style="font-family: 'Comic Sans MS'">Ένα δοκιμαστικό site</h1>
            
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Θεσσαλονίκη"></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="109px" ImageUrl="~/Photos/Koala.jpg" Width="192px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos/Lighthouse.jpg" Height="109px" Width="192px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Κλήση" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Photos/Penguins.jpg"  Height="109px" Width="192px" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
    </body>
</html>
