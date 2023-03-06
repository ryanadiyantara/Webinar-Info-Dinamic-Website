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
        <p class="nav-text" >Daftar</p>
    </nav>
    
    <!--------------------BANNER-------------------->
    <div class="banner">
        <h1 class="banner-h1">Daftar Akun Website Ingfo Webinar</h1>
        <p class="banner-p">Email dan Nomor Whatsapp terdaftar, akan menjadi tempat dikirimnya informasi lebih detail tentang webinar yang anda ikuti, mohon isi dengan teliti.</p>
    </div>

    <!--------------------Create-------------------->
    <div class="Admin-Create">
        <form action="UserController?data=daftar-user&proses=daftar-user" method="post">
            <p>
                <label>Username</label>
                <input type="text" name="username"/>
            </p>
            <p>
                <label>Email</label>
                <input type="email" name="email"/>
            </p>
            <p>
                <label>Nomor Whatsapp Aktif</label>
                <input type="text" name="nomorWhatsapp"/>
            </p>
            <p>
                <label>Password</label>
                <input type="password" name="password"/>
            </p>
            <input class="AdminCreate-Button1" type="submit" name="submit" value="Submit"/> 
        </form>
        <a href="index.jsp"><button class="AdminCreate-Button2">Back</button></a>
    </div>

</body>
</html>
