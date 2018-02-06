using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRODUIT_FINAL
{
    public partial class user_modifier_reclamation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["chemin"] = "Utilisateur/ Modifier Réclamation";
            this.lblmat.Text = Convert.ToString(Session["mat_user"]); ;
            if (!IsPostBack)
            {
                alimenter_cb_type_prob();
                S_Source();
            }

        }

        void alimenter_cb_type_prob()
        {
            string req = "select * from Type_Prob";
            Class1.Remplir_cb(req, this.cbType);
        }

        void S_Source()
        {
            string req = "select * from v_reclam where id_reclam= " + Convert.ToInt32(Session["id_reclam"]);
            DataTable dt;
            dt = Class1.Executer_Requete(req, "t_rec");

            string mat_user = Convert.ToString(dt.Rows[0]["mat_user"]);
            string titre = Convert.ToString(dt.Rows[0]["Titre"]);
            string desc = Convert.ToString(dt.Rows[0]["Description"]);
            this.lblmat.Text = mat_user;
            this.txtTitre.Text = titre;
            this.txtDesc.Text = desc;
            this.cbType.SelectedValue = Convert.ToString(dt.Rows[0]["id_type_probleme"]);
        }
        protected void btnValider_Click(object sender, EventArgs e)
        {
            S_Update(); }

        void S_Update()
        {
            string titre = this.txtTitre.Text.Replace("'", " ");
            string Description = this.txtDesc.Text.Replace("'", " ");

            string req = "update reclam "
            + " set Titre = '" + titre + "', "
            + " Description = '" + Description + "', "
             + " type_prob = " + this.cbType.SelectedValue + ", "
             + " Date_maj = GETDATE() "
           + " where id_reclam= " + Convert.ToInt32(Session["id_reclam"]);
            Class1.Executer_Cmd(req, this.lblError);
            if (this.lblError.Text == "")
                Response.Redirect("user_lst_reclamations.aspx");
        }
    }
}