<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="StadiaLab3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #990033;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style1">Αποτελέσματα</h1>
        Δώστε αριθμό παιχνιδιού:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="26px"></asp:TextBox>
        <br />
        <br />
        (ή επιλέξτε ομάδες)<br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Αποτέλεσμα" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="177px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="184px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
