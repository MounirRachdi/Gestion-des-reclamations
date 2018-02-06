<%@ Page Title="" Language="C#" MasterPageFile="~/MPageUser.Master" AutoEventWireup="true" CodeBehind="admin_affect.aspx.cs" Inherits="PRODUIT_FINAL.admin_affect" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script language="javascript" type="text/javascript" controlstyle-forecolor="Orchid">
        function setMouseOverColor(element)
        {
            newImage = "url(img/fond2.png)";
            element.style.backgroundImage = newImage;
        }

        function setMouseOutColor(element)
        {
            element.style.backgroundImage = 'none';
        }


    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:GridView ID="DGV1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnRowCommand="DGV1_RowCommand" OnRowDataBound="DGV1_RowDataBound" AllowPaging="True" OnPageIndexChanging="DGV1_PageIndexChanging" PageSize="5">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
        <Columns>
            <asp:BoundField DataField="id_reclam" HeaderText="id" />
            <asp:BoundField DataField="id_type_probleme" HeaderText="id_type" />
            <asp:BoundField DataField="S_User" HeaderText="Utilisateur" />
            <asp:BoundField DataField="Titre" HeaderText="Titre" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:BoundField DataField="Type_Prob" HeaderText="Type Prob" />
            <asp:BoundField DataField="Etat" HeaderText="Etat" />
            <asp:BoundField DataField="Operateur" HeaderText="Opérateur" />
            <asp:ButtonField ButtonType="Image" CommandName="affecter" ImageUrl="~/img/affecter.png" />
        </Columns>
    </asp:GridView>
    <asp:Panel ID="MaPanel" runat="server">
        <table style="border: thin groove #000000; width:100%; background-color: #CCCCFF;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Maroon" Text="Affecter la Réclamation à"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:DropDownList ID="CB_Op" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Btn_Non" runat="server" BackColor="#336666" Font-Bold="True" ForeColor="White" OnClick="Btn_Non_Click" Text="Annuler" />
                </td>
                <td style="text-align: left">
                    <asp:Button ID="BtnValider" runat="server" BackColor="#336666" Font-Bold="True" ForeColor="White" OnClick="Btn_Oui_Click" Text="Valider" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Label ID="e_msg" runat="server"></asp:Label>
    <asp:ModalPopupExtender ID="AdminPopup" runat="server" TargetControlID="e_msg" PopupControlID="MaPanel">
    </asp:ModalPopupExtender>
    <asp:Label ID="lbl_Error" runat="server"></asp:Label>
    <br /><br />
</asp:Content>
