<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelProject.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin-Update</title>
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
        <p class="nav-text" >Admin-Update</p>
    </nav>
    

    <!--------------------BANNER-------------------->
    <div class="banner">
        <h1 class="banner-h1">Halaman Admin</h1>
        <p class="banner-p">Update Data Webinar</p>
    </div>


    <!--------------------Create-------------------->
    <div class="Admin-Create">
        <form action="UserController?data=user&proses=update-user" method="post">
            <%
                String id = request.getParameter("id");
                UserModel km = new UserModel();
                km.setId(id);
                List<UserModel> data = new ArrayList<UserModel>();
                data = km.cariID(); 
                if (data.size() > 0) {
            %>
            <p>
                <label>Judul</label>
                <input type="text" name="judul_webinar" value="<%=data.get(0).getJudul_webinar()%>"/>
            </p>
            <p>
                <label>Path Thumbnail (Ukuran: 2:1)</label>
                <input type="text" name="thumbnail" value="<%=data.get(0).getThumbnail()%>"/>
            </p>
            <p>
                <label>Hari, Tanggal dan Waktu</label>
                <input type="text" name="tanggal_waktu" placeholder="ex: Senin, 01 Januari 2022" value="<%=data.get(0).getTanggal_waktu()%>"/>
            </p>
            <p>
                <label>Nama Pembicara</label>
                <input type="text" name="nama_pembicara" value="<%=data.get(0).getNama_pembicara()%>"/>
            </p>
            <p>
                <label>Path Foto Pembicara (Ukuran: 1:1)</label>
                <input type="text" name="foto_pembicara" value="<%=data.get(0).getFoto_pembicara()%>"/>
            </p>
            <p>
                <label>Profil Pembicara</label>
                <input type="text" name="profil_pembicara" value="<%=data.get(0).getProfil_pembicara()%>"/>
            </p>
            <p>
                <label>Minimal Usia</label>
                <input type="text" name="minimal_usia" value="<%=data.get(0).getMinimal_usia()%>"/>
            </p>
            <p>
                <label>Level</label>
                <input type="text" name="level_webinar" value="<%=data.get(0).getLevel_webinar()%>"/>
            </p>
            <p>
                <label>Bahasa</label>
                <input type="text" name="bahasa_webinar" value="<%=data.get(0).getBahasa_webinar()%>"/>
            </p>
            <p>
                <label>Kategori</label>
                <input type="text" name="kategori_webinar" value="<%=data.get(0).getKategori_webinar()%>"/>
                <p>Kategori Ex: Personal Development, Sales & Marketing, Teaching & Academics.</p>
            </p>
            <p>
                <label>Reward</label>
                <input type="text" name="reward_webinar" value="<%=data.get(0).getReward_webinar()%>"/>
            </p>
            <p>
                <label>Ringkasan Webinar</label>
                <input type="text" name="ringkasan_webinar" value="<%=data.get(0).getRingkasan_webinar()%>"/>
            </p>
            <p>
                <label>Harga</label>
                <input type="text" name="harga_webinar" placeholder="ex: Rp.50.000 / Gratis" value="<%=data.get(0).getHarga_webinar()%>"/>
            </p>
            <input type="hidden" name="id" value="<%=data.get(0).getId()%>">
            <input class="AdminCreate-Button1" type="submit" value="Update"/>
            <%}%>
        </form>
        <a href="indexAdmin.jsp"><button class="AdminCreate-Button2">Back</button></a>
    </div>

</body>
</html>