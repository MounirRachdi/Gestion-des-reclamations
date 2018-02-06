<%@ Page Title="" Language="C#" MasterPageFile="~/MPageUser.Master" AutoEventWireup="true" CodeBehind="liste_reclam.aspx.cs" Inherits="PRODUIT_FINAL.liste_reclam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  --%>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="width:100%;">
                <tr>
                    <td>Etat</td>
                    <td>
                        <asp:DropDownList ID="cb_Etat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cb_Etat_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Type de Probleme</td>
                    <td>
                        <asp:DropDownList ID="cb_Type" runat="server" OnSelectedIndexChanged="cb_Type_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="DGV1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                                <asp:BoundField DataField="Titre" HeaderText="Titre" />
                                <asp:BoundField DataField="S_User" HeaderText="utilisateur" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                <asp:BoundField DataField="Type_Prob" HeaderText="Type" />
                                <asp:BoundField DataField="Etat" HeaderText="Etat" />
                                <asp:ButtonField ButtonType="Image" ImageUrl="~/img/icone_ajouter_32.png" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
 <br />
    <br />
</asp:Content>
