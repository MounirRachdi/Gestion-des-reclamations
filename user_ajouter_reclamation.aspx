<%@ Page Title="" Language="C#" MasterPageFile="~/MPageUser.Master" AutoEventWireup="true" CodeBehind="user_ajouter_reclamation.aspx.cs" Inherits="PRODUIT_FINAL.user_ajouter_reclamation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<script runat="server">

    protected void btnValider_Click(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"> 
    </asp:ScriptManager>--%>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="titre obligatoire" ControlToValidate="txtTitre" Display="None"></asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
            </cc1:ValidatorCalloutExtender>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc" Display="None" ErrorMessage="Description obligatoire"></asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" runat="server" TargetControlID="RequiredFieldValidator2">
            </cc1:ValidatorCalloutExtender>
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
    <br />
    <br />
    </asp:Content>
