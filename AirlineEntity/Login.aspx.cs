using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineEntity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DatabaseConnection.link conn = new DatabaseConnection.link();
            DataTable tbl = new DataTable();
            String qry = "select * from Login where Name='"+txtName.Text+"' and Password='"+txtPassword.Text+"'";
            tbl = conn.SearchRecord(qry);
            if (tbl.Rows.Count > 0)
            {
                Response.Redirect("Working.aspx");
            }
            else {
                output.InnerHtml = "Verify Once your Name or Password ";
            }
        }
    }
}