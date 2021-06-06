using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BasvuruFormuSon.Models;
namespace BasvuruFormuSon.Yonetim
{
    public partial class yonetim : System.Web.UI.MasterPage
    {
        ISBULMADBEntities db = new ISBULMADBEntities();
        Sessionlar ss = new Sessionlar();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
                if(Session.Count>0 && Session[ss.YoneticiId()]!=null)
                {

                    int yoneticiid = int.Parse(Session[ss.YoneticiId()].ToString());
                    var kullanicibul = db.tblKullanicilar.Where(x => x.Id == yoneticiid).FirstOrDefault();
                    if (kullanicibul != null)
                        Literal1.Text = kullanicibul.Adi + "( " + kullanicibul.Yetki + " )";
                }
                else
                {
                    Response.Redirect("giris.aspx");
                }
            }
        }
    }
}