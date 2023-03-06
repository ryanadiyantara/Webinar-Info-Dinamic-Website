package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.util.ArrayList;
import modelProject.UserModel;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Group2 2se5 - Project WAP</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css_js/style.css\"/>\n");
      out.write("    <script src=\"css_js/script.js\"></script> \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!--------------------HEADER-------------------->\n");
      out.write("    <header>\n");
      out.write("        <img class=\"header-logo\" src=\"aset/Logo.png\">\n");
      out.write("        <a href=\"UserController?proses=daftar-user\"><button class=\"header-button-daftar\">Daftar</button></a>\n");
      out.write("        <a href=\"#wrab\"><button class=\"header-button-masuk\"> Masuk</button></a>\n");
      out.write("    </header>\n");
      out.write("    <div class=\"jarak\">\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!--------------------NAV-------------------->\n");
      out.write("    <nav>\n");
      out.write("        <a><img class=\"nav-homelogo\" src=\"aset/Home.png\" height=\"20px\" width=\"20px\"></a>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <!--------------------BANNER-------------------->\n");
      out.write("    <div class=\"banner\">\n");
      out.write("        <h1 class=\"banner-h1\">Kumpulan Webinar di Seluruh Indonesia</h1>\n");
      out.write("        <p class=\"banner-p\">Ikuti dan pelajari sesuai dengan minat kamu.</p>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    ");

    UserModel km = new UserModel();
    List<UserModel> data = new ArrayList<UserModel>();
    String ket = request.getParameter("ket");
    if (ket == null) {
    data = km.read();
    } 
    for (int x = 0; x < data.size(); x++) {
    
      out.write("\n");
      out.write("    <!--------------------CONTENT-------------------->\n");
      out.write("    <div class=\"content\">\n");
      out.write("        <img class=\"content-image\" src=\"");
      out.print(data.get(x).getThumbnail());
      out.write("\" width=\"250\" height=\"125\"> <!-- FOTO THUMNAIL -->\n");
      out.write("        <div class=\"content-harga-detailbtn\">\n");
      out.write("            <h1>Gratis</h1>\n");
      out.write("            <a href=\"UserController?proses=lihat-detail&id=");
      out.print(data.get(x).getId());
      out.write("\" target=\"_parent\"><button class=\"detail-button\">Lihat Detail</button></a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"content-description\">\n");
      out.write("            <p>");
      out.print(data.get(x).getJudul_webinar());
      out.write("</p> <!-- JUDUL -->\n");
      out.write("            <h2 class=\"content-description-category\">");
      out.print(data.get(x).getKategori_webinar());
      out.write("</h2> <!-- KATEGORI -->\n");
      out.write("            <h2 class=\"content-description-level\">");
      out.print(data.get(x).getLevel_webinar());
      out.write("</h2> <!-- LEVEL -->\n");
      out.write("            <h2 class=\"content-description-tanggal\">");
      out.print(data.get(x).getTanggal_waktu());
      out.write("</h2> <!-- TANGGAL dan WAKTU -->\n");
      out.write("            <h2 class=\"content-description-speaker\">\n");
      out.write("                <img src=\"");
      out.print(data.get(x).getFoto_pembicara());
      out.write("\" width=\"40\" height=\"40\"> <!-- FOTO PEMBICARA -->\n");
      out.write("                <p>");
      out.print(data.get(x).getNama_pembicara());
      out.write("</p> <!-- NAMA PEMBICARA -->\n");
      out.write("            </h2>   \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    ");
}
      out.write("\n");
      out.write("    <!--------------------FOOTER-------------------->\n");
      out.write("    <footer>\n");
      out.write("        <p class=\"footer-p-1\">Ingin menggunakan layanan kami untuk mempromosikan webinar kamu?</p>\n");
      out.write("        <p class=\"footer-p-2\">Yuk hubungi kami . . .</p>\n");
      out.write("        <div class=\"footer-social-icons\">\n");
      out.write("            <a href=\"https://wa.me/6282128428935?text=Saya%20tertarik%20dengan%20layanan%20Anda\"><img src=\"aset/whatsapp.png\" height=\"40px\" width=\"40px\"></a>\n");
      out.write("            <a href=\"https://instagram.com/ryan.adiyantara?igshid=YmMyMTA2M2Y=\"><img src=\"aset/instagram.png\" height=\"40px\" width=\"40px\"></a>\n");
      out.write("            <a href=\"https://t.me/AhbrewUwU\"><img src=\"aset/telegram.png\" height=\"40px\" width=\"40px\"></a>\n");
      out.write("        </div>\n");
      out.write("        <p class=\"footer-p-3\">Copyright by Group 2 - 2se5</p>\n");
      out.write("    </footer>\n");
      out.write("    \n");
      out.write("    <!--------------------BUAT LOGIN-------------------->\n");
      out.write("    <div href=\"\" class=\"wrab\" id=\"wrab\">\n");
      out.write("        <div class=\"login-bg\">\n");
      out.write("            <div class=\"login-frame\">\n");
      out.write("                <h1 class=\"login-frame-header\">Bergabunglah sekarang, gratis!</h1>\n");
      out.write("                <form action=\"UserController?proses=login\" method=\"post\">\n");
      out.write("                    <label class=\"label-login\" >Username:</label>\n");
      out.write("                    <input class=\"text-input-login\" name=\"username\" type=\"text\" placeholder=\"Masukan Username\">\n");
      out.write("                    <label class=\"label-login\" >Password:</label>\n");
      out.write("                    <input class=\"text-input-login\" name=\"password\" type=\"password\" placeholder=\"Masukan Password\">\n");
      out.write("                    <button type=\"submit\" value=\"Login\" class=\"login-frame-button\">Login</button>\n");
      out.write("                </form>\n");
      out.write("                <p class=\"daftar-alternative\">Belum punya akun?<a href=\"UserDaftar.jsp\">Daftar</a></p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
