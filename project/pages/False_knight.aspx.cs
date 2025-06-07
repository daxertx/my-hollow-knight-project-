using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.pages.boss_list
{
    public partial class False_knight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "steelblue";
            Session["corrent_page"] = "False_knight";
        }
    }
}