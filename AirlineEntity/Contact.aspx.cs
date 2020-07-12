using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirlineEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DatabaseConnection.link conn = new DatabaseConnection.link();
            conn.AddDelUpdate("insert into Contact values('"+txtName.Text+"','"+txtEmail.Text+"','"+txtMsg.Text+"')");
            output.InnerHtml = "We will Reply you Soon! ";
            txtEmail.Text = "";
            txtMsg.Text = "";
            txtName.Text = "";

        }
    }
}