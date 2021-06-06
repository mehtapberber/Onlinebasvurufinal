<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BasvuruFormuSon.Yonetim.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Heading -->
    <%--  <h1 class="h3 mb-2 text-gray-800">Başlık</h1>
                    <p class="mb-4">Açıklama .</p>--%>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                <asp:Label ID="lbl_Baslik" runat="server" Text=""></asp:Label></h6>
        </div>
        <div class="card-body">
       
            <div class="row">&nbsp;</div>
            <div class="table-responsive">
                <table id="table_id" class="display">
                    <thead>
                        <tr>
                            <th>Adi</th>
                            <th>Soyadi</th>
                            <th>Cinsiyet</th>
                            <th>Bolum</th>
                            <th>MenzuniyetOkul</th>
                            <th>MenzuniyetTarih</th>
                            <th>Il</th>
                            <th>Ilce</th>
                            <th>YetkiliAd</th>
                            <th>OnayTarih</th>
                            
                            <th>Seç</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>


                                <tr>
                                    <td><%# Eval("Adi") %></td>
                                    <td><%# Eval("Soyadi") %></td>
                                    <td><%# Eval("Cinsiyet") %></td>
                                    <td><%# Eval("Bolum") %></td>
                                    <td><%# Eval("MenzuniyetOkul") %></td>
                                    <td><%# Eval("MenzuniyetTarih") %></td>
                                    <td><%# Eval("Il") %></td>
                                    <td><%# Eval("Ilce") %></td>
                                    <td><%# Eval("YetkiliAd") %></td>
                                    <td><%# Eval("OnayTarih") %></td>
                                   
                                   
                                    <td><a href="cvgoruntule.aspx?cvid=<%# Eval("Id") %>">Görüntüle</a> </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="jsler" runat="server">
    <script>
        $(document).ready(function () {
            $('#table_id').DataTable();
        });
    </script>
</asp:Content>
