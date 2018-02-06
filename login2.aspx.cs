using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace PRODUIT_FINAL
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            // La connexion à la base de données
            SqlConnection cn = Class1.GetConnection();
            // la requête sous forme de chaîne de caractères
            String txtReq = "Select * from t_user where login_user = '" + this.txtLogin.Text + "' "
            + " and pwd = '" + this.txtPwd.Text + " '";

            DataTable dt = Class1.Executer_Requete(txtReq, "maTable");
            if (dt.Rows.Count == 0)
            {
                this.lblError.Text = "Veuillez vérifier vos paramètres de connexion";
                this.lblError.Visible = true;
            }
            else
            {
                
                FormsAuthentication.SetAuthCookie("", false);
                Session["mat_user"] = dt.Rows[0][0];
                Session["id_profil"] = dt.Rows[0]["id_profil"];
                Session["NP"] = dt.Rows[0]["nom"] + " " + dt.Rows[0]["prenom"];
                
                // Profil Utilisateur 
                if (Convert.ToString(Session["id_profil"]) == "4")
                {
                    Response.Redirect("user_lst_reclamations.aspx");
                }

                // Profil Administrateur
                else if (Convert.ToString(Session["id_profil"]) == "1")
                {
                    Response.Redirect("admin_affect.aspx");
                }
            }
        }

       

       
    }
}