<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="BasvuruFormuSon.Yonetim.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Giriş Yap</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link  href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <script src="swalalert/sweetalert2.all.js"></script>
    <script src="swalalert/sweetalert2.js"></script>
    <link href="swalalert/sweetalert2.css" rel="stylesheet" />
    <script>
        function hatamesaji() {
            Swal.fire(
                'HATA !',
                'Kullanıcı Adı ve Şifre Hatalı',
                'error'
            )
        }
       
    </script>
</head>
<body>
      <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                  <form id="form1" runat="server" CssClass="user">
                                        <div class="form-group">

                                            <asp:TextBox runat="server"   CssClass="form-control form-control-user"     ID="txt_Kadi" aria-describedby="emailHelp"               placeholder="Kullanıcı Adı"> </asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                         <asp:TextBox runat="server" TextMode="Password" class="form-control form-control-user"        ID="txt_Sifre" placeholder="Şifre">  </asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Beni Hatırla
                                                    </label>
                                            </div>
                                        </div>
                                      <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-primary btn-user btn-block" OnClick="Button1_Click" />
                                     
                                      
                                        <hr>
                                 
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="#">Şifremi Unuttum?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>

</body>
</html>