using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BasvuruFormuSon.Models;
namespace BasvuruFormuSon.Yonetim
{
    public partial class index : System.Web.UI.Page
    {
        ISBULMADBEntities db = new ISBULMADBEntities();
        void CvDoldur()
        {
            var veriler = db.tblBasvurular.ToList().OrderBy(x => x.Adi);
            Repeater1.DataSource = veriler;
            Repeater1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CvDoldur();
            }
        }
    }
}