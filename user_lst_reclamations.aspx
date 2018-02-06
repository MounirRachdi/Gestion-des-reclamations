<%@ Page Title="" Language="C#" MasterPageFile="~/MPageUser.Master" AutoEventWireup="true" CodeBehind="user_lst_reclamations.aspx.cs" Inherits="PRODUIT_FINAL.user_lst_reclamations" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script type="text/javascript" controlstyle-forecolor="Orchid">

            function setMouseOverColor(element) {
                newImage = "url(img/fond2.png)";
                element.style.backgroundImage = newImage;
            }

            function setMouseOutColor(element) {
                element.style.backgroundImage = 'none';

            }
</script>

    <p>
        <table style="width:100%;">

            <tr>
                <td colspan="3">
                   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>--%>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table style="width:60%;">
                                <tr>
                                    <td class="auto-style1">Recherche</td>
                                    <td class="auto-style1">Etat</td>
                                    <td class="auto-style1">
                                        <asp:DropDownList ID="CB_Etat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CB_Etat_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>Type de Réclamation</td>
                                    <td>
                                        <asp:DropDownList ID="CB_TypeRec" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CB_TypeRec_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:GridView ID="DGV1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="DGV1_PageIndexChanging" PageSize="5" OnRowDataBound="DGV1_RowDataBound" OnRowCommand="DGV1_RowCommand">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#7C6F57" />
                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#E3EAEB" />
                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                                            <Columns>
                                                <asp:BoundField DataField="id_reclam" HeaderText="id" />
                                                <asp:BoundField DataField="S_User" HeaderText="Utilisateur" />
                                                <asp:BoundField DataField="Titre" HeaderText="Titre" />
                                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                                <asp:BoundField DataField="Type_Prob" HeaderText="Type de problème" />
                                                <asp:BoundField DataField="ETAT" HeaderText="Etat" />
                                                <asp:BoundField DataField="Operateur" HeaderText="Operateur" />
                                                <asp:ButtonField ButtonType="Image" CommandName="ajouter" ImageUrl="~/img/btn_ajouter.png" />
                                                <asp:ButtonField ButtonType="Image" CommandName="supprimer" ImageUrl="~/img/supp.png" />
                                                <asp:ButtonField ButtonType="Image" CommandName="modifier" ImageUrl="~/img/modif.png" />
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="e_msg" runat="server"></asp:Label>

                                        <cc1:ModalPopupExtender ID="Popup" runat="server" TargetControlID="e_msg" PopupControlID="Panel1">
                                        </cc1:ModalPopupExtender>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Panel ID="Panel1" runat="server">
                        <table style="border: thin groove #000000; width:100%; background-color: #E3EAEB;">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="Maroon" Text="Voulez vous vraiment supprimer la reclamation ?"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="text-align: right">
                                    <asp:Button ID="Btn_Non" runat="server" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" OnClick="Btn_Non_Click" Text="Non" />
                                </td>
                                <td>
                                    <asp:Button ID="Btn_Oui" runat="server" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" OnClick="Btn_Oui_Click" Text="Oui" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
         
        </table>
    </p>
</asp:Content>
