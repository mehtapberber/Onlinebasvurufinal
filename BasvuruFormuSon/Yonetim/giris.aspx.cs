using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BasvuruFormuSon.Models;

namespace BasvuruFormuSon.Yonetim
{
    public partial class giris : System.Web.UI.Page
    {
        ISBULMADBEntities db = new ISBULMADBEntities();
        Sessionlar ss = new Sessionlar();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
         

        //giris yap
        protected void Button1_Click(object sender, EventArgs e)
        {
            var varmi = db.tblKullanicilar.Where(x => x.KullaniciAdi == txt_Kadi.Text && x.Sifre == txt_Sifre.Text).FirstOrDefault();
            if (varmi != null)
            {
                Session[ss.YoneticiId()] = varmi.Id;
                Response.Redirect("~/Yonetim/index.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "hatamesaji()", true);
            }
        }
    }
}