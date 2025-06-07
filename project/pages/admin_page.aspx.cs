using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace project.pages
{
    public partial class admin_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "orange";
            Session["corrent_page"] = "Admin";
                string table = Helper.print();
                
                tableinfo.InnerHtml = table.Replace("00:00:00","");
                tableinfo.Style.Add("color", "red");

        }
    }
}