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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("database/berkayturk.accdb"));
            baglanti.Open();
            OleDbDataAdapter adaptor2 = new OleDbDataAdapter("select * from isler where menuid in (2,3,5)", baglanti);
            DataTable dtt = new DataTable();
            adaptor2.Fill(dtt);
            tekrar2.DataSource = dtt;
            tekrar2.DataBind();
            baglanti.Close();

            OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("database/berkayturk.accdb"));
            bag.Open();
            OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from referans where refid in (1,2,3,4,5,6,7,8)", bag);
            DataTable dt = new DataTable();
            adaptor.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();
            bag.Close();

        }
    }
}