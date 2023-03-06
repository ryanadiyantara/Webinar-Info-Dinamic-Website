<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelProject.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    UserModel km = new UserModel();
    km.setId(id);
    List<UserModel> data = new ArrayList<UserModel>();
    data = km.cariID(); 
    if (data.size() > 0) {
%>                                        

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
        <a href="AfterLogin.jsp" target="_parent"><img class="nav-homelogo" src="aset/Home.png" height="20px" width="20px"></a>
        <img class="nav-nextlogo" src="aset/Next.png" height="10px" width="10px">
        <p class="nav-text" >Detail</p>
        <img class="nav-nextlogo" src="aset/Next.png" height="10px" width="10px">
        <p class="nav-text" ><%=data.get(0).getJudul_webinar()%></p>
    </nav>


    <!--------------------BANNER-------------------->
    <div class="content-banner">
        <h1><%=data.get(0).getJudul_webinar()%></h1><!--JUDUL-->
        <div class="speaker">
            <p>Pembicara</p>
            <p class="speaker-tengah">:</p>
            <p><%=data.get(0).getNama_pembicara()%></p><!--NAMA PEMBICARA-->
        </div>
        <div class="date">
            <p>Tanggal</p>
            <p class="date-tengah">:</p>
            <p><%=data.get(0).getTanggal_waktu()%></p><!--TANGGAL dan WAKTU-->
        </div>   
    </div>
    <div class="content-tag">
        <img src="aset/LogoUsia.png" height="50px" width="50px">
        <p>Minimal Usia : <%=data.get(0).getMinimal_usia()%></p><!--MINIMAL USIA-->
        <img src="aset/LogoLevel.png" height="50px" width="50px">
        <p>Level : <%=data.get(0).getLevel_webinar()%></p><!--LEVEL-->
        <img src="aset/LogoBahasa.png" height="50px" width="50px">
        <p>Bahasa : <%=data.get(0).getBahasa_webinar()%></p><!--BAHASA-->
    </div>
    <div class="content-tag">
        <img src="aset/LogoCategory.png" height="50px" width="50px">
        <p>Kategori : <%=data.get(0).getKategori_webinar()%></p><!--KATEGORI-->      
    </div>
    <div class="content-tag">
        <img src="aset/LogoReward.png" height="50px" width="50px">
        <p>Reward : <%=data.get(0).getReward_webinar()%></p><!--REWARD-->   
    </div>
    
    
    <!--------------------CONTENT-------------------->
    <div class="pembicara">
        <p class="head">Pembicara</p>
        <div class="speaker">
            <img src="<%=data.get(0).getFoto_pembicara()%>" height="70px" width="70px"><!--FOTO PEMBICARA-->
            <p class="speaker-name"><%=data.get(0).getNama_pembicara()%></p><!--NAMA PEMBICARA--> 
            <p class="speaker-profile"><%=data.get(0).getProfil_pembicara()%></p><!--PROFIL PEMBICARA-->
        </div>
    </div>
    <div class="ringkasan-webinar">
        <p class="head">Ringkasan Webinar</p>
        <p class="ringkasan"><%=data.get(0).getRingkasan_webinar()%>.</p><!--RINGKASAN WEBINAR-->
    </div>
    <div class="syarat-ketentuan">
        <p class="head">Syarat dan Ketentuan</p>
        <div class="syaratdanketentuan">
            <img src="aset/kertas.png" height="70x" width="70px">
            <p>Segala pemberitahuan mengenai informasi,syarat dan ketentuan
                webinar, serta perubahan jadwal webinar akan disampaikan langsung oleh 
                sistem kami melalui email, harap melakukan pengecekan email secara berkala.</p>
        </div>
    </div>

    <!--------------------DAFTAR-------------------->
    <div class="daftar" width="300" height="300">
        <img class="content-image" src="<%=data.get(0).getThumbnail()%>" width="250" height="125"><!--THUMBNAIL-->
        <p class="harga-webinar">Harga Webinar</h1>
        <p class="nominal"><%=data.get(0).getHarga_webinar()%></p><!--HARGA-->
        <a href="UserController?proses=daftar-sukses" target="_parent"><button class="daftar-button" onclick="btnDaftarWebinarUdahLogin();" >Daftar Sekarang</button></a>
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

</body>
</html>