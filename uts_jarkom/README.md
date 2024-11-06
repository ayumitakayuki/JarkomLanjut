# **UJIAN TENGAH SEMESTER**

Nama		    	: Ayumi Permana

NIM			        : 20220801127

Fakultas/Jurusan	: Ilmu Komputer/Teknik Informatika

Mata Kuliah		    : Jaringan Komputer Lanjut

Dosen Pengampu	    : JEFRY SUNUPURWA ASRI , S.Kom., M.Kom.

# **Jawaban Essay**

**1. Jelaskan menurut anda apa itu Routing Static?**

**Jawab :**

Routing statis adalah proses mengkonfigurasi router jaringan menggunakan tabel routing yang dikonfigurasi secara manual oleh administrator jaringan.Routing static adalah metode untuk menentukan rute secara manual agar mencapai tujuan tertentu di jaringan tanpa menggunakan routing dynamic seperti RIP. Dalam menambahkan jalur atau rute menuju alamat tujuan tertentu melalui gateway untuk setiap rute yang sudah ditentukan dan pastikan gateway yang diatur dapat diakses dan sesuai dengan topologi jaringan. Langkah – Langkah dalam konfigurasi routing static :

    1)	Buka Winbox dan masuk ke perangkat MikroTik Anda.
    2)	Pada menu utama, pilih IP > Routes.
    3)	Klik + untuk menambahkan rute baru. 
        Isi parameter sebagai berikut: 

        - Destination Addres: masukkan IP/subnet tujuan misal,  
        192.168.2.0/24
        - Gateway: masukkan IP gateway yang akan dilewati untuk  
        mencapai tujuan misal, 192.168.1.1

    4)	Klik OK untuk menyimpan konfigurasi.
    Rute statis sudah ditambahkan, dan perangkat akan menggunakan jalur ini untuk mencapai jaringan tujuan.

**2. Jelaskan menurut anda apa itu Routing Dynamic?**

**Jawab :**

Routing dinamis adalah jenis router yang secara otomatis dapat menghasilkan tabel routing berdasarkan lalu lintas jaringan dan router yang terhubung. Routing dinamis memiliki protokol perutean yang secara otomatis mengatur router untuk berkomunikasi satu sama lain dengan memberikan informasi tentang jaringan dan koneksi antar router. Salah satu protokol pada routing dynamic adalah RIP (Routing Information Protocol). RIP (Routing Information Protocol) adalah protokol yang digunakan untuk menentukan jalur data dalam jaringan. Dengan RIP, setiap router berbagi informasi tentang jalur yang diketahuinya dengan router tetangga, sehingga semua router dalam jaringan tahu rute terbaik untuk mencapai tujuan tertentu. Langkah – langkah dalam melakukan Routing Dynamic dengan protokol RIP :

ROUTER 1 & 1 PC

    1) Bikin new IP Address : 192.168.1.1/24 (Ether 1 untuk PC 1)
    2) Bikin add new IP Address : 10.10.1.1/30 (Ether 2 untuk PC 2)
    3) Buka Routing, pilih RIP

New RIP Interface :

        - New interface (Ether 2)
        - Receive v1-2
        - Send v2 -> apply

Selanjutnya :

        - New RIP Network -> address = 10.10.10.0/30 -> apply

Selanjutnya :

        - New interface (Ether 1)
        - Receive v1-2
        - Send v2 -> apply

Selanjutnya :

        - New RIP Network -> address = 192.168.1.0/24 -> apply

Selanjutnya :

        -	Buka Routes list pada RIP
        -	Connect PC lain

4)	DHCP server -> DHCP setup -> (ether 1) next sampai selesa.
5)	Buka CMD -> ipconfig untuk melihat IP sudah dapat
6)	Ping 10.10.10.2 (PC lain)
7)	Ping 192.168.2.254 (PC lain)
8)	Ping di terminal winbox

        - Ping 10.10.10.2
        - Ping 192.168.2.254
        - Ping 192.168.2.1

ROUTER 2 & 1 PC
1)	Bikin new addrress : 10.10.10.2/30 (ether2 untuk PC 1)
2)	New address : 192.168.2.1/24 (ether 1 untuk PC 2)
3)	Buka routing, pilih RIP

