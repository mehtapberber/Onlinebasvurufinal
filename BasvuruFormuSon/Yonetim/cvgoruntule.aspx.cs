using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BasvuruFormuSon.Models;
namespace BasvuruFormuSon.Yonetim
{
    public partial class cvgoruntule : System.Web.UI.Page
    {

        ISBULMADBEntities db = new ISBULMADBEntities();
        Sessionlar ss = new Sessionlar();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString.Count>0 && Request.QueryString["cvid"]!=null)
                {
                    int CvIdsi = int.Parse(Request.QueryString["cvid"].ToString());
                    var cv = db.tblBasvurular.FirstOrDefault(x => x.Id == CvIdsi);
                    if(cv!=null)
                    {
                        txtTCNO.Text = cv.TCKimlikNo;
                        txtAdi.Text = cv.Adi;
                        txtSoyadı.Text = cv.Soyadi;
                        txtBabaAdi.Text = cv.BabaAdi;
                        txtDogTar.Text = cv.DogumTarihi;
                        lblCinsiyet.Text = cv.Cinsiyet;
                        txtDogYer.Text = cv.NufusKayitYer;
                        string yol = "~/" + cv.Fotograf;
                        Image1.ImageUrl = @yol;
                        txtSonOkul.Text = cv.MenzuniyetOkul;
                        txtMenzTar.Text = cv.MenzuniyetTarih;
                        txtBolum.Text = cv.Bolum;
                        txtTebligatAdresi.Text = cv.TebligatAdres;
                        txtIlce.Text = cv.Ilce;
                        txtIl.Text = cv.Il;
                        txtGSM.Text = cv.GSM;
                        txtTel.Text = cv.SabitTel;
                        txtEposta.Text = cv.EpostaAdres;
                        txtPostaKodu.Text = cv.PostaKodu;
                        txtKurum.Text = cv.MevcutKurum;
                        txtKurumGorev.Text = cv.MevcutGorev;
                        txtOnceKurum.Text = cv.EskiKurum;
                        txtOnceGorev.Text = cv.EskiGorev;
                        txtAyrilisNedeni.Text = cv.AyrilisNedeni;
                        txtAyrilisTar.Text = cv.AyrilisTarihi;
                        lblAskerlikDurum.Text = cv.AskerlikDurum;
                        txtAsker1.Text = cv.AskerlikSekli;
                        txtAsker2.Text = cv.AskerlikYapmadi;
                        lblMecburihizmet.Text = cv.MecburiHizmet;
                        txtHizmet1.Text = cv.YukumluKurum;
                        txtHizmet2.Text = cv.HizmetSuresi;
                        lblSicil.Text = cv.SicilKaydi;
                        txtSicilKaydi1.Text = cv.SucSebebi;
                        txtSicilKaydi2.Text = cv.CezaSuresi;
                        txtYetkiliAd.Text = cv.YetkiliAd;
                        txtYetkiliSoyad.Text = cv.YetkiliSoyad;
                        txtYetkiliGorev.Text = cv.YetkiliGorev;
                        TxtOnayTarih.Text = cv.OnayTarih;
                    }

                    else
                    {
                        Response.Redirect("index.aspx");
                    }

                }
            }
        }

        protected void btnyazdir_Click(object sender, EventArgs e)
        {

        }

        protected void BtnResimEkle_Click(object sender, EventArgs e)
        {

        }
    }
}