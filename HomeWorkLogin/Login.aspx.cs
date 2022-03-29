using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWorkLogin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Server.Transfer("Home.aspx");
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Checklogin(chRemember.Checked,txtUsername.Text,txtPassword.Text);
        }

        private void KeepSession(string namecus, string username, string password)
        {

            //Session["name"] = name.Trim();
            keppName(namecus.Trim());
            Session["username"] = username.Trim();
            Session["password"] = password.Trim();

        }
        private void Checklogin(bool checkRemember, string username, string password)
        {
            if (checkRemember == true)
            {
                KeepSession("Admin", username, password);

                if (username == "admin" && password == "admin")
                {
                    Server.Transfer("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('username and password invalid');</script>");
                }
            }
            else
            {
                if (username == "admin" && password == "admin")
                {
                    keppName("Admin");
                    Server.Transfer("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('username and password invalid');</script>");
                }
            }
        }
        private void keppName(string name)
        {
            HttpCookie nameCookie = new HttpCookie("name");
            nameCookie.Value = name;
            nameCookie.Expires = DateTime.Now.AddDays(1d);
            Response.Cookies.Add(nameCookie);
        }

    }
}