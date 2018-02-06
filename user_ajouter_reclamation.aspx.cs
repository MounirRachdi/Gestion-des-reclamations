using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRODUIT_FINAL
{
    public partial class user_ajouter_reclamation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["chemin"] = "Utilisateur/ Ajouter Réclamation";
            this.lblmat.Text = Convert.ToString(Session["mat_user"]); ;
            //if (!IsPostBack)
            //{
            //    alimenter_cb_type_prob();
            //}
        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            s_insert();
            
        }


        void alimenter_cb_type_prob() 
        { 
        string req = "select * from Type_Prob";
            Class1.Remplir_cb(req,this.cbType);
        }

        void s_insert()
        {
            int mat_user = Convert.ToInt32(Session["mat_user"]);

            // proc_add_reclam_user (@matuser int, @Titre varchar(900), @Type_Prob int, @Desc varchar(4000))
            //string Req = "Exec proc_add_reclam_user " + mat_user + ", '" + titre + "', " + this.cbType.SelectedValue + ", '" + Desc + "'";

            string Req = "Insert into Reclam(mat_user, type_prob, titre, Description,"
                + " Date_creation, Date_maj, Etat) "
                + "Values (" + mat_user + ", "
                + this.cbType.SelectedValue + ", '"
                + this.txtTitre.Text + "' , '"
                + this.txtDesc.Text + "' ,"
                + "GetDate(), GetDate(), 1 )";

                Class1.Executer_Cmd(Req, this.lblError);
            if (this.lblError.Text == "")
            {
                Response.Redirect("user_lst_reclamations.aspx");
            }

        }

    }
}