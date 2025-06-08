using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project.pages
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "none";
            Session["corrent_page"] = "Menu";
            if (IsPostBack) 
            {
                string boss = Request.Form["boss"];
                if (Session["rank"].ToString() != "0")
                {
                    switch (boss)
                    {
                        case "Broken_vessel":
                            {
                                Response.Redirect("Broken_vessel.aspx");
                                break;
                            }

                        case "Grimm":
                            {
                                Response.Redirect("Grimm.aspx");
                                break;
                            }
                        case "Nightmare king grimm":
                            {
                                Response.Redirect("Nightmare_king_grimm.aspx");
                                break;
                            }
                        case "False knight":
                            {
                                Response.Redirect("False_knight.aspx");
                                break;
                            }
                        case "Brooding mawlek":
                            {
                                Response.Redirect("Brooding_mawlek.aspx");
                                break;
                            }
                        case "Sisters of battle":
                            {
                                Response.Redirect("Sisters_of_battles.aspx");
                                break;
                            }

                    }
                }
                else
                {
                    diverror.Style.Add("color", "red");
                    diverror.InnerHtml = "Please login first";
                }

                
            }
        }
    }
}