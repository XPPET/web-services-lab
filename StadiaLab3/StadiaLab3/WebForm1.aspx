<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StadiaLab3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Στάδια</h1>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="36px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="207px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLinkGoogle" runat="server">Google Maps: Πατήστε εδώ</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLinkWiki" runat="server">Wiki: Πατήστε εδώ</asp:HyperLink>
            <br />
            <br />
            <asp:PlaceHolder ID="iframePH" runat="server"></asp:PlaceHolder>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
