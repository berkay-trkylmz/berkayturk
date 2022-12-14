using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace berkayturk
{
    public partial class refsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }
            else
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    son.InnerHtml = "<h2 class='text-danger'>Admin Sayfasından Gelmediniz</h2>";
                    son.InnerHtml += "<meta http-equiv='refresh' content='2;admin.aspx' ";
                }
                else
                {
                    string gelenid = Request.QueryString["id"];
                    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/berkayturk.accdb"));
                    bag.Open();
                    OleDbCommand komut = new OleDbCommand("delete from referans where refid=" + gelenid, bag);
                    komut.ExecuteNonQuery();
                    bag.Close();
                    son.InnerHtml = "<h2 class='text-success'>Başarıyla Kayıt Silindi</h2>";
                    son.InnerHtml += "<meta http-equiv='refresh' content='2;reftum.aspx' ";
                }
            }
        }
    }
}