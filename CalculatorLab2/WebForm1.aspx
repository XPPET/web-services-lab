<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CalculatorLab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #00FFFF">
        <h1>Αριθμομηχανή</h1>
        <p>
            Αριθμός Α:
            <asp:TextBox ID="TextBox1" runat="server" Width="96px"></asp:TextBox>
        </p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="+" Width="46px" />
&nbsp;&nbsp;
        <asp:Button ID="btnSubtract" runat="server" OnClick="btnSubtract_Click" Text="-" Width="34px" />
&nbsp;&nbsp;
        <asp:Button ID="btnMultiply" runat="server" OnClick="btnMultiply_Click" Text="*" Width="39px" />
&nbsp;&nbsp;
        <asp:Button ID="btnDivide" runat="server" OnClick="btnDivide_Click" Text="/" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Καθαρισμός" />
        <p>
            Αριθμός Β:&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="85px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Αποτέλεσμα: <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
