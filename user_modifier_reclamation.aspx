<%@ Page Title="" Language="C#" MasterPageFile="~/MPageUser.Master" AutoEventWireup="true" CodeBehind="user_modifier_reclamation.aspx.cs" Inherits="PRODUIT_FINAL.user_modifier_reclamation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 70%;">
    <tr>
        <td>Matricule:</td>
        <td>
            <asp:Label ID="lblmat" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Titre:</td>
        <td>
            <asp:TextBox ID="txtTitre" runat="server"></asp:TextBox>
       
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Type de Problème:</td>
        <td>
            <asp:DropDownList ID="cbType" runat="server">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Description:</td>
        <td>
            <asp:TextBox ID="txtDesc" runat="server" Columns="30" Rows="6" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="text-align: right">
            <asp:Button ID="btnValider" runat="server" BackColor="#A0B578" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="btnValider_Click" Text="Valider" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
