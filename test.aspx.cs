using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PRODUIT_FINAL
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConnection_Click(object sender, EventArgs e)
        {
            // Applelation de la chaine de connexion qui se trouve dans le web.config
            string Strcn = System.Configuration.ConfigurationManager.ConnectionStrings["macn"].ConnectionString;
            SqlConnection cn = new SqlConnection(Strcn);
           
            try
            {
                cn.Open();
                this.lblmsg.Text = "Connexion réussite";
            }
            catch (Exception ex)
            {
                this.lblmsg.Text = ex.Message;
            }
            finally 
            {
                cn.Close();
            }
        }
    }
}