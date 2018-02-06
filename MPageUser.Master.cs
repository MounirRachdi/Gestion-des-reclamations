using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRODUIT_FINAL
{
    public partial class MPageUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  this.lblDate.Text = DateTime.Now.ToString();
            this.lblNom.Text = Convert.ToString(Session["NP"]);
            this.lblChemin.Text = Convert.ToString(Session["chemin"]);
        
           
        }
        

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToString();
        }
    }

}