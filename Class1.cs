using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PRODUIT_FINAL
{
    public class Class1
    {
        public static SqlConnection GetConnection()
        {
            string strCn = Convert.ToString(System.Configuration.ConfigurationManager.ConnectionStrings["macn"]);
            SqlConnection Cn = new SqlConnection(strCn);
            
            return Cn;
        }

        public static DataTable Executer_Requete(string txtSQL, String TableName)
        {
            SqlConnection Cn = GetConnection();
            SqlDataAdapter da = new SqlDataAdapter(txtSQL, Cn);
            DataSet ds = new DataSet();
            da.Fill(ds, TableName);
            DataTable dt;
            dt = ds.Tables[TableName];
            return dt;
        }


        public static void Executer_Cmd(String txtSQL, Label lbl)
        {
            //Execution des requette sql dans la procedure stocke Sp_Exec_Insert
            //sera utile lors de insert et update
            SqlConnection cn = GetConnection();
            int Nb_Ligne;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(txtSQL, cn);
                Nb_Ligne = cmd.ExecuteNonQuery();
                lbl.Text  = "";
                cn.Close();
            }

            catch (Exception ex)
            {
                lbl.Text = ex.Message;
            }
        }
        public static void Remplir_cb(String txtSQL, DropDownList cb)
        {
            SqlConnection cn = GetConnection();
            cn.Open();
            SqlCommand cmd = new SqlCommand(txtSQL, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            cb.DataSource = dr;
            cb.DataValueField = dr.GetName(0);
            cb.DataTextField = dr.GetName(1);
            cb.DataBind();
            dr.Close();
            cn.Close();
        }

        public static void Remplir_cb(String txtSQL, DropDownList cb, String txtAvant)
        {
            SqlConnection cn =GetConnection();
            cn.Open();
            SqlCommand cmd = new SqlCommand(txtSQL, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            cb.DataSource = dr;
            cb.DataValueField = dr.GetName(0);
            cb.DataTextField = dr.GetName(1);
            cb.DataBind();
            ListItem list = new ListItem();
            list.Value = "0";
            list.Text = txtAvant;
            if (txtAvant != "")
            {
                cb.Items.Insert(0, list);
            }
            dr.Close();
            cn.Close();
        }

    }
}