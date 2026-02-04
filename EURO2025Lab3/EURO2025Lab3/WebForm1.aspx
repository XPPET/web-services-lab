<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EURO2025Lab3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">EURO 2025</h1>
            <asp:DropDownList ID="lstTeams" runat="server" AutoPostBack="True" Height="24px" OnSelectedIndexChanged="lstTeams_SelectedIndexChanged" Width="208px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblTeamPlayers" runat="server" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="lstTeamPlayers" runat="server" AutoPostBack="True" Height="24px" Visible="False" Width="221px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblTeamPlayersNS" runat="server" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="lstTeamPlayersNS" runat="server" AutoPostBack="True" Height="24px" Visible="False" Width="218px">
            </asp:DropDownList>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
