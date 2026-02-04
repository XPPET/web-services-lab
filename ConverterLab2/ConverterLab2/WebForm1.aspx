<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ConverterLab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Μετατροπή Συναλλάγματος</h1>
            Δώστε νόμισμα προέλευσης:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="28px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:DropDownList ID="lstCurFrom" runat="server" Height="22px" Width="220px">
            </asp:DropDownList>
            <br />
            <br />
            Δώστε νόμισμα προορισμού:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="lstCurTo" runat="server" Height="24px" Width="220px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Μετατροπή" />
            <br />
            <br />
            Αποτέλεσμα: <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
