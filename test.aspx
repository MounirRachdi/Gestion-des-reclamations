<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="PRODUIT_FINAL.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 40%;">
            <tr>
                <td style="text-align: center; background-color: #6666FF; font-weight: bold; color: #FFFFFF;">Test de connectivité</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="BtnConnection" runat="server" OnClick="BtnConnection_Click" Text="Se connecter" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
