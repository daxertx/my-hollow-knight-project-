using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterandLogin button
            if (Session["rank"].ToString() == "0" && Session["corrent_page"].ToString() != "RegisterandLogin")
            {
                RegisterandLogin.Style.Add("display", "block");
            }
            else
            {
                RegisterandLogin.Style.Add("display", "none");
            }
            //
            //anti hack with url
            if(hacker(Session["corrent_page"].ToString(),Session["rank"].ToString()))
            {
                Session["corrent_page"] = "RegisterandLogin";
                Response.Redirect("Menu.aspx");
            }
            //
            //master background color
            div1.Style.Add("background-color", Session["color"].ToString());
            b.Style.Add("background-color", Session["color"].ToString());
            //
            //menu button
            if(Session["corrent_page"].ToString() != "Menu")
            {
                menu.Style.Add("display", "block");
            }
            else
            {
                menu.Style.Add("display", "none");
            }
            //
            //disconnect button
            if (Session["rank"].ToString() == "1" || Session["rank"].ToString() == "2")
            {
                if (Session["corrent_page"].ToString() == "dissconnect")
                {
                    dissconnect.Style.Add("display", "none");
                }
                else
                {
                    dissconnect.Style.Add("display", "block");
                }

            }
            else
            {
                dissconnect.Style.Add("display", "none");
            }
            //
            //welcome box style
            div1.Style.Add("font-weight", "bold");
            div1.Style.Add("font-size", "60px");
            div1.Style.Add("color", "red");
            div1.Style.Add("text-align", "center");
            div1.Style.Add("background-color", Convert.ToString(Session["color"]));

            //user logged in
            div1.InnerHtml = "Welcome: " + Session["username"].ToString();

            //if background color is red
            if (Convert.ToString(Session["corrent_page"]) == "Grimm" || Convert.ToString(Session["corrent_page"]) == "Nightmare king grimm")
            { div1.Style.Add("color", "white"); }
            else { div1.Style.Add("color", "red"); }

            //button for admin only
            if (Session["rank"].ToString() == "2" && Session["corrent_page"].ToString() != "Admin")
            {
                only_admin.Style.Add("display", "block");
            }
            else 
            {
                only_admin.Style.Add("display", "none");
            }
        }
        public bool hacker(string location,string rank)
        {
            //anti changing url not working
            if (int.Parse(rank) == 0 && location!= "RegisterandLogin" && location!= "Menu") 
            {
                return true;
                
            }
            else
            {
                return false;
            }
        }
    }
}