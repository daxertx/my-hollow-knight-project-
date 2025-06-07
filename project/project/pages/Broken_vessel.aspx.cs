using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.pages.boss_list
{
    public partial class Broken_vessel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "darkorange";
            Session["corrent_page"] = "Broken_vessel";
        }
    }
}