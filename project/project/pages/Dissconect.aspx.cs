using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.pages
{
    public partial class Dissconect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "";
            Session["corrent_page"] = "dissconnect";
            if (IsPostBack)
            {
                Session["Register/Login"] = "Register";
                Session["corrent_page"] = "RegisterandLogin";
                Session["rank"] = "0";
                Session["username"] = "guest";
                Response.Redirect("RegisterandLogin.aspx");
            }
        }
    }
}