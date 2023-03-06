package modelProject;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserModel {
    String id,judul_webinar,thumbnail,tanggal_waktu,nama_pembicara,foto_pembicara,profil_pembicara,minimal_usia,level_webinar,bahasa_webinar,kategori_webinar,reward_webinar,ringkasan_webinar,harga_webinar;
    String id_user,username,email,nomorWhatsapp,password;

    public Koneksi getDb() {
        return db;
    }

    public void setDb(Koneksi db) {
        this.db = db;
    }
    Koneksi db = null;
       
    public UserModel() {
        db = new Koneksi();
    }
    /*--data_webinar--*/
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getJudul_webinar() {
        return judul_webinar;
    }

    public void setJudul_webinar(String judul_webinar) {
        this.judul_webinar = judul_webinar;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getTanggal_waktu() {
        return tanggal_waktu;
    }

    public void setTanggal_waktu(String tanggal_waktu) {
        this.tanggal_waktu = tanggal_waktu;
    }

    public String getNama_pembicara() {
        return nama_pembicara;
    }

    public void setNama_pembicara(String nama_pembicara) {
        this.nama_pembicara = nama_pembicara;
    }
    
    public String getFoto_pembicara() {
        return foto_pembicara;
    }

    public void setFoto_pembicara(String nama_pembicara) {
        this.foto_pembicara = nama_pembicara;
    }

    public String getProfil_pembicara() {
        return profil_pembicara;
    }

    public void setProfil_pembicara(String profil_pembicara) {
        this.profil_pembicara = profil_pembicara;
    }

    public String getMinimal_usia() {
        return minimal_usia;
    }

    public void setMinimal_usia(String minimal_usia) {
        this.minimal_usia = minimal_usia;
    }

    public String getLevel_webinar() {
        return level_webinar;
    }

    public void setLevel_webinar(String level_webinar) {
        this.level_webinar = level_webinar;
    }

    public String getBahasa_webinar() {
        return bahasa_webinar;
    }

    public void setBahasa_webinar(String bahasa_webinar) {
        this.bahasa_webinar = bahasa_webinar;
    }
    
    public String getKategori_webinar() {
        return kategori_webinar;
    }

    public void setKategori_webinar(String kategori_webinar) {
        this.kategori_webinar = kategori_webinar;
    }

    public String getReward_webinar() {
        return reward_webinar;
    }

    public void setReward_webinar(String reward_webinar) {
        this.reward_webinar = reward_webinar;
    }

    public String getRingkasan_webinar() {
        return ringkasan_webinar;
    }

    public void setRingkasan_webinar(String ringkasan_webinar) {
        this.ringkasan_webinar = ringkasan_webinar;
    }

    public String getHarga_webinar() {
        return harga_webinar;
    }

    public void setHarga_webinar(String harga_webinar) {
        this.harga_webinar = harga_webinar;
    }
    /*--Login-Signin--*/
    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNomorWhatsapp() {
        return nomorWhatsapp;
    }

    public void setNomorWhatsapp(String nomorWhatsapp) {
        this.nomorWhatsapp = nomorWhatsapp;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public List read() {
        List<UserModel> data = new ArrayList<UserModel>();
        ResultSet rs = null;
        try {
            String sql = "select * from data_webinar order by id asc";
            rs = db.ambilData(sql);
            while (rs.next()) {
                UserModel um = new UserModel();
                um.setId(rs.getString("id"));
                um.setJudul_webinar(rs.getString("judul_webinar"));
                um.setThumbnail(rs.getString("thumbnail"));
                um.setTanggal_waktu(rs.getString("tanggal_waktu"));
                um.setNama_pembicara(rs.getString("nama_pembicara"));
                um.setFoto_pembicara(rs.getString("foto_pembicara"));
                um.setProfil_pembicara(rs.getString("profil_pembicara"));
                um.setMinimal_usia(rs.getString("minimal_usia"));
                um.setLevel_webinar(rs.getString("level_webinar"));
                um.setBahasa_webinar(rs.getString("bahasa_webinar"));
                um.setKategori_webinar(rs.getString("kategori_webinar"));
                um.setReward_webinar(rs.getString("reward_webinar"));
                um.setRingkasan_webinar(rs.getString("ringkasan_webinar"));
                um.setHarga_webinar(rs.getString("harga_webinar"));
                data.add(um);
            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan data User" + ex);
        }
        return data;
    }
    
    public void create(){
        String sql="INSERT INTO data_webinar values(null,'"+judul_webinar+"','"+thumbnail+"','"+tanggal_waktu+"','"+nama_pembicara+"','"+foto_pembicara+"','"+profil_pembicara+"','"+minimal_usia+"','"+level_webinar+"','"+bahasa_webinar+"','"+kategori_webinar+"','"+reward_webinar+"','"+ringkasan_webinar+"','"+harga_webinar+"')";
        db.simpanData(sql);
    }
    public void update(){
        String sql="UPDATE data_webinar SET judul_webinar='"+judul_webinar+"',thumbnail='"+thumbnail+"',tanggal_waktu='"+tanggal_waktu+"',nama_pembicara='"+nama_pembicara+"',foto_pembicara='"+foto_pembicara+"',profil_pembicara='"+profil_pembicara+"',minimal_usia='"+minimal_usia+"',level_webinar='"+level_webinar+"',bahasa_webinar='"+bahasa_webinar+"',kategori_webinar='"+kategori_webinar+"',reward_webinar='"+reward_webinar+"',ringkasan_webinar='"+ringkasan_webinar+"',harga_webinar='"+harga_webinar+"'WHERE id='"+id+"'";
        db.simpanData(sql);
    }
    public void delete(){
        String sql="DELETE FROM data_webinar WHERE ID='"+id+"'";
        db.simpanData(sql);
        System.out.println("");
    }
    public List cariID() {
        List<UserModel> data = new ArrayList<UserModel>();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM data_webinar WHERE ID='"+id+"'";
            rs = db.ambilData(sql);
            while (rs.next()) {
                UserModel m = new UserModel();
                m.setId(rs.getString("id"));
                m.setJudul_webinar(rs.getString("judul_webinar"));
                m.setThumbnail(rs.getString("thumbnail"));
                m.setTanggal_waktu(rs.getString("tanggal_waktu"));
                m.setNama_pembicara(rs.getString("nama_pembicara"));
                m.setFoto_pembicara(rs.getString("foto_pembicara"));
                m.setProfil_pembicara(rs.getString("profil_pembicara"));
                m.setMinimal_usia(rs.getString("minimal_usia"));
                m.setLevel_webinar(rs.getString("level_webinar"));
                m.setBahasa_webinar(rs.getString("bahasa_webinar"));
                m.setKategori_webinar(rs.getString("kategori_webinar"));
                m.setReward_webinar(rs.getString("reward_webinar"));
                m.setRingkasan_webinar(rs.getString("ringkasan_webinar"));
                m.setHarga_webinar(rs.getString("harga_webinar"));
                data.add(m);
            }
            db.diskonek(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalahan Saat menampilkan Cari ID" + ex);
        }
        return data;
    }

    public void daftarUser(){
        String sql="INSERT INTO data_user values(null,'"+username+"','"+email+"','"+nomorWhatsapp+"','"+password+"')";
        db.simpanData(sql);
    }    
    
    public List LoginUser(String user, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from data_user where username='"+user+"' and password='"+password+"'";
            rs = db.ambilData(sql);

            while (rs.next()) {
                UserModel am = new UserModel();
                am.setId_user(rs.getString("id_user"));
                am.setUsername(rs.getString("username"));
                am.setEmail(rs.getString("email"));
                am.setNomorWhatsapp(rs.getString("nomor_Whatsapp"));                
                am.setPassword(rs.getString("password"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
}
