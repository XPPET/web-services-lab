<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StadiaLab2b.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Πληροφορίες για στάδια</h1>
            Επίλεξε στάδιο:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="213px">
            </asp:DropDownList>
            <br />
            <br />
            Όνομα σταδίου: <asp:Label ID="lblName" runat="server"></asp:Label>
            <br />
            <br />
            Διαθέσιμες θέσεις:
            <asp:Label ID="lblSeats" runat="server"></asp:Label>
            <br />
            <br />
            Πόλη:
            <asp:Label ID="lblCity" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">Google URL link</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server">Wikipedia</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
