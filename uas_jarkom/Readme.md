# **UJIAN AKHIR SEMESTER**

Nama		    	: Ayumi Permana

NIM			        : 20220801127

Fakultas/Jurusan	: Ilmu Komputer/Teknik Informatika

Mata Kuliah		    : Jaringan Komputer Lanjut

Dosen Pengampu	    : JEFRY SUNUPURWA ASRI , S.Kom., M.Kom.

## **STUDI KASUS**
Buatlah Topologi dan Konfigurasi ruang lab praktikum Universitas Esa Unggul untuk masing masing kampus (CR, KHI, KJ) bagaimana agar mereka bisa terhubung dan terkoneksi dengan memanfaatkan routing statik, routing dinamik (BGP, RIP, OSPF), Kumpulkan semua ke github masing-masing.

## **Analisis Studi Kasus**

Jaringan komputer adalah kumpulan dari dua atau lebih perangkat komputer yang saling terhubung untuk memungkinkan berbagi data, sumber daya, dan layanan. Jaringan ini memungkinkan perangkat seperti komputer atau perangkat lain untuk berkomunikasi satu sama lain, baik secara langsung maupun melalui perantara, seperti router atau switch. Setiap kampus memerlukan IP publik yang disediakan oleh ISP agar terhubung satu sama lain melalui jaringan internet. ISP (Internet Service Provider) adalah layanan koneksi Internet yang diberikan kepada masyarakat luas agar dapat terhubung secara daring di dunia digital, di Indonesia ISP lebih sering dikenal dengan provider internet atau penyedia internet. ISP ini bertindak sebagai jalur utama untuk menghubungkan 3 kampus dengan jaringan publik. Lalu tunnel VPN digunakan untuk meciptakan koneksi aman antar kampus melalui internet. VPN (Virtual Private Network) tunnel adalah sebuah konsep dalam jaringan komputer yang digunakan untuk membuat jalur aman (tunnel) di dalam jaringan publik, seperti internet, untuk mengirim dan menerima data secara aman antara dua titik atau lebih. VPN tunnel bertujuan melindungi data sensitif dari penyadapan atau manipulasi saat data tersebut bergerak melalui jaringan yang tidak terlindungi. Caranya adalah dengan menciptakan jalur terenkripsi di jaringan publik.Dengan infrastruktur ini, lab komputer di masing-masing kampus dapat terhubung untuk mendukung kolaborasi, berbagi data, akses ke server pusat, dan kegiatan pembelajaran berbasis teknologi secara aman dan efisien.

## Implementasi tunnel dan ISP untuk menghubungkan 3 kampus

## 1.	Konfigurasi Dasar pada Setiap Router
Sebagai langkah awal, setiap router yang ditempatkan di lokasi KJ, CR, KHI dikonfigurasi dengan pengaturan dasar. Setiap router memiliki 2 jenis alamat IP, yaitu IP lokal dan IP publik. IP lokal untuk jaringan internal di masing-masing lokasi, digunakan untuk perangkat yang terhubung dalam jaringan lokal dan IP publik disediakan oleh ISP, digunakan untuk koneksi internet dan akses antar-lokasi melalui tunnel. Setelah itu agar setiap router mendapatkan alamat IP secara otomatis maka lakukan DHCP server. Selain itu, Network Address Translation (NAT) diaktifkan untuk menerjemahkan IP lokal ke IP publik, memungkinkan perangkat internal mengakses internet dengan aman dan efisien. 
## 2.	Setting Tunnel Antar-Lokasi
Selanjutnya adalah melakukann setting tunnel di antara router di ketiga lokasi (KJ, CR, KHI) melalui jaringan ISP. Setiap router membuat tunnel yang diarahkan ke IP publik yang disediakan ISP di lokasi tujuan. Jadi, router lokasi KJ membangun tunnel menuju IP publik yang dimiliki router di lokasi CR dan KHI. Begitu juga sebaliknya, masing-masing router di CR dan KHI membangun tunnel ke router di lokasi lainnya. Dengan melakukan konfigurasi tersebut jalur komunikasi langsung dibuat antar-lokasi menggunakan ISP sebagai media transportasi, sementara tunnel tersebut memberikan keamanan tambahan dengan enkripsi data selama transit.
## 3.	Routing Statis untuk Mengatur Lalu Lintas Data
Routing statis ini menentukan jalur yang harus diambil oleh paket data untuk mencapai lokasi tujuan. Untuk mengarahkan data dari KJ ke CR, router lokasi KJ akan menggunakan rute yang mengarah ke tunnel menuju IP publik router di CR. Begitu pula untuk rute ke KHI. Dengan melakukan konfigurasi tersebut, perangkat di lokasi KJ, CR, dan KHI dapat berkomunikasi secara langsung tanpa memerlukan konfigurasi tambahan di perangkat lain dalam jaringan lokal.

Kesimpulan dari konfigurasi di atas adalah ISP berfungsi sebagai penyedia IP publik yang menjadi penghubung antar-lokasi. Sedangkan tunnel memainkan peran penting dalam memastikan jalur komunikasi antar-lokasi bersifat privat dan aman, meskipun berjalan melalui jaringan publik.