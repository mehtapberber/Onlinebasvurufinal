<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BasvuruFormuSon.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css' media="screen" />
   <style type="text/css">
    .vertical-text {
writing-mode:vertical-rl;
text-orientation:mixed;
}
   </style>  
    <title>Online Başvuru Formu</title>
</head>
<body style="background-color:#e3dfdf">
    <form id="form1" runat="server">
 <div class="container"  style="background-color:#FFFFFF; margin-left:auto; margin-bottom:20px; margin-right:auto;margin-top:20px;">
            <div style="height:70px;background-color:#696868;vertical-align:bottom; text-align:center">
          <br />
       <p style="margin-top:10px; font-weight:700; font-size:16px; color:#FFFFFF">ONLİNE BAŞVURU FORMU</p>
       

     </div> <div id="dvMessage" runat="server"  class="alert alert-danger">
            <asp:Label ID="lblMessage" runat="server" />
        </div>
       <table class="table table-bordered">
    <tr>
      <td rowspan="8" style="background-color:#FF610A; width:50px"><label class="vertical-text">KİŞİSEL BİLGİLER</label></td>
      <td style="width:200px"> 
         <label>TC Kimlik Numarası</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtTCNO" runat="server" Width="200px" placeholder="Kimlik Numarası" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTCNO" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTCNO" ErrorMessage="Geçersiz TC Girdiniz." ValidationExpression="^[1-9]{1}[0-9]{9}[02468]{1}$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        
          </div></td>
      <td rowspan="8" style="width:260px">
          <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" />
          <br />
           <div style="margin-top:10px">
               <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="250px" />
               <br />
          <asp:Button ID="BtnResimEkle" class="btn btn-lg btn-block btn-danger" runat="server" Text="Resimi Yükle"  ValidateRequestMode="Disabled" CausesValidation="False" formnovalidate OnClick="BtnResimEkle_Click" />
               <br />
               <asp:Label ID="lblDurum" runat="server" ForeColor="#CC0000"></asp:Label>
          </div>
         </td>
    </tr>
    <tr>
      <td> 
         <label>Adı</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtAdi" runat="server" Width="200px" placeholder="Adı" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdi" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>Soyadı</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtSoyadı" runat="server" Width="200px" placeholder="Soyadı" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoyadı" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
               <tr>
      <td> 
         <label>Baba Adı</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtBabaAdi" runat="server" Width="200px" placeholder="Baba Adı" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBabaAdi" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
               <tr>
      <td> 
         <label>Doğum Tarihi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtDogTar" runat="server" Width="200px" placeholder="Doğum Tarihi" TextMode="Date" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDogTar" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
               <tr>
      <td> 
         <label>Cinsiyeti</label>
      </td>
      <td> <div class="form-group">
          <asp:RadioButtonList ID="RBLCinsiyet" runat="server" Height="22px" RepeatDirection="Horizontal" Width="174px">
              <asp:ListItem>Erkek</asp:ListItem><asp:ListItem>Kadın</asp:ListItem>
          </asp:RadioButtonList>
          </div></td>
    </tr>
               <tr>
      <td> 
         <label>Nüfusa Kayıtlı Olduğu Yer</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtDogYer" runat="server" Width="200px" placeholder="Nüfus Kayıt" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDogYer" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
           </table>

       <div id="bosluk" style="height:5px"></div>
           
       <table class="table table-bordered">
    <tr>
      <td rowspan="8" style="background-color:#5BC9F5; width:50px"><label class="vertical-text">EĞİTİM BİLGİLERİ</label></td>
      <td style="width:200px"> 
         <label>En Son Bitirdiği Okul</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtSonOkul" runat="server" Width="400px" placeholder="Menzuniyet Okul" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSonOkul" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>Menzuniyet Tarihi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtMenzTar" runat="server" Width="200px" placeholder="Author Name" TextMode="Date" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMenzTar" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>Bölüm</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtBolum" runat="server" Width="200px" placeholder="Bölüm Adı" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtBolum" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
           </table>
              <div id="bosluk" style="height:5px"></div>
       <table class="table table-bordered">
    <tr>
      <td rowspan="8" style="background-color:#f9ce4a; width:50px"><label class="vertical-text">İLETİŞİM BİLGİLERİ</label></td>
      <td style="width:200px"> 
         <label>Tebligat Adresi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtTebligatAdresi" runat="server" Width="500px" placeholder="Tebligat Adresi" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtTebligatAdresi" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>İlçe</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtIlce" runat="server" Width="200px" placeholder="Adres İlçe" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtIlce" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>İl</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtIl" runat="server" Width="200px" placeholder="Adres İl" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtIl" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>GSM</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtGSM" runat="server" Width="200px" placeholder="Cep Telefonu" required TextMode="Phone"></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtGSM" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtGSM" ErrorMessage="Geçersiz Telefon Numaras.(Örn:0312 333 33 33)" ValidationExpression="(([\+]90?)|([0]?))([ ]?)((\([0-9]{3}\))|([0-9]{3}))([ ]?)([0-9]{3})(\s*[\-]?)([0-9]{2})(\s*[\-]?)([0-9]{2})" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>Sabit Telefon</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtTel" runat="server" Width="200px" placeholder="Sabit Telefon" TextMode="Phone"></asp:TextBox>
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>E-posta Adresi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtEposta" runat="server" Width="200px" placeholder="E-Posta" required TextMode="Email"></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtEposta" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
            <tr>
      <td> 
         <label>Posta Kodu</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtPostaKodu" runat="server" Width="200px" placeholder="Posta Kodu" required></asp:TextBox>
          </div></td>
    </tr>
           </table>
                           <div id="bosluk" style="height:5px"></div>
       <table class="table table-bordered">
    <tr>
      <td rowspan="8" style="background-color:#6ec50d; width:50px"><label class="vertical-text">KURUM BİLGİLERİ</label></td>
      <td style="width:200px"> 
         <label>Halen Çalıştığı Kurum</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtKurum" runat="server" Width="500px" placeholder="Mevcut Kurum"></asp:TextBox>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>Görevi ve Sicil No</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtKurumGorev" runat="server" Width="200px" placeholder="Görevi"></asp:TextBox>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>Daha Önce Çalıştığı Kurum</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtOnceKurum" runat="server" Width="200px" placeholder="Önceki Kurum"></asp:TextBox>
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>Görevi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtOnceGorev" runat="server" Width="200px" placeholder="Görevi"></asp:TextBox>
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>Ayrılış Nedeni</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtAyrilisNedeni" runat="server" Width="200px" placeholder="Ayrılış Nedeni"></asp:TextBox>
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>Ayrılış Tarihi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtAyrilisTar" runat="server" Width="200px" placeholder="Author Name" TextMode="Date"></asp:TextBox>
          </div></td>
    </tr>
          
           </table>
                                             <div id="bosluk" style="height:5px"></div>
       <table class="table table-bordered">
    <tr>
      <td rowspan="8" style="background-color:#ac77f2; width:50px"><label class="vertical-text">DİĞER BİLGİLER</label></td>
      <td style="width:200px"> 
         <label>Askerlik Durumu</label>
      </td>
      <td> <div class="form-group">
          <asp:RadioButtonList ID="RBAsker" runat="server" Height="22px" RepeatDirection="Horizontal" Width="174px">
              <asp:ListItem>Yaptı</asp:ListItem><asp:ListItem>Tecil</asp:ListItem>
              <asp:ListItem>Muaf</asp:ListItem>
          </asp:RadioButtonList>
          </div></td>
    <td><div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtAsker1" runat="server" Width="200px" placeholder="Yaptıysa Şekli"></asp:TextBox>
          </div></td>
            <td><div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtAsker2" runat="server" Width="200px" placeholder="Yapmadıysa Sebebi"></asp:TextBox>
          </div></td>

          </tr>
               <tr>
      <td style="width:200px"> 
         <label>Mecburi Hizmet</label>
      </td>
      <td> <div class="form-group">
          <asp:RadioButtonList ID="RBHizmet" runat="server" Height="22px" RepeatDirection="Horizontal" Width="174px">
              <asp:ListItem>Yok</asp:ListItem>
              <asp:ListItem>Var</asp:ListItem>
          </asp:RadioButtonList>
          </div></td>
    <td><div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtHizmet1" runat="server" Width="200px" placeholder="Varsa Yükümlü Kurum"></asp:TextBox>
          </div></td>
            <td><div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtHizmet2" runat="server" Width="200px" placeholder="Sebebi ve Süresi"></asp:TextBox>
          </div></td>

          </tr>
              <tr>
      <td style="width:200px"> 
         <label>Adli Sicil Sabıka Kaydı</label></td>
      <td> <div class="form-group">
          <asp:RadioButtonList ID="RBSabika" runat="server" Height="22px" RepeatDirection="Horizontal" Width="174px">
              <asp:ListItem>Yok</asp:ListItem>
              <asp:ListItem>Var</asp:ListItem>
          </asp:RadioButtonList>
          </div></td>
    <td><div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtSicilKaydi1" runat="server" Width="200px" placeholder="Varsa Suç Sebebi"></asp:TextBox>
          </div></td>
            <td><div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtSicilKaydi2" runat="server" Width="200px" placeholder="Ceza Türü ve Süresi"></asp:TextBox>
          </div></td>

          </tr>
           </table>
                <div id="bosluk" style="height:5px"></div>
       <table class="table table-bordered">
    <tr>
      <td rowspan="8" style="background-color:#ff6a00; width:50px"><label class="vertical-text">YETKİLİ BİLGİLERİ</label></td>
      <td style="width:200px"> 
         <label>İnceleyen Yetkili Adı</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtYetkiliAd" runat="server" Width="500px" placeholder="Yetkili Adı"  required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtYetkiliAd" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>İnceleyen Yetkili Soyadı</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtYetkiliSoyad" runat="server" Width="200px" placeholder="Yetkili Soyadı" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtYetkiliSoyad" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
    <tr>
      <td> 
         <label>İnceleyen Yetkili Görevi</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="txtYetkiliGorev" runat="server" Width="200px" placeholder="Yetkili Görev" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtYetkiliGorev" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
           <tr>
      <td> 
         <label>Tarih</label>
      </td>
      <td> <div class="form-group">
          <asp:TextBox CssClass="form-control col-sm-2" ID="TxtOnayTarih" runat="server" Width="200px" placeholder="Onay Tarihi" required></asp:TextBox>
        
          <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TxtOnayTarih" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"> * Doldurulması zorunlu alan.</asp:RequiredFieldValidator>
          </div></td>
    </tr>
          
           </table>
          
        <div style="text-align:center">
           <asp:Button ID="btnKaydet" class="btn btn-lg btn-success" Width="200px" runat="server" Text="KAYDET" OnClick="btnKaydet_Click" />
           </div>
        <div id="bosluk" style="height:5px">
       
       </div>
     </div>
    </form>
</body>
</html>
