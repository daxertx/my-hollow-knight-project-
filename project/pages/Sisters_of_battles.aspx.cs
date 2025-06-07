using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.pages.boss_list
{
    public partial class sisters_of_battles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "lawngreen";
            Session["corrent_page"] = "Sisters_of_battles";
        }
    }
}