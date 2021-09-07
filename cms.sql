-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Sep 2021 pada 15.07
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activitydelete`
--

CREATE TABLE `activitydelete` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `idAuthor` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `activitydelete`
--

INSERT INTO `activitydelete` (`id`, `title`, `idAuthor`, `created_at`, `updated_at`) VALUES
(18, 'asdasda', '1629174413', '2021-08-25 16:23:07', '2021-08-25 16:23:07'),
(19, 'zxc', '1629174413', '2021-08-25 16:23:13', '2021-08-25 16:23:13'),
(20, 'asdasdasd123', '1629174413', '2021-08-25 16:40:04', '2021-08-25 16:40:04'),
(21, 'asdsda', '1629174413', '2021-08-25 17:20:32', '2021-08-25 17:20:32'),
(22, 'Soekarno', '1629174413', '2021-08-25 20:02:21', '2021-08-25 20:02:21'),
(23, 'Cristiano Ronaldo', '1629174413', '2021-08-30 16:57:30', '2021-08-30 16:57:30'),
(24, 'Messi', '1629174413', '2021-08-30 16:57:46', '2021-08-30 16:57:46'),
(25, 'Kylian Mbappe', '1629174413', '2021-08-30 16:58:00', '2021-08-30 16:58:00'),
(26, 'Matthijs de Ligt', '1629174413', '2021-08-30 16:58:06', '2021-08-30 16:58:06'),
(27, 'Frenkie de Jong', '1629174413', '2021-08-30 16:58:15', '2021-08-30 16:58:15'),
(28, 'Samuel Umtiti', '1629174413', '2021-08-30 16:58:22', '2021-08-30 16:58:22'),
(29, 'Gerard Pique', '1629174413', '2021-08-30 16:58:27', '2021-08-30 16:58:27'),
(30, 'Neymar', '1629174413', '2021-08-30 16:58:46', '2021-08-30 16:58:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activityupdate`
--

