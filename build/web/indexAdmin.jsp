<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelProject.UserModel"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Halaman Admin </title>
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
        <a><img class="nav-homelogo" src="aset/Home.png" height="20px" width="20px"></a>
    </nav>


    <!--------------------BANNER-------------------->
    <div class="banner">
        <h1 class="banner-h1">Halaman Admin</h1>
        <p class="banner-p">Website Ingfo Webinar</p>
    </div>


    <!--------------------CRUD-------------------->
    <div class="index-Admin">
        <a href="UserController?proses=input-user"><button class="indexAdmin-button-tambah">Tambah</button></a>
        <p></p>

        <table border="1" cellspacing="0" cellpadding="0" width="100%">
            <tr>
                <th>ID</th>
                <th>Judul</th>
                <th>Tanggal</th>
                <th>Nama Pembicara</th>
                <th>Level Webinar</th>
                <th>Harga</th>
                <th>Aksi</th>
           </tr>
           <%
            UserModel km = new UserModel();
            List<UserModel> data = new ArrayList<UserModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.read();
            } 
            for (int x = 0; x < data.size(); x++) {
            %>
            <tr>
                <td><%=x + 1%></td>
                <td><%=data.get(x).getJudul_webinar()%></td>
                <td><%=data.get(x).getTanggal_waktu()%></td>
                <td><%=data.get(x).getNama_pembicara()%></td>
                <td><%=data.get(x).getLevel_webinar()%></td>
                <td><%=data.get(x).getHarga_webinar()%></td>
                <td><a href="UserController?proses=edit-user&id=<%=data.get(x).getId()%>">Edit</a> / <a href="UserController?proses=hapus-user&id=<%=data.get(x).getId()%>">Hapus</a></td>
            </tr>
            <%}%>
        </table>
    </div>

</body>
</html>