New RIP Interface :

        - New interface (ether 1)
        - Receive v1-2
        - Send v2 -> apply

Selanjutnya :

        - New interface (ether 2)
        - Receive v1-2
        - Send v2 -> apply

Selanjutnya :

        - New RIP Network -> address = 10.10.10.0/30 -> apply

Selanjutnya :

        - New RIP Network -> address = 192.168.2.0/24 -> apply
        - Connect PC lain

4)	DHCP server -> DHCP setup -> (ether 1) next sampai selesai.
5)	Buka CMD -> ipconfig
6)	Ping 10.10.10.2 (Ping PC lain)
7)	Ping 192.168.2.254 (Ping PC lain)

8)	Ping terminal winbox :

        - Ping 10.10.10.2
        - Ping 192.168.2.254
        - Ping 192.168.2.1

**3. Jelaskan menurut anda apa itu firewall?**

**Jawab :**

Firewall adalah sistem keamanan yang melindungi komputer dari berbagai ancaman di jaringan internet. Firewall adalah fitur yang digunakan untuk mengontrol lalu lintas data yang masuk, keluar, atau melewati router. Dengan firewall bisa menentukan aturan yang mengizinkan atau memblokir akses tertentu berdasarkan IP, port, protocol, dan berbagai parameter. Fungsi utama firewall adalah menjaga keamanan jaringan dengan menyaring lalu lintas data, mencegah akses yang tidak diinginkan, dan melindungi dari ancaman luar.

**4. Jelaskan menurut anda apa itu NAT?**

**Jawab :**

NAT (Network Address Translation) adalah teknologi yang digunakan untuk mengubah Alamat IP pada paket data yang melewati router, memungkinkan perangkat di jaringan local untuk berkomunikasi dengan jaringan luar (seperti internet) menggunakan satu Alamat IP public. Langkah – Langkah dalam melakukan NAT :
1)	Set IP Address
2)	Set DHCP
3)	Set NAT di IP/Firewall/NAT pada PC
Di dalam NAT General :

        - Chain : srcnat
        - Dst. Address : 192.168.2.254
        - Protocol : (6tcp)
        - Dst.port : (80)

Di dalam NAT action :

        - Action : masquerade
        - Log prefix : 192.168.2.1/24
        - To.ports : 8000
        - Apply Lalu, OK

# **Analisis Topologi Jaringan**

ISP sebagai pengganti IP Public dengan menghubungkan tiga lokasi dengan tiga mikrotik dan mengonfigurasi jaringan menggunakan Tunnel. Setiap lokasi memiliki rmikrotik yang terhubung ke ISP untuk menerima IP Publik, memungkinkan komunikasi antar lokasi melalui jaringan internet yang disediakan ISP.

Langkah pertama adalah mengonfigurasi dasar setiap mikrotik di lokasi KJ, CR, dan KHI. Setiap mikrotik diberikan IP lokal untuk jaringan internal dan IP publik dari ISP untuk antarmuka internetnya. DHCP Server diaktifkan pada setiap mikrotik agar perangkat dalam jaringan lokal dapat memperoleh IP otomatis, dan NAT diaktifkan agar perangkat tersebut dapat mengakses internet melalui IP publik.

IP tunnel dibangun antar mikrotik. Setiap mikrotik memiliki tunnel yang diarahkan ke ISP. Misalnya, mikrotik di lokasi KJ memiliki tunnel untuk terhubung ke ISP, begitupun mikoritk di lokasi CR dan KHI. Hal ini memungkinkan data mengalir langsung dari satu lokasi ke lainnya, karena endpoint tunnel diarahkan ke IP publik dari ISP.

Setiap mikrotik diatur dengan routing statis untuk mengarahkan lalu lintas ke lokasi lain. Dengan konfigurasi ini, perangkat PC di lokasi KJ, CR, dan KHI dapat berkomunikasi. Dengan cara ini, ISP berfungsi sebagai penyedia IP publik, sedangkan tunneling dan enkripsi menjamin komunikasi antar-lokasi tetap aman dan efisien.

