<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CountriesLab2b.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #003366;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1">Πληροφορίες Χώρας</h2>
            Χώρα:
            <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="269px">
            </asp:DropDownList>
            <br />
            <br />
            ISO Code:
            <asp:Label ID="lblIsoCode" runat="server"></asp:Label>
            <br />
            <br />
            Πρωτεύουσα:
            <asp:Label ID="lblCapital" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            Κωδικός διεθνούς κλήσης:
            <asp:Label ID="lblPhone" runat="server"></asp:Label>
            <br />
            <br />
            Νόμισμα:
            <asp:Label ID="lblCurrency" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Κλήση Υπηρεσίας" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
