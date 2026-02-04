<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MundialLab3.WebForm1" %>

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
            <h2 class="auto-style1">Mundial 2022</h2>
            <asp:DropDownList ID="lstTeamNames" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="lstTeamNames_SelectedIndexChanged" Width="192px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblPlayers" runat="server" Text="Οι παίκτες της ομάδας" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblPlithos" runat="server"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="lstTeamPlayers" runat="server" AutoPostBack="True" Height="16px" Visible="False" Width="223px">
            </asp:DropDownList>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
