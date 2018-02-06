using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRODUIT_FINAL
{
    public partial class admin_affect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                S_Source();
            }
        }

        //void Config_affichage()
        public void S_Source()
        {
            string req = "Select * from V_reclam order by date_maj desc";
            DataTable dt;
            dt = Class1.Executer_Requete(req, "tab_reclams");
            this.DGV1.DataSource = dt;
            this.DGV1.DataBind();
            this.DGV1.Columns[1].Visible = false;
        }

        protected void DGV1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["id_reclam"] = this.DGV1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text;
            Session["id_type"] = this.DGV1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text;

            if (e.CommandName == "affecter")
            {
                alimenter_Combo();
                //this.Label3.Text = Convert.ToString(Session["id_type"]);
                this.AdminPopup.Show();

            }
        }

        void alimenter_Combo()
        {
            string id_type = Convert.ToString(Session["id_type"]);
            string req = "select mat , Nom + ', ' + Prenom AS NP from V_User_Profil where id_profil = " + id_type + " order by Nom";
            Class1.Remplir_cb(req, this.CB_Op);
        }


        protected void DGV1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] = "javascript:setMouseOverColor(this);";
                e.Row.Attributes["onmouseout"] = "javascript:setMouseOutColor(this);";
            }
        }

        void S_Update()
        {
            string req = "update reclam "
            + " set mat_op = '" + this.CB_Op.SelectedValue + "', "
            + " Etat = 2, "
             + " Date_maj = GETDATE() "
           + " where id_reclam= " + Convert.ToInt32(Session["id_reclam"]);

            Class1.Executer_Cmd(req, this.lbl_Error);
            if (this.lbl_Error.Text == "")
            {
                this.AdminPopup.Hide();
                S_Source();
            }
        }

        protected void Btn_Non_Click(object sender, EventArgs e)
        {
            this.AdminPopup.Hide();
        }

        protected void Btn_Oui_Click(object sender, EventArgs e)
        {
            S_Update();
        }

        protected void DGV1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            S_Source();
            this.DGV1.PageIndex = e.NewPageIndex;
            this.DGV1.DataBind();
        }
    }
}