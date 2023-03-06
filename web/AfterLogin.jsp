<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelProject.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Group2 2se5 - Project WAP</title>
    <link rel="stylesheet" type="text/css" href="css_js/style.css"/>
    <script src="css_js/script.js"></script> 
</head>

<body>
    <!--------------------HEADER-------------------->
    <header class="kalau-pencet-login">
        <img class="header-logo" src="aset/Logo.png">
        <p class="header-p-setelah-login">Hai, Ryan</p>
        <a href="UserController?proses=logout"><button class="header-button-keluar-setelah-login"> Logout </button></a>
    </header>
    <div class="jarak">
    </div>

    <!--------------------NAV-------------------->
    <nav>
        <a><img class="nav-homelogo" src="aset/Home.png" height="20px" width="20px"></a>
    </nav>

    <!--------------------BANNER-------------------->
    <div class="banner">
        <h1 class="banner-h1">Kumpulan Webinar di Seluruh Indonesia</h1>
        <p class="banner-p">Ikuti dan pelajari sesuai dengan minat kamu.</p>
    </div>
    
    <%
    UserModel km = new UserModel();
    List<UserModel> data = new ArrayList<UserModel>();
    String ket = request.getParameter("ket");
    if (ket == null) {
    data = km.read();
    } 
    for (int x = 0; x < data.size(); x++) {
    %>
    <!--------------------CONTENT-------------------->
    <div class="content">
        <img class="content-image" src="<%=data.get(x).getThumbnail()%>" width="250" height="125"> <!-- FOTO THUMNAIL -->
        <div class="content-harga-detailbtn">
            <h1>Gratis</h1>
            <a href="UserController?proses=lihat-detail-udah-login&id=<%=data.get(x).getId()%>" target="_parent"><button class="detail-button">Lihat Detail</button></a>
        </div>
        <div class="content-description">
            <p><%=data.get(x).getJudul_webinar()%></p> <!-- JUDUL -->
            <h2 class="content-description-category"><%=data.get(x).getKategori_webinar()%></h2> <!-- KATEGORI -->
            <h2 class="content-description-level"><%=data.get(x).getLevel_webinar()%></h2> <!-- LEVEL -->
            <h2 class="content-description-tanggal"><%=data.get(x).getTanggal_waktu()%></h2> <!-- TANGGAL dan WAKTU -->
            <h2 class="content-description-speaker">
                <img src="<%=data.get(x).getFoto_pembicara()%>" width="40" height="40"> <!-- FOTO PEMBICARA -->
                <p><%=data.get(x).getNama_pembicara()%></p> <!-- NAMA PEMBICARA -->
            </h2>   
        </div>
    </div>
    <%}%>
    <!--------------------FOOTER-------------------->
    <footer>
        <p class="footer-p-1">Ingin menggunakan layanan kami untuk mempromosikan webinar kamu?</p>
        <p class="footer-p-2">Yuk hubungi kami . . .</p>
        <div class="footer-social-icons">
            <a onclick="btnWhatsapp();" href="#"><img src="aset/whatsapp.png" height="40px" width="40px"></a>
            <a href="https://instagram.com/ryan.adiyantara?igshid=YmMyMTA2M2Y="><img src="aset/instagram.png" height="40px" width="40px"></a>
            <a href="https://t.me/AhbrewUwU"><img src="aset/telegram.png" height="40px" width="40px"></a>
        </div>
        <p class="footer-p-3">Copyright by Group 2 - 2se5</p>
    </footer>
    
    <!--------------------BUAT LOGIN-------------------->
    <div href="" class="wrab" id="wrab">
        <div class="login-bg">
            <div class="login-frame">
                <h1 class="login-frame-header">Bergabunglah sekarang, gratis!</h1>
                <form action="" method="get" accept-charset="utf-8">
                    <label class="label-login" for="">Email:</label>
                    <input class="text-input-login" type="text" placeholder="Masukan Email" id="name">
                    <label class="label-login" for="">Password:</label>
                    <input class="text-input-login" type="password" placeholder="Masukan Password" id="sandi">
                    <button type="submit" class="login-frame-button">Login</button>
                </form>
                <p class="daftar-alternative">Belum punya akun?<a href="UserDaftar.jsp">Daftar</a></p>
            </div>
        </div>
    </div>
</body>
</html>