CREATE TABLE `activityupdate` (
  `id` int(11) NOT NULL,
  `idAuthor` varchar(100) NOT NULL,
  `idContent` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `activityupdate`
--

INSERT INTO `activityupdate` (`id`, `idAuthor`, `idContent`, `created_at`, `updated_at`) VALUES
(19, '1629174413', '612f295907da3', '2021-08-31 19:29:06', '2021-08-31 19:29:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(4, 'rinaldih84@gmail.com', 'c8481d894ff2c608dc26', '2021-08-16 23:26:53', '2021-08-31 15:01:04'),
(5, 'rinaldihendrawan2@gmail.com', 'c9293cff4344b846fdc3', '2021-08-23 23:41:36', '2021-08-31 19:16:35'),
(6, 'artdraw69@gmail.com', '0bc7703789edb29f1985', '2021-09-01 01:49:52', '2021-08-31 19:17:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `idAuthor` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`id`, `idAuthor`, `username`, `email`, `password`, `picture`) VALUES
(7, '1629174413', 'rinaldi600', 'rinaldih84@gmail.com', '$2y$10$RUGpez/SyOFpOdxPCzFXDuLxdfeH1StWEl6F0WGjW71HXX/J7JPDa', '1629174413_73e48262cf82f7dbe7ed.jpg'),
(8, '1629780096', 'Rinaldi007', 'rinaldihendrawan2@gmail.com', '$2y$10$Xldt6U4olLbERzuZ./qH0OYZe3/Y.44T6SQ62Ftr4uxDMXFw8gL16', '1629780096_d5d5e9b89a5b97173bc8.jpg'),
(9, '1630478992', 'artdraw69', 'artdraw69@gmail.com', '$2y$10$llBqfXaz1xVM.ItwrO.o7uzqH3w0xA2XS9FAy6.kfhDyxCh9/DKLO', '1630478992_8e924fa27ca13389b2cf.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `idContent` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `idAuthor` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'not_published',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id`, `idContent`, `title`, `deskripsi`, `idAuthor`, `status`, `created_at`, `updated_at`) VALUES
(18, '61246b4b011d4', 'Soekarno', '<figure class=\"image\"><img src=\"/content-image/files/1200px-Presiden_Sukarno.jpg\"></figure><p>&nbsp;</p><h2><strong>BIOGRAFI</strong></h2><p>Ir. Soekarno atau yang biasa dipanggil Bung Karno yang lahir di Surabaya, Jawa Timur pada tanggal 6 Juni 1901 dari pasangan Raden Soekemi Sosrodihardjo dengan Ida Ayu Nyoman Rai.</p><p>Ayah Soekarno adalah seorang guru. Raden Soekemi bertemu dengan Ida Ayu ketika dia mengajar di Sekolah Dasar Pribumi Singaraja, Bali.</p><p>Soekarno hanya menghabiskan sedikit masa kecilnya dengan orangtuanya hingga akhirnya dia tinggal bersama kakeknya, Raden Hardjokromo di Tulung Agung, Jawa Timur.</p><p>Soekarno pertama kali bersekolah di Tulung Agung hingga akhirnya dia ikut kedua orangtuanya pindah ke Mojokerto.</p><p>Di Mojokerto, ayahnya memasukan Soekarno ke Eerste Inlandse School. Di tahun 1911, Soekarno dipindahkan ke Europeesche Lagere School (ELS) untuk memudahkannya diterima di Hoogere Burger School (HBS).</p><p>Setelah lulus pada tahun 1915, Soekarno melanjutkan pendidikannya di HBS, Surabaya, Jawa Timur. Di Surabaya, Soekarno banyak bertemu dengan para tokoh dari Sarekat Islam, organisasi yang kala itu dipimpin oleh HOS Tjokroaminoto yang juga memberi tumpangan ketika Soekarno tinggal di Surabaya.</p><p>Dari sinilah, rasa nasionalisme dari dalam diri Soekarno terus menggelora. Di tahun berikutnya, Soekarno mulai aktif dalam kegiatan organisasi pemuda Tri Koro Darmo yang dibentuk sebagai organisasi dari Budi Utomo. Nama organisasi tersebut kemudian Soekarno ganti menjadi Jong Java (Pemuda Jawa) pada 1918.&nbsp;</p><p>Di tahun 1920 seusai tamat dari HBS, Soekarno melanjutkan studinya ke Technische Hoge School &nbsp;(sekarang berganti nama menjadi Institut Teknologi Bandung) di Bandung dan mengambil jurusan teknik sipil.</p><p>Saat bersekolah di Bandung, Soekarno tinggal di kediaman Haji Sanusi yang merupakan anggota Sarekat Islam dan sahabat karib Tjokroaminoto. Melalui Haji Sanusi, Soekarno berinteraksi dengan Ki Hajar Dewantara, Tjipto Mangunkusumo dan Dr Douwes Dekker, yang saat itu merupakan pemimpin organisasi National Indische Partij.</p><p>Pada tahun 1926, Soekarno mendirikan Algemene Studie Club di Bandung yang diinspirasi dari Indonesische Studie Club (dipimpin oleh Dr Soetomo). Algemene Studie Club &nbsp;merupakan cikal bakal berdirinya Partai Nasional Indonesia pada tahun 1927.</p><p>Bulan Desember 1929, Soekarno ditangkap oleh Belanda dan dipenjara di Penjara Banceuy karena aktivitasnya di PNI. Pada tahun 1930, Soekarno dipindahkan ke penjara Sukamiskin. Dari dalam penjara inilah, Soekarno membuat pledoi yang fenomenal, Indonesia Menggugat.</p><p>Soekarno dibebaskan pada tanggal 31 Desember 1931. Pada bulan Juli 1932, Soekarno bergabung dengan Partai Indonesia (Partindo), yang merupakan pecahan dari PNI.</p><p>Soekarno kembali ditangkap oleh Belanda pada bulan Agustus 1933 dan diasingkan ke Flores. Karena jauhnya tempat pengasingan, Soekarno hampir dilupakan oleh tokoh-tokoh nasional lainnya.</p><p>Namun semangat Soekarno tetap membara seperti tersirat dalam setiap suratnya kepada seorang Guru Persatuan Islam bernama Ahmad Hasan. Pada tahun 1938 hingga tahun 1942 Soekarno diasingkan ke Provinsi Bengkulu. Soekarno baru benar-benar bebas setelah masa penjajahan Jepang pada tahun 1942.</p><p>Di awal kependudukannya, Jepang tidak terlalu memperhatikan tokoh-tokoh pergerakan Indonesia hingga akhirnya sekitar tahun 1943 Jepang menyadari betapa pentingnya para tokoh ini. Jepang mulai memanfaatkan tokoh pergerakan Indonesia dimana salah satunya adalah Soekarno untuk menarik perhatian penduduk Indonesia terhadap propaganda Jepang.</p><p>Akhirnya tokoh-tokoh nasional ini mulai bekerjasama dengan pemerintah pendudukan Jepang untuk dapat mencapai kemerdekaan Indonesia, meski ada pula yang tetap melakukan gerakan perlawanan seperti Sutan Sjahrir dan Amir Sjarifuddin karena menganggap Jepang adalah fasis yang berbahaya.</p><p>Soekarno sendiri mulai aktif mempersiapkan kemerdekaan Indonesia, di antaranya adalah merumuskan Pancasila, UUD 1945 dan dasar-dasar pemerintahan Indonesia termasuk merumuskan naskah proklamasi Kemerdekaan.</p><p>Pada bulan Agustus 1945, Soekarno diundang oleh Marsekal Terauchi, pimpinan Angkatan Darat wilayah Asia Tenggara ke Dalat, Vietnam. Marsekal Terauchi menyatakan bahwa sudah saatnya Indonesia merdekan dan segala urusan proklamasi kemerdekaan Indonesia adalah tanggung jawab rakyat Indonesia sendiri.</p><p>Setelah menemui Marsekal Terauchi di Dalat, Vietnam, terjadilah Peristiwa Rengasdengklok pada tanggal 16 Agustus 1945. Para tokoh pemuda dari PETA menuntut agar Soekarno dan Hatta segera memproklamasikan kemerdekaan Republik Indonesia, karena pada saat itu di Indonesia terjadi kevakuman kekuasaan.</p><p>Ini disebabkan karena Jepang telah menyerah dan pasukan Sekutu belum tiba. Namun Soekarno, Hatta dan beberapa tokoh lainnya menolak tuntutan ini dengan alasan menunggu kejelasan mengenai penyerahan Jepang.</p><p>Pada akhirnya,Soekarno bersama tokoh-tokoh nasional lainnya mulai mempersiapkan diri menjelang Proklamasi Kemerdekaan Republik Indonesia. Berdasarkan sidang yang diadakan oleh Badan Penyelidik Usaha Persiapan Kemerdekaan Indonesia (BPUPKI) panitia kecil untuk upacara proklamasi yang terdiri dari delapan orang resmi dibentuk.</p><p>Pada tanggal 17 Agustus 1945, Indonesia memplokamirkan kemerdekaannya. Teks proklamasi secara langsung dibacakan oleh Soekarno yang semenjak pagi telah memenuhi halaman rumahnya di Jl Pegangsaan Timur 56, Jakarta.</p><p>Pada tanggal 18 Agustus 1945, Soekarno dan Mohammad Hatta diangkat oleh PPKI menjadi Presiden dan Wakil Presiden Republik Indonesia. Pada tanggal 29 Agustus 1945 pengangkatan Presiden Soekarno dan Wakil Presiden Mohammad Hatta dikukuhkan oleh KNIP.</p><p>Kemerdekaan yang telah didapatkan ini tidak langsung bisa dinikmati karena di tahun-tahun berikutnya masih ada sekutu yang secara terang-terangan tidak mengakui kemerdekaan Indonesia dan bahkan berusaha untuk kembali menjajah Indonesia.</p><p>Gencaran senjata dari pihak sekutu tak lantas membuat rakyat Indonesia menyerah, seperti yang terjadi di Surabaya ketika pasukan Belanda yang dipimpin oleh Brigadir Jendral A.W.S Mallaby berusaha untuk kembali menyerang Indonesia.</p><p>Rakyat Indonesia di Surabaya dengan gigihnya terus berjuang untuk tetap mempertahankan kemerdekaan hingga akhirnya Brigadir Jendral AWS Mallaby tewas dan pemerintah Belanda menarik pasukannya kembali. Perang seperti ini tidak hanya terjadi di Surabaya tapi juga hampir di setiap kota.&nbsp;</p><p>Republik Indonesia secara resmi mengadukan agresi militer Belanda ke PBB karena agresi militer tersebut dinilai telah melanggar suatu perjanjian Internasional, yaitu Persetujuan Linggajati.</p><p>Walaupun telah dilaporkan ke PBB, Belanda tetap saja melakukan agresinya. Atas permintaan India dan Australia, pada 31 Juli 1947 masalah agresi militer yang dilancarkan Belanda dimasukkan ke dalam agenda rapat Dewan Keamanan PBB, di mana kemudian dikeluarkan Resolusi No 27 tanggal 1 Agustus 1947, yang isinya menyerukan agar konflik bersenjata dihentikan.</p><p>Atas tekanan Dewan Keamanan PBB, pada tanggal 15 Agustus 1947, Pemerintah Belanda akhirnya menyatakan akan menerima resolusi Dewan Keamanan untuk menghentikan pertempuran.</p><p>Pada 17 Agustus 1947, Pemerintah Republik Indonesia dan Pemerintah Belanda menerima Resolusi Dewan Keamanan untuk melakukan gencatan senjata dan pada 25 Agustus 1947 Dewan Keamanan membentuk suatu komite yang akan menjadi penengah konflik antara Indonesia dan Belanda.</p><p>Setelah Pengakuan Kedaulatan (Pemerintah Belanda menyebutkan sebagai Penyerahan Kedaulatan), Presiden Soekarno kembali diangkat menjadi Presiden Republik Indonesia Serikat (RIS) dan Mohammad Hatta diangkat sebagai perdana menteri RIS.</p><p>Karena tuntutan dari seluruh rakyat Indonesia yang ingin kembali ke negara kesatuan, maka pada tanggal 17 Agustus 1950, RIS kembali diubah menjadi Republik Indonesia dimana Ir Soekarno menjadi Presiden dan Mohammad Hatta menjadi wakilnya.</p><p>Pemberontakan G30S/PKI melahirkan krisis politik hebat di Indonesia. Massa dari KAMI (Kesatuan Aksi Mahasiswa Indonesia) dan KAPI (Kesatuan Aksi Pelajar Indonesia) melakukan aksi demonstrasi dan menyampaikan Tri Tuntutan Rakyat (Tritura) yang salah satu isinya meminta agar PKI dibubarkan.</p><p>Namun, Soekarno menolak untuk membubarkan PKI karena menilai bahwa tindakan tersebut bertentangan dengan pandangan Nasakom (Nasionalisme, Agama, Komunisme).</p><p>Sikap Soekarno yang menolak membubarkan PKI kemudian melemahkan posisinya dalam politik. Lima bulan kemudian, dikeluarkanlah Surat Perintah Sebelas Maret (Supersemar) yang ditandatangani oleh Soekarno dimana isinya merupakan perintah kepada Letnan Jenderal Soeharto untuk mengambil tindakan yang perlu guna menjaga keamanan pemerintahan dan keselamatan pribadi presiden.</p><p>Surat tersebut lalu digunakan oleh Soeharto yang telah diangkat menjadi Panglima Angkatan Darat untuk membubarkan PKI dan menyatakannya sebagai organisasi terlarang. MPRS pun mengeluarkan dua Ketetapannya, yaitu TAP No IX/1966 tentang pengukuhan Supersemar menjadi TAP MPRS dan TAP No XV/1966 yang memberikan jaminan kepada Soeharto sebagai pemegang Supersemar untuk setiap saat bisa menjadi presiden apabila presiden sebelumnya berhalangan.</p><p>Pada 22 Juni 1966, Soekarno membacakan pidato pertanggungjawabannya mengenai sikapnya terhadap peristiwa G30S. Pidato pertanggungjawaban ini ditolak oleh MPRS hingga akhirnya pada 20 Februari 1967 Soekarno menandatangani Surat Pernyataan Penyerahan Kekuasaan di Istana Merdeka.</p><p>Hari Minggu, 21 Juni 1970 Presiden Soekarno meninggal dunia di RSPAD (Rumah Sakit Pusat Angkatan Darat) Gatot Subroto, Jakarta. Presiden Soekarno disemayamkan di Wisma Yaso, Jakarta dan kemudian dimakamkan di Blitar, Jawa Timur berdekatan dengan makam ibundanya, Ida Ayu Nyoman Rai. Pemerintah kemudian menetapkan masa berkabung selama tujuh hari.&nbsp;</p><p>Ir Soekarno adalah seorang sosok pahlawan yang sejati. Dia tidak hanya diakui berjasa bagi bangsanya sendiri tapi juga memberikan pengabdiannya untuk kedamaian di dunia. Semua sepakat bahwa Ir Soekarno adalah seorang manusia yang tidak biasa yang belum tentu dilahirkan kembali dalam waktu satu abad. Ir Soekarno adalah bapak bangsa yang tidak akan tergantikan.</p>', '1629174413', 'published', '2021-08-23 15:47:43', '2021-08-29 17:53:47'),
(19, '6124790a8a95d', 'Bacharuddin Jusuf Habibie', '<figure class=\"image\"><img src=\"/content-image/files/habibie-9-4250c49f4bef7543220906a5cbc04cb8_750x500.jpg\"></figure><h2>&nbsp;</h2><h2><strong>Biografi Singkat BJ Habibie</strong></h2><p>BJ Habibie atau yang memiliki nama lengkap Bacharuddin Jusuf Habibie diketahui lahir pada 25 Juni 1936 di Parepare, Sulawesi Selatan. Ia merupakan anak keempat dari delapan bersaudara pasangan Alwi Abdul Jalil Habibie asal Gorontalo dan RA Tuti Marini Puspowardojo yang berasal dari Yogyakarta.</p><p>Saat BJ Habibie berusia 14 tahun, ayahnya meninggal dunia akibat serangan jantung. Kemudian dia bersama ibu dan saudara-saudaranya pindah ke Bandung. BJ Habibie melanjutkan studinya di Gouverments Middlebare School.</p><p>Ketertarikan pada ilmu sains, khususnya fisika, memang sudah dimulai sejak BJ Habibie masih belia. Ia pun melanjutkan kuliah di jurusan Teknik Mesin Institut Teknologi Bandung pada 1954.</p><p>Habibie hanya menghabiskan waktu enam bulan untuk studinya di ITB. Hal ini karena setahun kemudian ia memilih melanjutkan pendidikan di Rhenisch Wesfalische Tehnische Hochscule (RWTH), Aachen, Jerman.</p><p>Selama 10 tahun, mulai 1955 hingga 1965, Habibie menempuh studi teknik penerbangan di RWTH. Ia meraih dua gelar sekaligus, yaitu Diplom Ingenieur pada 1960 dan Doktor Ingenieur pada 1965 dengan predikat <i>summa cum laude</i>.</p><p>Pada 12 Mei 1962, BJ Habibie menikah dengan tetangganya saat di Bandung, Hasri Ainun Habibie. Pasangan tersebut memiliki dua orang anak, yaitu Ilham Akbar Habibie dan Thareq Kemal Habibie.</p>', '1629780096', 'published', '2021-08-23 16:44:21', '2021-08-29 17:53:50'),
(31, '6125f9930180a', 'Mohammad Hatta', '<p>&nbsp;</p><figure class=\"image\"><img src=\"/content-image/files/VP_Hatta.jpg\"></figure><p>&nbsp;</p><h2><strong>BIOGRAFI</strong></h2><p>Dr. H. Mohammad Hatta lahir di Bukittinggi, 12 Agustus 1902. Pria yang akrab disapa dengan sebutan Bung Hatta ini merupakan pejuang kemerdekaan RI yang kerap disandingkan dengan Soekarno. Tak hanya sebagai pejuang kemerdekaan, Bung Hatta juga dikenal sebagai seorang organisatoris, aktivis partai politik, negarawan, proklamator, pelopor koperasi, dan seorang wakil presiden pertama di Indonesia.</p><p>Kiprahnya di bidang politik dimulai saat ia terpilih menjadi bendahara Jong Sumatranen Bond wilayah Padang pada tahun 1916. Pengetahuan politiknya berkembang dengan cepat saat Hatta sering menghadiri berbagai ceramah dan pertemuan-pertemuan politik. Secara berkelanjutan, Hatta melanjutkan kiprahnya terjun di dunia politik.&nbsp;</p><p>Sampai pada tahun 1921 Hatta menetap di Rotterdam, Belanda dan bergabung dengan sebuah perkumpulan pelajar tanah air yang ada di Belanda, Indische Vereeniging. Mulanya, organisasi tersebut hanyalah merupakan organisasi perkumpulan bagi pelajar, namun segera berubah menjadi organisasi pergerakan kemerdekaan saat tiga tokoh Indische Partij (Suwardi Suryaningrat, Douwes Dekker, dan Tjipto Mangunkusumu) bergabung dengan Indische Vereeniging yang kemudian berubah nama menjadi Perhimpunan Indonesia (PI).</p><p>Di Perhimpunan Indonesia, Hatta mulai meniti karir di jenjang politiknya sebagai bendahara pada tahun 1922 dan menjadi ketua pada tahun 1925. Saat terpilih menjadi ketua PI, Hatta mengumandangkan pidato inagurasi yang berjudul \"Struktur Ekonomi Dunia dan Pertentangan Kekuasaan\".</p><p>Dalam pidatonya, ia mencoba menganalisa struktur ekonomi dunia yang ada pada saat itu berdasarkan landasan kebijakan non-kooperatif. Hatta berturut-turut terpilih menjadi ketua PI sampai tahun 1930 dengan perkembangan yang sangat signifikan dibuktikan dengan berkembangnya jalan pikiran politik rakyat Indonesia.</p><p>Sebagai ketua PI saat itu, Hatta memimpin delegasi Kongres Demokrasi Internasional untuk perdamaian di Berville, Perancis, pada tahun 1926. Ia mulai memperkenalkan nama Indonesia dan sejak saat itu nama Indonesia dikenal di kalangan organisasi-organisasi internasional. Pada tahun 1927, Hatta bergabung dengan Liga Menentang Imperialisme dan Kolonialisme di Belanda dan berkenalan dengan aktivis nasionalis India, Jawaharhal Nehru.</p><p>Aktivitas politik Hatta pada organisasi ini menyebabkan dirinya ditangkap tentara Belanda bersama dengan Nazir St. Pamontjak, Ali Sastroamidjojo, dan Abdul madjid Djojodiningrat sebelum akhirnya dibebaskan setelah ia berpidato dengan pidato pembelaan berjudul: Indonesia Free.&nbsp;</p><p>Selanjutnya pada tahun 1932, Hatta kembali ke Indonesia dan bergabung dengan organisasi Club Pendidikan Nasional Indonesia yang bertujuan untuk meningkatkan kesadaran politik rakyat Indonesia dengan adanya pelatihan-pelatihan.</p><p>Pada tahun 1933, Soekarno diasingkan ke Ende, Flores. Aksi ini menuai reaksi keras oleh Hatta. Ia mulai menulis mengenai pengasingan Soekarno pada berbagai media. Akibat aksi Hatta inilah pemerintah kolonial Belanda mulai memusatkan perhatian pada Partai Pendidikan Nasional Indonesia dan menangkap pimpinan para pimpinan partai yang selanjutnya diasingkan ke Digul, Papua.</p><p>Pada masa pengasingan di Digul, Hatta aktif menulis di berbagai surat kabar. Ia juga rajin membaca buku yang ia bawa dari Jakarta untuk kemudian diajarkan kepada teman-temannya. Selanjutnya, pada tahun 1935 saat pemerintahan kolonial Belanda berganti, Hatta dan Sjahrir dipindahlokasikan ke Bandaneira. Di sanalah, Hatta dan Sjahrir mulai memberi pelajaran kepada anak-anak setempat dalam bidang sejarah, politik, dan lainnya.</p><p>Setelah delapan tahun diasingkan, Hatta dan Sjahrir dibawa kembali ke Sukabumi pada tahun 1942. Selang satu bulan, pemerintah kolonial Belanda menyerah pada Jepang. Pada saat itulah Hatta dan Sjahrir dibawa ke Jakarta.</p><p>Pada awal Agustus 1945, nama Anggota Badan Penyelidik Usaha-usaha Persiapan Kemerdekaan berganti nama menjadi Panitia Persiapan Kemerdekaan Indonesia dengan Soekarno sebagai Ketua dan Hatta sebagai Wakil Ketua.</p><p>Sehari sebelum hari kemerdekaan dikumandangkan, Panitia Persiapan Kemerdekaan Indonesia mengadakan rapat di rumah Admiral Maeda. Panitia yang hanya terdiri dari Soekarno, Hatta, Soebardjo, Soekarni, dan Sayuti tersebut merumuskan teks proklamasi yang akan dibacakan keesokan harinya dengan tanda tangan Soekarno dan Hatta atas usul Soekarni.</p><p>Pada tanggal 17 Agustus 1945 di jalan Pagesangan Timur 56 tepatnya pukul 10.00 kemerdekaan Indonesia diproklamasikan oleh Soekarno dan Hatta atas nama bangsa Indonesia. Keesokan harinya, pada tanggal 18 Agustus 1945 Soekarno diangkat sebagai Presiden Republik Indonesia dan Hatta sebagai Wakil Presiden.</p><p>Berita kemerdekaan Republik Indonesia telah tersohor sampai Belanda. Sehingga, Belanda berkeinginan kembali untuk menjajah Indonesia. Dalam upaya mempertahankan kemerdekaan Indonesia, pemerintahan Republik Indonesia dipindah ke Jogjakarta. Ada dua kali perundingan dengan Belanda yang menghasilkan perjanjian linggarjati dan perjanjian Reville. Namun, kedua perjanjian tersebut berakhir kegagalan karena kecurangan Belanda.</p><p>Pada Juli 1947, Hatta mencari bantuan ke India dengan menemui Jawaharhal Nehru dan Mahatma Gandhi. Nehru berjanji, India dapat membantu Indonesia dengan melakukan protes terhadap tindakan Belanda dan agar dihukum pada PBB. Banyaknya kesulitan yang dialami oleh rakkyat Indonesia memunculkan aksi pemberontakan oleh PKI sedangkan Soekarno dan Hatta ditawan ke Bangka. Selanjutnya kepemimpinan perjuangan dipimpin oleh Jenderal Soedirman.</p><p>Perjuangan rakyat Indonesia tidak sia-sia. Pada tanggal 27 desembar 1949, Ratu Juliana memberikan pengakuan atas kedaulatan Indonesia kepada Hatta.</p><p>Setelah kemerdekaan mutlak Republik Indonesia, Hatta tetap aktif memberikan ceramah-ceramah di berbagai lembaga pendidikan. Dia juga masih aktif menulis berbagai macam karangan dan membimbing gerakan koperasi sesuai apa yang dicita-citakannya. Tanggal 12 Juli 1951, Hatta mengucapkan pidato di radio mengenai hari jadi Koperasi dan selang hari lima hari kemudian dia diangkat menjadi Bapak Koperasi Indonesia.</p><p>Hatta menikah dengan Rachim Rahmi pada tanggal 18 November 1945 di desa Megamendung, Bogor, Jawa Barat. Pasangan tersebut dikaruniai tiga orang putri yakni Meutia, Gemala, dan Halida.</p><p>Pada tanggal 14 Maret 1980 Hatta wafat di RSUD dr. Cipto Mangunkusumo. Karena perjuangannya bagi Republik Indonesia sangat besar, Hatta mendapatkan anugerah tanda kehormatan tertinggi \"Bintang Republik Indonesia Kelas I\" yang diberikan oleh Presiden Soeharto.</p><p>&nbsp;</p><h2><strong>PENDIDIKAN</strong></h2><ul><li>Nederland Handelshogeschool, Rotterdam, Belanda (1932)</li><li>Sekolah Tinggi Dagang Prins Hendrik School, Batavia (1921)</li><li>Meer Uirgebreid Lagere School (MULO), Padang (1919)</li><li>Europeesche Lagere School (ELS), Padang, 1916</li><li>Sekolah Dasar Melayu Fort de kock, Minangkabau (1913-1916)</li></ul><p>&nbsp;</p><h2><strong>KARIR</strong></h2><ul><li>Ketua Panitia Lima (1975)</li><li>Penasihat Presiden dan Penasehat Komisi IV (1969)</li><li>Dosen Universitas Gadjah Mada, Jogjakarta (1954-1959)</li><li>Dosen Sesko Angkatan darat, Bandung (1951-1961)</li><li>Wakil Presiden, Perdana menteri, dan Menteri Luar Negeri NKRIS (1949-1950)</li><li>Ketua delegasi Indonesia Konferensi Meja Bundar, Den Haag (1949)</li><li>Wakil Presiden, Perdana Menteri, dan Menteri Pertahanan (1948-1949)</li><li>Wakil Presiden RI pertama (1945)</li><li>Proklamator Kemerdekaan Republik Indonesia (1945)</li><li>Wakil Ketua Panitia Persiapan kemerdekaan Indonesia (1945)</li><li>Anggota Badan Penyelidik Usaha-usaha Persiapan Kemerdekaan (1945)</li><li>Kepala Kantor Penasehat Bala Tentara Jepang (1942)</li><li>Ketua Panitia Pendidikan Nasional Indonesia (1934-1935)</li><li>Wakil Delegasi Indonesia Liga Melawan Imperialisme dan Penjajahan, Berlin (1927-1931)</li><li>Ketua Perhimpunan Indonesia, Belanda (1925-1930)</li><li>Bendahara Jong Sumatranen Bond, Jakarta (1920-1921)</li><li>Bendahara Jong Sumatranen Bond, Padang (1916-1919)</li><li>Partai Nasional Indonesia</li></ul><p>Organisasi:</p><ul><li>Club pendidikan Nasional Indonesia</li><li>Liga menentang Imperialisme</li><li>Perhimpunan Hindia</li><li>Jong Sumatranen Bond</li></ul><p>&nbsp;</p><h2><strong>PENGHARGAAN</strong></h2><ul><li>Pahlawan Nasional</li><li>Bapak koperasi Indonesia</li><li>Doctor Honoris Causa, Universitas Gadjah Mada, 1965</li><li>Proklamator Indonesia</li><li>The Founding Father\'s of Indonesia</li></ul><p>&nbsp;</p><figure class=\"image\"><img src=\"/content-image/files/bung_hatta.jpg\"></figure>', '1629174413', 'published', '2021-08-24 20:08:54', '2021-08-30 16:57:39'),
(46, '612f295907da3', 'Albert Einstein', '<figure class=\"image\"><img src=\"/content-image/files/Albert_Einstein_Head.jpg\"></figure><p>&nbsp;</p><h2><strong>Mengenang Albert Einstein dan Perjalanan Hidupnya...</strong></h2><p>&nbsp;</p><p>Einstein sangat religius pada usia 12 tahun. Bahkan menggubah beberapa lagu untuk memuji Tuhannya dan menyanyikan lagu religius dalam perjalanan ke sekolah. Namun Einstein mulai berubah setelah membaca buku-buku sains yang bertentangan dengan keyakinan agamanya.<br>Tantangan terhadap otoritas yang mapan ini meninggalkan kesan yang dalam dan abadi. Titik balik kehidupannya terjadi pada usia 16 tahun. Dia bertemu dengan seorang mahasiswa kedokteran muda, Max Talmud (kemudian menjadi Max Talmey), yang sering makan malam di rumah Einstein. Talmud menjadi tutor informal, memperkenalkan Einstein pada matematika dan filsafat yang lebih tinggi. Einstein pun diberi serial sains anak-anak yang ditulis oleh Aaron Bernstein.</p><p><br>Berikut fakta-fakta Albert Einstein yang jarang diketahui:&nbsp;</p><h3><strong>1. Tidak gagal dalam matematika saat kecil&nbsp;</strong></h3><p>Melansir History, Einstein tidak gagal dalam matematika saat masih anak-anak seperti yang sering disebut-sebut orang di sekitarnya. Meski ia pernah putus sekolah pada usia 15 tahun, tapi jika tidak enggan Einstein sebenarnya adalah siswa yang luar biasa selama sekolah di Munich. Dia mendapat nilai tinggi selama masa sekolahnya di Munich, dan hanya dibuat frustrasi oleh apa yang dia gambarkan sebagai \"disiplin mekanik\" yang diminta oleh gurunya. \"Sebelum saya berusia 15 tahun, saya telah menguasai kalkulus diferensial dan integral,\" kata Einstein menolak rumor tentang dirinya yang gagal matematika. Baca juga: Viral, Video Ibu di Malang Cambuki Anaknya karena Tak Kunjung Paham Saat Diajari Matematika&nbsp;</p><h3><strong>2. Tidak ada yang tahu apa yang terjadi pada putri pertamanya&nbsp;</strong></h3><p>Pada 1896, Einstein melepaskan kewarganegaraan Jermannya dan mendaftar di Sekolah Politeknik Federal Swiss di Zurich. Di sana, ia memulai hubungan asmara yang penuh gairah dengan Mileva Maric, sesama fisikawan pelatihan yang berasal dari Serbia. Pasangan itu kemudian menikah dan memiliki dua putra setelah lulus, tetapi setahun sebelum mereka menikah, Maric melahirkan seorang putri tidak sah bernama Lieserl. Einstein tidak pernah berbicara tentang anak itu kepada keluarganya, dan penulis biografi bahkan tidak menyadari keberadaannya sampai memeriksa dokumen pribadinya pada akhir 1980-an. Baca juga: Lebih Dekat dengan Program Pangan Dunia (WFP), Peraih Nobel Perdamaian 2020&nbsp;</p><h3><strong>3. Einstein membutuhkan 9 tahun untuk mendapatkan pekerjaan di bidang akademis&nbsp;</strong></h3><p>Einstein menunjukkan kilasan kecemerlangan selama bertahun-tahun di Politeknik Zurich. Tetapi kepribadiannya yang memberontak dan kegemarannya membolos membuat profesornya memberinya rekomendasi yang kurang cemerlang setelah lulus pada 1900. Fisikawan muda itu kemudian menghabiskan dua tahun mencari posisi akademis sebelum menetap di kantor paten Swiss di Bern. Dia tidak memenangkan jabatan profesor penuh sampai 1909, hampir satu dekade setelah dia meninggalkan sekolah. Baca juga: Lord Rayleigh, Penemu Fenomena Langit Merah seperti yang Terjadi di Jambi&nbsp;</p><h3><strong>4. Menawari istrinya hadiah Nobel sebagai bagian dari penyelesaian perceraian</strong></h3><p>&nbsp;Setelah pernikahannya dengan Mileva Maric membentur batu pada awal 1910-an, Einstein meninggalkan keluarganya, pindah ke Berlin dan memulai hubungan baru dengan sepupunya, Elsa. Dia dan Maric akhirnya bercerai beberapa tahun kemudian pada 1919. Sebagai bagian dari perjanjian perpisahan mereka, Einstein menjanjikannya gaji tahunan ditambah berapa pun uang yang mungkin dia terima dari Hadiah Nobel (Einstein yakin akan menang). Maric setuju dan Einstein kemudian menyerahkan sedikit uang setelah menerima penghargaan pada 1922 untuk karyanya pada efek fotolistrik. Saat itu, dia sudah menikah lagi dengan Elsa, yang tetap menjadi istrinya sampai kematiannya pada 1936. Baca juga: Nikon Indonesia Tutup, Bagaimana Sejarah Nikon?&nbsp;</p><h3><strong>5. Gerhana matahari membantu membuat Einstein terkenal di dunia&nbsp;</strong></h3><p>Pada 1915, Einstein menerbitkan teorinya tentang relativitas umum, yang menyatakan bahwa medan gravitasi menyebabkan distorsi pada struktur ruang dan waktu. Karena itu adalah penulisan ulang hukum fisika yang begitu berani, teori ini tetap kontroversial hingga Mei 1919. Ketika gerhana matahari total memberikan kondisi yang tepat untuk menguji klaimnya bahwa obyek supermasif (dalam hal ini matahari) akan menyebabkan kurva yang dapat diukur dalam cahaya bintang yang melewatinya. Untuk membuktikan teori Einstein, astronom Inggris Arthur Eddington melakukan perjalanan ke pantai Afrika Barat dan memotret gerhana tersebut. Setelah menganalisis gambar-gambar itu, dia memastikan bahwa gravitasi matahari telah membelokkan cahaya kira-kira 1,7 detik-busur (persis seperti yang diprediksikan oleh relativitas umum). Berita itu membuat Einstein menjadi selebriti dalam semalam. Surat kabar memujinya sebagai pewaris Sir Isaac Newton dan Einstein melanjutkan perjalanan keliling dunia memberi ceramah tentang teorinya tentang kosmos. Baca juga: Hari Ini dalam Sejarah: Satelit Terbesar Saturnus Titan Ditemukan&nbsp;</p><h3><strong>6. Penemuan Einstein dapat mendukung terbentuknya bom atom&nbsp;</strong></h3><p>Pada akhir 1930-an, Einstein mengetahui bahwa penelitian baru telah menempatkan ilmuwan Jerman di jalur yang tepat untuk menciptakan bom atom. Kemungkinan senjata kiamat di tangan Nazi meyakinkannya untuk mengesampingkan prinsip pasifisnya dan bekerja sama dengan fisikawan Hongaria Leo Szilard, yang membantunya menulis surat yang mendesak Presiden Franklin D. Roosevelt untuk melakukan penelitian atom. Meskipun Einstein tidak pernah berpartisipasi secara langsung dalam Proyek Manhattan, ia kemudian menyatakan penyesalan yang mendalam tentang peran kecilnya dalam menyebabkan pemboman Hiroshima dan Nagasaki. \"Seandainya saya tahu bahwa Jerman tidak akan berhasil memproduksi bom atom, saya tidak akan pernah angkat tangan,\" katanya. Dia kemudian menjadi pendukung kuat pelucutan senjata nuklir, kontrol pada pengujian senjata dan pemerintah dunia yang bersatu sesaat sebelum kematiannya pada 1955. Baca juga: Ledakan di Beirut Lebanon Disebut Mirip Peristiwa Bom Hiroshima&nbsp;</p><h3><strong>7. Otak Einstein dicuri setelah kematiannya&nbsp;</strong></h3><p>Einstein meninggal pada April 1955 karena aneurisma aorta perut. Dia telah meminta agar tubuhnya dikremasi. Tetapi dalam insiden yang aneh, ahli patologi Princeton Thomas Harvey mengeluarkan otaknya selama otopsi dan menyimpannya dengan harapan dapat membuka rahasia kejeniusannya. Sejumlah penelitian telah dilakukan sejak 1980-an, tetapi sebagian besar telah ditolak atau didiskreditkan. Mungkin yang paling terkenal datang pada 1999. Saat itu sebuah tim dari sebuah universitas Kanada menerbitkan sebuah makalah kontroversial yang mengklaim bahwa Einstein memiliki lipatan yang tidak biasa pada lobus parietalnya, bagian dari otak yang terkait dengan kemampuan matematika dan spasial.<br>&nbsp;</p>', '1630478992', 'published', '2021-08-31 19:20:38', '2021-08-31 19:29:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activitydelete`
--
ALTER TABLE `activitydelete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delete_fk` (`idAuthor`);

--
-- Indeks untuk tabel `activityupdate`
--
ALTER TABLE `activityupdate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `update_fk_1` (`idAuthor`),
  ADD KEY `update_fk_2` (`idContent`);

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idAuthor` (`idAuthor`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idContent` (`idContent`),
  ADD KEY `idAuthor` (`idAuthor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activitydelete`
--
ALTER TABLE `activitydelete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `activityupdate`
--
ALTER TABLE `activityupdate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activitydelete`
--
ALTER TABLE `activitydelete`
  ADD CONSTRAINT `delete_fk` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`idAuthor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `activityupdate`
--
ALTER TABLE `activityupdate`
  ADD CONSTRAINT `update_fk_1` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`idAuthor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `update_fk_2` FOREIGN KEY (`idContent`) REFERENCES `content` (`idContent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `auth_ibfk_1` FOREIGN KEY (`email`) REFERENCES `author` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`idAuthor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
