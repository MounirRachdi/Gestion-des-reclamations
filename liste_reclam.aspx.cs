using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PRODUIT_FINAL
{
    public partial class liste_reclam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Remplir_cb_Etat();
                Remplir_cb_Type();
                Alimenter_Grid();
            }
        }

        void Alimenter_Grid() 
        {
            string req = "select * from v_reclam";
            DataTable dt = Class1.Executer_Requete(req, "v_rec");
            this.DGV1.DataSource = dt;
            this.DGV1.DataBind();

        }
        void Remplir_cb_Etat()
        {
            string req = "Select * from etat";
            Class1.Remplir_cb(req, this.cb_Etat);
            ListItem lst = new ListItem("Sélectionnez un choix", "0");
            this.cb_Etat.Items.Insert(0, lst);
        }
        void Remplir_cb_Type()
        {
            string req = "Select * from Type_prob";
            Class1.Remplir_cb(req, this.cb_Type);
            ListItem lst = new ListItem("Sélectionnez un choix", "0");
            this.cb_Type.Items.Insert(0, lst);
        }

        protected void cb_Etat_SelectedIndexChanged(object sender, EventArgs e)
        {
            Filtre_Grid(); 
        }


        void Filtre_Grid() {
            // Aucun choix
            if (cb_Etat.SelectedValue == "0")
            {
                Alimenter_Grid();
            }
            else
                // Filtrer par etat
            {
                string req = "select * from v_reclam where id_etat = " + this.cb_Etat.SelectedValue;
                DataTable dt = Class1.Executer_Requete(req, "v_rec");
                this.DGV1.DataSource = dt;
                this.DGV1.DataBind();
            }
        }

        protected void cb_Type_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}