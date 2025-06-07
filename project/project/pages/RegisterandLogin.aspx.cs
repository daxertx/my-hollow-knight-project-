using System;
using System.Web.Services;

namespace project.pages
{
    public partial class RegisterandLogin : System.Web.UI.Page
    {
        private static string currentMode = "Register";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["color"] = "none";
            Session["corrent_page"] = "RegisterandLogin";
            Session["rank"] = "0";

            if (IsPostBack)
            {
                
                    if (currentMode == "Register")
                    {
                        // Registration logic
                        string username = Request.Form["username"];
                        string password = Request.Form["password"];
                        string confirm_password = Request.Form["confirm_password"];
                        string name = Request.Form["name"];
                        string family_name = Request.Form["family_name"];
                        int phone = Convert.ToInt32(Request.Form["phone"]);
                        string email = Request.Form["email"];
                        string birthday = Request.Form["Birthday"];
                        string gender = Request.Form["gender"];
                        string city = Request.Form["city"];
                        bool player = Convert.ToBoolean(Request.Form["HK"]);
                        
                            string result = Helper.register(username, password, name, family_name, phone, email, birthday, gender, city, player);
                            if (result == "true")
                            {
                                currentMode = "Login"; // Switch to login after register success
                                SetModeUI();
                            }
                            else
                            {
                                diverror.InnerHtml = result;
                                return;
                            }
                    }
                    else
                    {
                        // Login logic
                        string username = Request.Form["username"];
                        string password = Request.Form["password"];
                        
                        string check = Helper.log_in(username, password);

                        if (check == "true")
                        {
                            if(username == "dandan")
                            {
                                Session["rank"] = "2"; // Admin
                            }
                            else
                            {
                                Session["rank"] = "1"; // Regular user
                            }
                            Session["username"] = username;
                            Response.Redirect("Menu.aspx");
                        }
                        else 
                        {
                            diverror.InnerHtml = check;
                            return;
                        }

                    }
                
                
            }
            else
            {
                SetModeUI();
            }
        }

        [WebMethod]
        public static string Move_Page()
        {
            if (currentMode == "Register")
            {
                currentMode = "Login";
            }
            else
            {
                currentMode = "Register";
            }
            return currentMode;
        }

        private void SetModeUI()
        {
            //change text and what u see in the page which affects js ltr
            if (currentMode == "Login")
            {
                //now login
                Register_only.Style["display"] = "none";
                headder.InnerText = "Login page";
                move_to_other.InnerText = "Create an account";
            }
            else
            {
                //now register
                Register_only.Style["display"] = "inline";
                headder.InnerText = "Register page";
                move_to_other.InnerText = "I have an account";
            }
        }
    }
}
