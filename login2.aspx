<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="PRODUIT_FINAL.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="img/stylelogin.css" rel="stylesheet" />">
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 60%">
            <tr>
                <td style="width: 50%">
                    &nbsp;</td>
                <td>
                    <p>
                        
                        <asp:Label ID="Login" runat="server" Text="Login" ForeColor="White"></asp:Label>
                    </p>
                </td>
                <td>
                   
                    
                        <asp:TextBox ID="txtLogin" runat="server" Text="Ici votre login" BackColor="#669999"></asp:TextBox>
                     
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <p>  
                        <asp:Label ID="Label1" runat="server" Text="Mot de passe" ForeColor="White"></asp:Label>
                    </p>
                </td>
                <td>
                    <p>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Text="000000000" BackColor="#669999"></asp:TextBox>
                        </p>
                </td>
            </tr>
             <tr>
                <td>
                    
                   
                </td>
                <td>
                        
                </td>
                 <td style="text-align: right">
                     <asp:ImageButton ID="btnLogin" runat="server" ImageUrl="~/img/flechecercle48.png" Height="60px" Width="60px" OnClick="btnLogin_Click"/>
                 </td>
            </tr>
             <tr>
                <td colspan="3" style="text-align: right">
                    
                   
                    <asp:Label ID="lblError" runat="server" BackColor="#99CCFF" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                    
                   
                </td>
            </tr>
        </table>    
      
    <p>
      
      
    </p>


  </form>

  <section class="about">
    <p class="about-author">
      &copy; 2013&ndash;2014 <a href="" target="_blank">GESTRECLAM</a> -
      <a href="" target="_blank"> License</a><br>
      Original  by <a href="" target="_blank">Ahmed Labidi</a>
  </section>
</body>
</html>