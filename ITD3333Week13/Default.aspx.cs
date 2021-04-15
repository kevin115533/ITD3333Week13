using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int counter;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {
        
            if (passwordTxt.Text == "PLANE$w@lk3r" && nameTxt.Text == "Gideon")
            {
                FormsAuthentication.RedirectFromLoginPage(
                    nameTxt.Text, false);
                Response.Redirect("Success.aspx");
            }
            else
            {
                statusLbl.Text = "Password Incorrect!";
                if (ViewState["Counter"] == null)
                {
                    counter = 1;
                }
                else
                {
                    counter = (int)ViewState["Counter"] + 1;
                }

                ViewState["Counter"] = counter;
                statusLbl.Text = "You have unsuccessfully logged in " + counter.ToString() +
                    " times, you have only 5 tries!";
                if (counter == 5)
                {
                    form1.Attributes.Add("style", "background-color:#ff867d;");
                    statusLbl.Text = "This is your LAST attempt!";

                }
                if (counter > 5)
                {
                    FormsAuthentication.RedirectFromLoginPage(
                        nameTxt.Text, false);
                    Response.Redirect("Hacker.aspx");
                }

            }
        
    }
}