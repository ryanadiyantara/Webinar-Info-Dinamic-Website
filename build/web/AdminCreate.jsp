<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin-Create</title>
    <link rel="stylesheet" type="text/css" href="css_js/style.css"/>
    <script src="css_js/script.js"></script> 
</head>

<body>
    <!--------------------HEADER-------------------->
    <header>
        <img class="header-logo" src="aset/Logo.png">
    </header>
    <div class="jarak">
    </div>

    <!--------------------NAV-------------------->
    <nav>
        <a href="indexAdmin.html"><img class="nav-homelogo" src="aset/Home.png" height="20px" width="20px"></a>
        <img class="nav-nextlogo" src="aset/Next.png" height="10px" width="10px">
        <p class="nav-text" >Admin-Create</p>
    </nav>
    

    <!--------------------BANNER-------------------->
    <div class="banner">
        <h1 class="banner-h1">Halaman Admin</h1>
        <p class="banner-p">Tambah Webinar baru</p>
    </div>


    <!--------------------Create-------------------->
    <div class="Admin-Create">
        <form action="UserController?data=user&proses=input-user" method="post">
            <p>
                <label>Judul</label>
                <input type="text" name="judul_webinar"/>
            </p>
            <p>
                <label>Path Thumbnail (Ukuran: 2:1)</label>
                <input type="text" name="thumbnail"/>
            </p>
            <p>
                <label>Hari, Tanggal dan Waktu</label>
                <input type="text" name="tanggal_waktu" placeholder="ex: Senin, 01 Januari 2022"/>
            </p>
            <p>
                <label>Nama Pembicara</label>
                <input type="text" name="nama_pembicara"/>
            </p>
            <p>
                <label>Path Foto Pembicara (Ukuran: 1:1)</label>
                <input type="text" name="foto_pembicara"/>
            </p>
            <p>
                <label>Profil Pembicara</label>
                <input type="text" name="profil_pembicara"/>
            </p>
            <p>
                <label>Minimal Usia</label>
                <input type="text" name="minimal_usia"/>
            </p>
            <p>
                <label>Level</label>
                <input type="text" name="level_webinar"/>
            </p>
            <p>
                <label>Bahasa</label>
                <input type="text" name="bahasa_webinar"/>
            </p>
            <p>
                <label>Kategori</label>
                <input type="text" name="kategori_webinar"/>
                <p>Kategori Ex: Personal Development, Sales & Marketing, Teaching & Academics.</p>
            </p>
            <p>
                <label>Reward</label>
                <input type="text" name="reward_webinar"/>
            </p>
            <p>
                <label>Ringkasan Webinar</label>
                <input type="text" name="ringkasan_webinar"/>
            </p>
            <p>
                <label>Harga</label>
                <input type="text" name="harga_webinar" placeholder="ex: Rp.50.000 / Gratis"/>
            </p>
            <input class="AdminCreate-Button1" type="submit" name="submit" value="Tambah"/> 
        </form>
        <a href="indexAdmin.jsp"><button class="AdminCreate-Button2">Back</button></a>
    </div>

</body>
</html>