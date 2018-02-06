using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PRODUIT_FINAL
{
    public partial class user_lst_reclamations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["chemin"] = "Utilisateur/ Mes Réclamations";
            if (!IsPostBack)
            {
                source_cb();
                Alimenter_Grid();
            }


        }

        void source_cb()
        {
            string req1 = "select * from Type_Prob";
            Class1.Remplir_cb(req1, this.CB_TypeRec);
            ListItem lst = new ListItem("Aucun choix", "0");
            /// this.
            this.CB_TypeRec.Items.Insert(0, lst);
            string req2 = "select * from etat";
            Class1.Remplir_cb(req2, this.CB_Etat);
            this.CB_Etat.Items.Insert(0, lst);
        }

        void Alimenter_Grid() {

            string req = "select * from V_RECLAM order by date_maj desc";
            DataTable dt = Class1.Executer_Requete(req, "vrec");
            this.DGV1.DataSource = dt;
            this.DGV1.DataBind();
        }

        protected void CB_Etat_SelectedIndexChanged(object sender, EventArgs e)
        {
            S_Source_rech();
        }

        protected void CB_TypeRec_SelectedIndexChanged(object sender, EventArgs e)
        {
            S_Source_rech();
        }

        void S_Source_rech()
        {
            string req = "";
            if (this.CB_Etat.SelectedValue == "0")
            {
                if (this.CB_TypeRec.SelectedValue == "0")
                    req = "Select * from V_reclam order by date_maj desc";
                else
                    req = "Select * from V_reclam where id_type_probleme = " + this.CB_TypeRec.SelectedValue + " order by date_maj desc";
            }
            else
            {
                if (this.CB_TypeRec.SelectedValue == "0")
                    req = "Select * from V_reclam where id_etat = " + this.CB_Etat.SelectedValue + " order by date_maj desc";
                else
                    req = "Select * from V_reclam where id_type_probleme = " + this.CB_TypeRec.SelectedValue
                        + " and id_etat = " + this.CB_Etat.SelectedValue + " order by date_maj desc";
            }

            DataTable dt;
            dt = Class1.Executer_Requete(req, "tab_reclams");
            this.DGV1.DataSource = dt;
            this.DGV1.DataBind();
        }

        protected void DGV1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            S_Source_rech();
            this.DGV1.PageIndex =  e.NewPageIndex;
            this.DGV1.DataBind();

        }

        protected void DGV1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] = "javascript:setMouseOverColor(this);";
                e.Row.Attributes["onmouseout"] = "javascript:setMouseOutColor(this);";
            }


        }

        protected void DGV1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // je détecte l'id de la réclamation
            int i = Convert.ToInt32(e.CommandArgument);
            Session["id_reclam"] = this.DGV1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text;
            int val = Convert.ToInt32(Session["id_reclam"]);
            if (e.CommandName == "ajouter")
            {
                Response.Redirect("user_ajouter_reclamation.aspx");
            }

            if (e.CommandName == "supprimer")
            {
                this.Popup.Show();
            }

            if (e.CommandName == "modifier")
            {
                Response.Redirect("user_modifier_reclamation.aspx");
            }
        
        }

        protected void Btn_Oui_Click(object sender, EventArgs e)
        {
            S_Delete();
        }

        void S_Delete()
        {
            string req = "delete from reclam where "
            + "id_reclam= " + Session["id_reclam"];
            Class1.Executer_Cmd(req, e_msg);
            if (e_msg.Text != "")
            {
                this.e_msg.Visible = true;
            }
            else
            {
                Alimenter_Grid();
                this.Popup.Hide();
            }

        }

        protected void Btn_Non_Click(object sender, EventArgs e)
        {
            this.Popup.Hide();
        }


    }
}