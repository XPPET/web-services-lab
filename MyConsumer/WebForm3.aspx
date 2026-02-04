<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MyConsumer.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%= DateTime.Now.ToString("T") %>
            <hr />
            <asp:ScriptManager ID="ScriptManager1"
                 runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <%= DateTime.Now.ToString("T") %>
               <asp:Button ID="Button1" runat="server" Text="OK" />
        </ContentTemplate>
     </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>
