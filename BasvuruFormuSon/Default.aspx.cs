using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasvuruFormuSon
{
    public partial class Default : System.Web.UI.Page
    {
        string foto;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool TcDogruMu(string kimlikno)
        {
            kimlikno = kimlikno.Trim();
            if (kimlikno.Length != 11)
            {
                return false;
            }
            int[] sayilar = new int[11];
            for (int i = 0; i < kimlikno.Length; i++)
            {
                sayilar[i] = Int32.Parse(kimlikno[i].ToString());
            }
            int toplam = 0;
            for (int i = 0; i < kimlikno.Length - 1; i++)
            {
                toplam += sayilar[i];
            }
            if (toplam.ToString()[1].ToString() == sayilar[10].ToString() & sayilar[10] % 2 == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            foto = Image1.ImageUrl.ToString();
            int hata = 0;
            if (TcDogruMu(txtTCNO.Text) == false)
            {
                lblMessage.Text = "Geçersiz TC Kimlik No girdiniz";
                lblMessage.Visible = true;
                hata = 1;

            }
            if (foto == " ")
            {
                lblMessage.Text = "Lütfen Resim yükleyiniz";
                lblMessage.Visible = true;
                hata = 1;
            }
            if (RBLCinsiyet.SelectedIndex < 0)
            {
                lblMessage.Text = "Lütfen cinsiyet seçiniz";
                lblMessage.Visible = true;
                hata = 1;
            }
            if (RBAsker.SelectedIndex < 0)
            {
                lblMessage.Text = "Lütfen askerlik durumu seçiniz";
                lblMessage.Visible = true;
                hata = 1;
            }
            if (RBHizmet.SelectedIndex < 0)
            {
                lblMessage.Text = "Lütfen mecburi hizmet durumunu seçiniz.";
                lblMessage.Visible = true;
                hata = 1;
            }
            if (RBSabika.SelectedIndex < 0)
            {
                lblMessage.Text = "Lütfen sabıka durumu seçiniz.";
                lblMessage.Visible = true;
                hata = 1;
            }
            if (hata == 0)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Server=DESKTOP-LVBMCKC; Initial Catalog = ISBULMADB;Database=ISBULMADB;User Id=sa;Password=123*qazz";
                string query = "INSERT INTO " +
                    "tblBasvurular (TCKimlikNo,Adi,Soyadi,BabaAdi,DogumTarihi,Cinsiyet,NufusKayitYer,Fotograf,MenzuniyetOkul,MenzuniyetTarih,Bolum,TebligatAdres,Ilce,Il,GSM,SabitTel,EpostaAdres,PostaKodu,MevcutKurum,MevcutGorev,EskiKurum,EskiGorev,AyrilisNedeni,AyrilisTarihi,AskerlikDurum,AskerlikSekli,AskerlikYapmadi,MecburiHizmet,YukumluKurum,HizmetSuresi,SicilKaydi,SucSebebi,CezaSuresi,YetkiliAd,YetkiliSoyad,YetkiliGorev,OnayTarih) " +
                    "VALUES(@TCKimlikNo,@Adi,@Soyadi,@BabaAdi,@DogumTarihi,@Cinsiyet,@NufusKayitYer,@Fotograf,@MenzuniyetOkul,@MenzuniyetTarih,@Bolum,@TebligatAdres,@Ilce,@Il,@GSM,@SabitTel,@EpostaAdres,@PostaKodu,@MevcutKurum,@MevcutGorev,@EskiKurum,@EskiGorev,@AyrilisNedeni,@AyrilisTarihi,@AskerlikDurum,@AskerlikSekli,@AskerlikYapmadi,@MecburiHizmet,@YukumluKurum,@HizmetSuresi,@SicilKaydi,@SucSebebi,@CezaSuresi,@YetkiliAd,@YetkiliSoyad,@YetkiliGorev,@OnayTarih)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@TCKimlikNo", txtTCNO.Text);
                cmd.Parameters.AddWithValue("@Adi", txtAdi.Text);
                cmd.Parameters.AddWithValue("@Soyadi", txtSoyadı.Text);
                cmd.Parameters.AddWithValue("@BabaAdi", txtBabaAdi.Text);
                cmd.Parameters.AddWithValue("@DogumTarihi", txtDogTar.Text);
                cmd.Parameters.AddWithValue("@Cinsiyet", RBLCinsiyet.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@NufusKayitYer", txtDogYer.Text);
                cmd.Parameters.AddWithValue("@Fotograf", foto);
                cmd.Parameters.AddWithValue("@MenzuniyetOkul", txtSonOkul.Text);
                cmd.Parameters.AddWithValue("@MenzuniyetTarih", txtMenzTar.Text);
                cmd.Parameters.AddWithValue("@Bolum", txtBolum.Text);
                cmd.Parameters.AddWithValue("@TebligatAdres", txtTebligatAdresi.Text);
                cmd.Parameters.AddWithValue("@Ilce", txtIlce.Text);
                cmd.Parameters.AddWithValue("@Il", txtIl.Text);
                cmd.Parameters.AddWithValue("@GSM", txtGSM.Text);
                cmd.Parameters.AddWithValue("@SabitTel", txtTel.Text);
                cmd.Parameters.AddWithValue("@EpostaAdres", txtEposta.Text);
                cmd.Parameters.AddWithValue("@PostaKodu", txtPostaKodu.Text);
                cmd.Parameters.AddWithValue("@MevcutKurum", txtKurum.Text);
                cmd.Parameters.AddWithValue("@MevcutGorev", txtKurumGorev.Text);
                cmd.Parameters.AddWithValue("@EskiKurum", txtOnceKurum.Text);
                cmd.Parameters.AddWithValue("@EskiGorev", txtOnceGorev.Text);
                cmd.Parameters.AddWithValue("@AyrilisNedeni", txtAyrilisNedeni.Text);
                cmd.Parameters.AddWithValue("@AyrilisTarihi", txtAyrilisTar.Text);
                cmd.Parameters.AddWithValue("@AskerlikDurum", RBAsker.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@AskerlikSekli", txtAsker1.Text);
                cmd.Parameters.AddWithValue("@AskerlikYapmadi", txtAsker2.Text);
                cmd.Parameters.AddWithValue("@MecburiHizmet", RBHizmet.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@YukumluKurum", txtHizmet1.Text);
                cmd.Parameters.AddWithValue("@HizmetSuresi", txtHizmet2.Text);
                cmd.Parameters.AddWithValue("@SicilKaydi", RBSabika.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@SucSebebi", txtSicilKaydi1.Text);
                cmd.Parameters.AddWithValue("@CezaSuresi", txtSicilKaydi2.Text);
                cmd.Parameters.AddWithValue("@YetkiliAd", txtYetkiliAd.Text);
                cmd.Parameters.AddWithValue("@YetkiliSoyad", txtYetkiliSoyad.Text);
                cmd.Parameters.AddWithValue("@YetkiliGorev", txtYetkiliGorev.Text);
                cmd.Parameters.AddWithValue("@OnayTarih", TxtOnayTarih.Text);
                //cmd.Parameters.AddWithValue("", );
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage.Text = "Kayıt Başarılı";
            }

        }



        protected void BtnResimEkle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 10000000)
                        {
                            string filename = Path.GetFileName(FileUpload1.FileName);
                            if (filename != "")
                            {
                                FileUpload1.SaveAs(Server.MapPath("~/Fotograflar/") + filename);
                                lblDurum.Text = filename + " dosyası yüklendi!";
                                Image1.ImageUrl = "Fotograflar/" + filename;


                            }

                        }
                        else
                            lblDurum.Text = "Dosya boyutu 1= MB'dan düşük olmalı!";
                    }
                    else
                        lblDurum.Text = "Sadece JPEG formatı kabul edilir.";
                }
                catch (Exception ex)
                {
                    lblDurum.Text = "Dosya yüklenemedi: " + ex.Message;
                }
            }
        }
    }
}

    
