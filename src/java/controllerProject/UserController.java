package controllerProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelProject.UserModel;

public class UserController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses=request.getParameter("proses");
        String action=request.getParameter("action");
        
            if (proses.equals("input-user")){
            response.sendRedirect("AdminCreate.jsp");/*mau masukin data webinar baru, masuk ke admincreate*/
            return;
            }
            else if(proses.equals("edit-user")){
            response.sendRedirect("AdminUpdate.jsp?id="+request.getParameter("id"));/*mau edit data webinar yang lama*/
            return;
            }
            else if(proses.equals("lihat-detail")){
            response.sendRedirect("Content.jsp?id="+request.getParameter("id"));/*mau lihat detail content, jadi nampilin content berdasarkan id, tapi ini buat yg belum login*/
            return;
            }
            else if(proses.equals("lihat-detail-udah-login")){
            response.sendRedirect("AfterLoginContent.jsp?id="+request.getParameter("id"));/*mau lihat detail content, jadi nampilin content berdasarkan id, yang ini pas udah login*/
            return;
            }
            else if(proses.equals("daftar-user")){
            response.sendRedirect("UserDaftar.jsp");/*daftar user baru, buat nanti dipake login*/
            return;
            }
            else if(proses.equals("daftar-sukses")){
            response.sendRedirect("AfterLogin.jsp");/*daftar sukses -> balik ke afterlogin*/
            return;
            }
            else if (proses.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("index.jsp");/*logout dari after login ke index lagi*/
            }
            else if(proses.equals("hapus-user")){
            UserModel hm=new UserModel();
            hm.setId(request.getParameter("id"));
            hm.delete();
            response.sendRedirect("indexAdmin.jsp");/*udah ngehapus data webinar -> balik ke indexAdmin sekalian refresh*/
            }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String data = request.getParameter("data");
        String proses = request.getParameter("proses");
        
        if (data != null){
            if(data.equals("user")){
                UserModel um=new UserModel();
                um.setId(request.getParameter("id"));
                um.setJudul_webinar(request.getParameter("judul_webinar"));
                um.setThumbnail(request.getParameter("thumbnail"));
                um.setTanggal_waktu(request.getParameter("tanggal_waktu"));
                um.setNama_pembicara(request.getParameter("nama_pembicara"));
                um.setFoto_pembicara(request.getParameter("foto_pembicara"));
                um.setProfil_pembicara(request.getParameter("profil_pembicara"));
                um.setMinimal_usia(request.getParameter("minimal_usia"));
                um.setLevel_webinar(request.getParameter("level_webinar"));
                um.setBahasa_webinar(request.getParameter("bahasa_webinar"));
                um.setKategori_webinar(request.getParameter("kategori_webinar"));
                um.setReward_webinar(request.getParameter("reward_webinar"));
                um.setRingkasan_webinar(request.getParameter("ringkasan_webinar"));
                um.setHarga_webinar(request.getParameter("harga_webinar"));
                    if (proses.equals("input-user")){
                        um.create();
                    }else if (proses.equals("update-user")){
                        um.update();
                    }else if(proses.equals("hapus-user")){
                        um.delete();
                    }
                    response.sendRedirect("indexAdmin.jsp");
            }
            else if(data.equals("daftar-user")){
                UserModel dm=new UserModel();
                dm.setId_user(request.getParameter("id_user"));
                dm.setUsername(request.getParameter("username"));
                dm.setEmail(request.getParameter("email"));
                dm.setNomorWhatsapp(request.getParameter("nomorWhatsapp"));
                dm.setPassword(request.getParameter("password"));
                    if(proses.equals("daftar-user")){
                        dm.daftarUser();
                    }
                    response.sendRedirect("index.jsp");
            } 
        }
        if (proses.equals("login")) {
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String email = request.getParameter("email");
            String id_user = request.getParameter("id_user");
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("kosong.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();

                datalogin = pm.LoginUser(user, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("gagal.jsp");
                    //response.getWriter().print(user);
                    //response.getWriter().print(pass);
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("email", datalogin.get(0).getEmail());
                    session.setAttribute("username", datalogin.get(0).getUsername());
                    session.setAttribute("nomor_Whatsapp", datalogin.get(0).getNomorWhatsapp());
                    session.setAttribute("id_user", datalogin.get(0).getId_user());

                    if (datalogin.get(0).getUsername().equals(user)) {
                        response.sendRedirect("AfterLogin.jsp");
                    } else {
                        response.sendRedirect("index.jsp");
                    }
                }
            }
        }
    }
}

