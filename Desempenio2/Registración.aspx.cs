using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempenio2
{
    public partial class Registración : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["nombre"];
            Label1.Text = cookie != null ? cookie.Value :"No se creo la cookie";

            if (this.Session["usuario"] != null)
            {
                Label2.Text= Session["usuario"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookieContraseña1 = new HttpCookie("nombre", "valor");
            HttpCookie cookieContraseña2 = new HttpCookie("contraseña", TextBox4.Text);
            cookieContraseña1.Expires = DateTime.Now.AddSeconds(3);
            Response.Cookies.Add(cookieContraseña1);
            Response.Cookies.Add(cookieContraseña2);
            Response.Redirect(Request.RawUrl);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.Session["usuario"] = TextBox1.Text;
            Response.Redirect(Request.RawUrl);
        }
    }
}